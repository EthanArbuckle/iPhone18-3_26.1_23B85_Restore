uint64_t ALServiceDelegate._dataService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  return outlined init with copy of GPSXPCDataService(v1 + v3, a1);
}

uint64_t outlined init with copy of GPSXPCDataService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void GpsdDaemonManager::handleRequest()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3002000000;
  v0[3] = __Block_byref_object_copy__3;
  v0[4] = __Block_byref_object_dispose__3;
  operator new();
}

uint64_t GpsdClientManager.request(_:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

void GpsdDaemonProxy::handleRequest(GpsdDaemonProxy *this, const unsigned __int8 *a2, unsigned int a3)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, a2, &a2[a3], a3);
  GpsdDaemonManager::handleRequest();
}

void sub_100001D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_100001E98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void GnssHal::CommSpi::AsyncBuffering::input(GnssHal::CommSpi::AsyncBuffering *this, const unsigned __int8 *a2, int64_t a3)
{
  if (a3)
  {
    std::mutex::lock((this + 40));
    v6 = *(this + 14);
    v7 = *(this + 13);
    v8 = (*(this + 15) - v7);
    v9 = (v6 - v7);
    if (v8 < v6 - v7 + a3)
    {
      v10 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 134349568;
        *&v18[4] = v7;
        *&v18[12] = 2050;
        *&v18[14] = v6 - v7 + a3;
        *&v18[22] = 2050;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#spi,ab,overflow,@%{public}p,sz,%{public}zu,cap,%{public}zu", v18, 0x20u);
        v7 = *(this + 13);
        v6 = *(this + 14);
        v9 = (v6 - v7);
      }
    }

    if (a3 >= 1)
    {
      v11 = *(this + 15);
      if (v11 - v6 >= a3)
      {
        v16 = 0;
        do
        {
          *(v6 + v16) = a2[v16];
          ++v16;
        }

        while (a3 != v16);
        *(this + 14) = v6 + v16;
      }

      else
      {
        v12 = v6 - v7 + a3;
        if (v12 < 0)
        {
          std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
        }

        v13 = v11 - v7;
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          operator new();
        }

        memcpy(v9, a2, a3);
        *(this + 14) = &v9[v7];
        memcpy(v7 + v9 - v6, v7, v9);
        *(this + 13) = v7 + v9 - v6;
        *(this + 14) = &v9[a3];
        *(this + 15) = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }
    }

    if (((*(this + 14) - *(this + 13)) & 0x7FFFFFFFFFFFF800) != 0)
    {
      v17 = *this;
      *v18 = _NSConcreteStackBlock;
      *&v18[8] = 0x40000000;
      *&v18[16] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
      v19 = &__block_descriptor_tmp_4;
      v20 = this;
      dispatch_async(v17, v18);
    }

    std::mutex::unlock((this + 40));
  }

  else
  {
    v15 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#spi,ab,input,zerosize", v18, 2u);
    }
  }
}

void GnssHal::CommSpi::readCallback(GnssHal::CommSpi::AsyncBuffering **this, unsigned __int8 *a2, int64_t a3)
{
  if (a2 && a3)
  {
    if (!this)
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *block = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#spi,readCallback,commSpiObj,null", block, 2u);
        v9 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *block = 136446722;
        *&block[4] = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
        *&block[12] = 1026;
        *&block[14] = 166;
        *&block[18] = 2082;
        *&block[20] = "readCallback";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", block, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v12, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v11, "readCallback");
      std::string::basic_string[abi:ne200100]<0>(&v10, "#spi,readCallback,commSpiObj,null");
      gpsd::util::triggerDiagnosticReport(&v12, &v11, &v10);
      std::string::~string(&v10);
      std::string::~string(&v11);
      std::string::~string(&v12);
      __assert_rtn("readCallback", "GnssHalCommSpi.cpp", 166, "false && #spi,readCallback,commSpiObj,null");
    }

    GnssHal::CommSpi::AsyncBuffering::input(this[16], a2, a3);
    v6 = this[16];
    v7 = *v6;
    *block = _NSConcreteStackBlock;
    *&block[8] = 0x40000000;
    *&block[16] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
    *&block[24] = &__block_descriptor_tmp_4;
    v14 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *block = 134349312;
      *&block[4] = a2;
      *&block[12] = 2050;
      *&block[14] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#spi,read,invalid,data,%{public}p,size,%{public}zu", block, 0x16u);
    }
  }
}

void sub_1000024E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t GnssHal::CommSpi::readWriteFlush(GnssHal::CommSpi *this)
{
  v2 = *(this + 16);
  v3 = *v2;
  block = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  v10 = &__block_descriptor_tmp_4;
  v11 = v2;
  dispatch_async(v3, &block);
  v4 = *(this + 15);
  v5 = *v4;
  block = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
  v10 = &__block_descriptor_tmp_4;
  v11 = v4;
  dispatch_async(v5, &block);
  return 1;
}

void GnssHal::CommSpi::AsyncBuffering::flushInternal(GnssHal::CommSpi::AsyncBuffering *this)
{
  std::mutex::lock((this + 40));
  v2 = *(this + 13);
  v3 = *(this + 14);
  if (v2 == v3)
  {

    std::mutex::unlock((this + 40));
  }

  else
  {
    *(this + 104) = *(this + 8);
    v4 = *(this + 18);
    v5 = *(this + 15);
    *(this + 17) = v3;
    *(this + 18) = v5;
    *(this + 15) = v4;
    *(this + 16) = v2;
    std::mutex::unlock((this + 40));
    std::function<void ()(unsigned char *,unsigned long)>::operator()(this + 8, *(this + 16), *(this + 17) - *(this + 16));
    v6 = *(this + 16);
    if (*(this + 17) != v6)
    {
      *(this + 17) = v6;
    }

    v7 = *this;
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZN7GnssHal7CommSpi14AsyncBuffering5flushEv_block_invoke;
    block[3] = &__block_descriptor_tmp_4;
    block[4] = this;
    dispatch_async(v7, block);
  }
}

uint64_t std::function<void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void GnssHal::CommSpi::readCallbackInternal(GnssHal::CommSpi *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  if (*(this + 41) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,read,bin", a4);
  }

  if (!*(this + 10))
  {
    v11 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    LOWORD(v13) = 0;
    v12 = "#spi,readCallback,null";
    goto LABEL_15;
  }

  if ((*(this + 42) & 1) == 0)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,read,bin", a4);
    v11 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    LOWORD(v13) = 0;
    v12 = "#spi,readcallback,portClosed";
LABEL_15:
    _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v12, &v13, 2u);
    return;
  }

  v7 = 0.0;
  if (*(this + 40) == 1)
  {
    v7 = gpsd::util::getMachContinuousTimeNs(this) * 0.000000001;
  }

  v8 = std::function<void ()(unsigned char *,unsigned long)>::operator()(this + 56, a2, a3);
  if (*(this + 40) == 1)
  {
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v8);
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134349312;
      v14 = a3;
      v15 = 2050;
      v16 = (MachContinuousTimeNs * 0.000000001 - v7) * 1000000.0;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#spi,hal,read,size,%{public}zu,duration,us,%{public}.1f", &v13, 0x16u);
    }
  }
}

uint64_t GnssHal::CommSpi::writeInternal(GnssHal::CommSpi *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  v4 = a3;
  if (*(this + 41) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,write,bin", a4);
  }

  v7 = (*(*this + 32))(this);
  if ((v7 & 1) == 0)
  {
    gpsd::util::logBinaryBytes(a2, v4, "#spi,write,bin", v8);
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#spi,write,notOpen", buf, 2u);
    }

    return -1;
  }

  if (a2 && v4)
  {
    v9 = 0.0;
    if (*(this + 40) == 1)
    {
      v9 = gpsd::util::getMachContinuousTimeNs(v7) * 0.000000001;
    }

    v10 = (*(**(this + 14) + 80))(*(this + 14), a2, v4);
    if (v10)
    {
      v11 = v10;
      MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v10);
      v13 = *(this + 11) + 1;
      *(this + 11) = v13;
      v14 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        v21 = mach_error_string(v11);
        v22 = *(this + 11);
        *buf = 67241474;
        *v27 = v11;
        *&v27[4] = 2082;
        *&v27[6] = v21;
        *&v27[14] = 1026;
        *&v27[16] = v22;
        *&v27[20] = 1026;
        *&v27[22] = 5;
        v28 = 2050;
        v29 = v4;
        v30 = 2050;
        v31 = (MachContinuousTimeNs * 0.000000001 - v9) * 1000000.0;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "#spi,write,failed,%{public}X,%{public}s,count,%{public}d/%{public}d,size,%{public}zu,duration,us,%{public}.1f", buf, 0x32u);
        v13 = *(this + 11);
      }

      if (v13 >= 5)
      {
        v15 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#spi,continuousWriteError", buf, 2u);
          v15 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *v27 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
          *&v27[8] = 1026;
          *&v27[10] = 224;
          *&v27[14] = 2082;
          *&v27[16] = "writeInternal";
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v25, "assert");
        std::string::basic_string[abi:ne200100]<0>(&v24, "writeInternal");
        std::string::basic_string[abi:ne200100]<0>(&v23, "#spi,continuousWriteError");
        gpsd::util::triggerDiagnosticReport(&v25, &v24, &v23);
        std::string::~string(&v23);
        std::string::~string(&v24);
        std::string::~string(&v25);
        __assert_rtn("writeInternal", "GnssHalCommSpi.cpp", 224, "false && #spi,continuousWriteError");
      }

      return -1;
    }

    *(this + 11) = 0;
    if (*(this + 40) == 1)
    {
      v19 = (gpsd::util::getMachContinuousTimeNs(v10) * 0.000000001 - v9) * 1000000.0;
      v20 = GpsdLogObjectGeneral;
      if (v19 > (8 * v4) / 5.0 + 100000.0 && os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349312;
        *v27 = v4;
        *&v27[8] = 2050;
        *&v27[10] = v19;
        _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "#spi,write,longDelay,size,%{public}zu,duration,us,%{public}.1f", buf, 0x16u);
        v20 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v27 = v4;
        *&v27[8] = 2050;
        *&v27[10] = v19;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "#spi,write,size,%{public}zu,duration,us,%{public}.1f", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *v27 = a2;
      *&v27[8] = 2050;
      *&v27[10] = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "$spi,write,invalid,buffer,%{public}p,size,%{public}zu", buf, 0x16u);
    }

    return 0;
  }

  return v4;
}

void sub_100002E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t GpsdRuntime::instance(GpsdRuntime *this)
{
  result = GpsdRuntime::fInstance;
  if (!GpsdRuntime::fInstance)
  {
    if (GpsdRuntime::instance(void)::pred != -1)
    {
      dispatch_once(&GpsdRuntime::instance(void)::pred, &__block_literal_global_2);
    }

    return GpsdRuntime::fInstance;
  }

  return result;
}

unsigned __int8 *GnssHal::CommSpi::write(GnssHal::CommSpi *this, gpsd::util *a2, unsigned __int8 *a3, const char *a4)
{
  if (*(this + 41) == 1)
  {
    gpsd::util::logBinaryBytes(a2, a3, "#spi,hal,write,bin", a4);
  }

  v7 = 0.0;
  if (*(this + 40) == 1)
  {
    v7 = gpsd::util::getMachContinuousTimeNs(this) * 0.000000001;
  }

  GnssHal::CommSpi::AsyncBuffering::input(*(this + 15), a2, a3);
  if (*(this + 40) == 1)
  {
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v8);
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v12 = 134349312;
      v13 = a3;
      v14 = 2050;
      v15 = (MachContinuousTimeNs * 0.000000001 - v7) * 1000000.0;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#spi,hal,write,size,%{public}zu,duration,us,%{public}.1f", &v12, 0x16u);
    }
  }

  return a3;
}

unint64_t gpsd::util::getMachContinuousTimeNs(gpsd::util *this)
{
  {
    getTickToNsInfo();
  }

  v1 = mach_continuous_time();
  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((v1 >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

uint64_t gpsd::util::getMachContinuousTimeMs(gpsd::util *this)
{
  {
    getTickToMsInfo();
  }

  return mach_continuous_time() / getTickToMsInfo(void)::info;
}

void GpsdProtobufRouter::fakeResponseToRemote(uint64_t a1, proto::gpsd *this)
{
  if (*(a1 + 160))
  {
    v2 = this;
    v10 = off_100179C88;
    MachContinuousTimeNs = 0;
    v12 = 0;
    v13 = 0;
    IsValid = proto::gpsd::Request_Type_IsValid(this);
    if (!IsValid)
    {
      __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7674, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    LODWORD(v12) = v2;
    HIDWORD(v13) = 3;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(IsValid);
    v5 = gnss::Convert::toProtobuf(1u);
    if (v5 >= 0xA)
    {
      __assert_rtn("set_result_code", "GpsdProtocol.pb.h", 7719, "::proto::gnss::Result_IsValid(value)");
    }

    HIDWORD(v13) |= 4u;
    HIDWORD(v12) = v5;
    v7 = proto::gpsd::Response::ByteSize(&v10, v6);
    std::vector<unsigned char>::vector[abi:ne200100](__p, v7);
    wireless_diagnostics::google::protobuf::MessageLite::SerializeToArray(&v10, __p[0]);
    v8 = *(a1 + 160);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = off_100179C88;
    wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(&v10);
  }
}

__n128 GpsdGnssDeviceRequestQueue::handleRequest(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      v5 = __p;
      ProtobufUtil::stringify(*(a1 + 16), __p);
      if (v22 < 0)
      {
        v5 = __p[0];
      }

      MachContinuousTimeMs = gpsd::util::getMachContinuousTimeMs(v6);
      if ((*(a1 + 8) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v8 = MachContinuousTimeMs - *a1;
      v9 = *(a1 + 64);
      *buf = 136446722;
      *&buf[4] = v5;
      v24 = 2050;
      v25 = v8;
      v26 = 2050;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#router,push,pendingResponse,%{public}s,delay,%{public}llu,ms,numInQueue,%{public}zu", buf, 0x20u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 170 * ((v11 - v12) >> 3) - 1;
    }

    v14 = *(a1 + 56);
    v15 = *(a1 + 64) + v14;
    if (v13 == v15)
    {
      if (v14 < 0xAA)
      {
        v17 = *(a1 + 48);
        v18 = *(a1 + 24);
        if (v11 - v12 < (v17 - v18))
        {
          operator new();
        }

        if (v17 == v18)
        {
          v19 = 1;
        }

        else
        {
          v19 = (v17 - v18) >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char> *>>(v19);
      }

      *(a1 + 56) = v14 - 170;
      *buf = *v12;
      *(a1 + 32) = v12 + 8;
      std::__split_buffer<std::vector<unsigned char> *,std::allocator<std::vector<unsigned char> *>>::emplace_back<std::vector<unsigned char> *&>((a1 + 24), buf);
      v12 = *(a1 + 32);
      v15 = *(a1 + 64) + *(a1 + 56);
    }

    v20 = (*&v12[8 * (v15 / 0xAA)] + 24 * (v15 % 0xAA));
    v20->n128_u64[0] = 0;
    v20->n128_u64[1] = 0;
    v20[1].n128_u64[0] = 0;
    result = *a2;
    *v20 = *a2;
    v20[1].n128_u64[0] = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    ++*(a1 + 64);
  }

  else
  {

    GpsdGnssDeviceRequestQueue::sendRequestToDevice(a1, a2);
  }

  return result;
}

void sub_10000398C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v16);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN17GpsdDaemonManager13handleRequestEONSt3__16vectorIhNS0_9allocatorIhEEEE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 72);
  v2 = *(*(*(a1 + 32) + 8) + 40);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::__value_func[abi:ne200100](v4, v1);
  GpsdProtobufRouter::handleRequestHelper(v1, v2, v4);
  return std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](v4);
}

void sub_100003A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<GpsdProtobufRouter::GpsdProtobufRouter(std::function<void ()(std::vector<unsigned char> &&)>,void ()(std::vector<unsigned char> &&),dispatch_queue_s *)::$_1,std::allocator<dispatch_queue_s *>,void ()(std::vector<unsigned char> &,proto::gpsd::Request_Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E640;
  a2[1] = v2;
  return result;
}

uint64_t ProtobufUtil::decodeGpsdRequestType(uint64_t a1)
{
  v17 = 0;
  wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(v16, *a1, *(a1 + 8) - *a1, -1);
  v7 = v16;
  v8 = 0;
  v9 = 0;
  memset(v10, 0, 14);
  v11 = xmmword_100145D60;
  v12 = 0;
  v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v14 = 0;
  v15 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(&v7);
  do
  {
    if (v8 >= v9 || (TagFallback = *v8, TagFallback < 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(&v7);
      LODWORD(v10[1]) = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_17;
      }
    }

    else
    {
      LODWORD(v10[1]) = *v8++;
      if (!TagFallback)
      {
        goto LABEL_17;
      }
    }
  }

  while ((TagFallback & 0xFFFFFFF8) != 0x18);
  if (v8 < v9)
  {
    v2 = *v8;
    if ((v2 & 0x80000000) == 0)
    {
      v17 = *v8++;
      goto LABEL_13;
    }
  }

  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&v7, &v17))
  {
    v2 = v17;
LABEL_13:
    if (v2 < 0x4D)
    {
      goto LABEL_18;
    }

    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      v4 = "#router,handleRequestHelper,request type value exceeds max";
LABEL_20:
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v4, v6, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    v4 = "#router,handleRequestHelper,type not read";
    goto LABEL_20;
  }

LABEL_17:
  v2 = 0;
LABEL_18:
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&v7);
  wireless_diagnostics::google::protobuf::io::ArrayInputStream::~ArrayInputStream(v16);
  return v2;
}

void sub_100003CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(va);
  wireless_diagnostics::google::protobuf::io::ArrayInputStream::~ArrayInputStream((v2 - 56));
  _Unwind_Resume(a1);
}

void GpsdProtobufRouter::handleRequestHelper(uint64_t a1, char **a2, uint64_t a3)
{
  GpsdSessionMonitor::update(*(a1 + 216));
  v6 = *(a1 + 200);
  if (v6)
  {
    ProtobufLogger::logGpsdEntry(v6, a2, 5);
  }

  v7 = ProtobufUtil::decodeGpsdRequestType(a2);
  if (v7)
  {
    v8 = v7;
    v9 = *(a3 + 24);

    std::function<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::operator()(v9, a2, v8);
  }

  else
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#router,handleRequestHelper,invalid type", v11, 2u);
    }
  }
}

double GpsdProtobufRouter::handleRequestRemote(uint64_t a1, __n128 *a2, proto::gpsd *this)
{
  v3 = this;
  GpsdProtobufRouter::fakeResponseToRemote(a1, this);
  if (v3 <= 0x34)
  {
    if (((1 << v3) & 0x8001000C00) != 0)
    {
      __p = off_100179C10;
      v32 = 0;
      v33 = 0;
      v36 = 0;
      v41 = 0;
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
      v25 = 0u;
      v26 = 0;
      v27 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
      v34 = 0;
      v35 = 0;
      v37 = 0;
      v42 = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      if (!GpsdProtobufRouter::deserializeRequestProto(a1, a2, &__p) || (GpsdAssistanceSeeding::handleRequest(*(a1 + 128), &__p), v3 != 24))
      {
        proto::gpsd::Request::~Request(&__p);
        return result;
      }

      proto::gpsd::Request::~Request(&__p);
    }

    else if (((1 << v3) & 0x8000000000002) != 0)
    {
      GpsdSessionMonitor::setExplicitState(*(a1 + 216), 1);
      GpsdAssistanceSeeding::injectSeeding(*(a1 + 128));
    }

    else if (((1 << v3) & 0x10000000000004) != 0)
    {
      GpsdSessionMonitor::setExplicitState(*(a1 + 216), 0);
    }
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    switch(v3)
    {
      case 0u:
      case 0xAu:
      case 0xBu:
      case 0x27u:
      case 0x33u:
      case 0x34u:
        v8 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
        {
          ProtobufUtil::stringify(v3, &__p);
          if (v11 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136446210;
          v44 = p_p;
          _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "#router,requestFromRemote,requestNotSupported,type,%{public}s", buf, 0xCu);
          if (SHIBYTE(v11) < 0)
          {
            operator delete(__p);
          }
        }

        break;
      case 1u:
      case 2u:
      case 3u:
      case 6u:
      case 7u:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Fu:
      case 0x20u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
        goto LABEL_13;
      case 4u:
      case 5u:
      case 8u:
      case 9u:
      case 0x10u:
        GnssEmergencyManager::handleRemoteRequest(v7, v3, a2);
        *&result = GpsdGnssDeviceRequestQueue::handleRequest(*(a1 + 96), a2).n128_u64[0];
        break;
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
        GnssEmergencyManager::handleRemoteRequest(v7, v3, a2);
        break;
      default:
        return result;
    }
  }

  else
  {
LABEL_13:
    *&result = GpsdGnssDeviceRequestQueue::handleRequest(*(a1 + 96), a2).n128_u64[0];
  }

  return result;
}

void sub_100004098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  proto::gpsd::Request::~Request(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

uint64_t GpsdGnssDeviceRequestQueue::sendRequestToDevice(uint64_t a1, uint64_t a2)
{
  *a1 = gpsd::util::getMachContinuousTimeMs(a1);
  *(a1 + 8) = 1;
  v4 = *(a1 + 96);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v4 + 48))(v4, a2);
  *(a1 + 16) = result;
  return result;
}

BOOL GpsdProtobufRouter::deserializeRequestProto(GpsdProtobufRouter *a1, uint64_t a2, wireless_diagnostics::google::protobuf::MessageLite *this)
{
  if ((wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(this, *a2, *(a2 + 8) - *a2) & 1) == 0)
  {
    v9 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = *(a2 + 8) - *a2;
    *__p = 134349312;
    *&__p[4] = v11;
    v18 = 2050;
    v19 = a1;
    v12 = "#router,deserializeRequestProto,parseFailed,size,%{public}zu,this,%{public}p";
    v13 = v9;
    v14 = 22;
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, __p, v14);
    return 0;
  }

  if (*(this + 396))
  {
    MachContinuousTimeNs = *(this + 1);
  }

  else
  {
    v6 = GpsdLogObjectGeneral;
    v7 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      ProtobufUtil::stringify(*(this + 5), __p);
      if (v20 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = *__p;
      }

      *buf = 136446210;
      v22 = v16;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#router,deserializeRequestProto,%{public}s,noMCT", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(*__p);
      }
    }

    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v7);
    *(this + 99) |= 1u;
    *(this + 1) = MachContinuousTimeNs;
  }

  GpsdProtobufRouter::loggingRequest(a1, this, *(a2 + 8) - *a2, MachContinuousTimeNs);
  if ((*(this + 396) & 4) != 0 && proto::gpsd::Request_Type_IsValid(*(this + 5)))
  {
    return 1;
  }

  v15 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *__p = 134349056;
    *&__p[4] = a1;
    v12 = "#router,deserializeRequestProto,noValidType,this,%{public}p";
    v13 = v15;
    v14 = 12;
    goto LABEL_14;
  }

  return result;
}

uint64_t proto::gpsd::Request::Clear(uint64_t this)
{
  v1 = this;
  v2 = (this + 396);
  v3 = *(this + 396);
  if (v3)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v3 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gpsd::InjectAssistancePosition::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v5 + 8);
        *(v5 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v6 = *(v1 + 48);
      if (v6)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v6 + 8);
        *(v6 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = *(v1 + 56);
      if (v7)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v7 + 8);
        *(v7 + 36) = 0;
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v8 = *(v1 + 64);
      if (v8)
      {
        if (*(v8 + 36))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
        }

        *(v8 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      v9 = *(v1 + 72);
      if (v9)
      {
        v10 = *(v9 + 76);
        if (v10)
        {
          *(v9 + 49) = 0u;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 69) = 0;
          *(v9 + 65) = 0;
        }

        *(v9 + 76) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      v11 = *(v1 + 80);
      if (v11)
      {
        if (*(v11 + 32))
        {
          *(v11 + 8) = 0;
          *(v11 + 16) = 0x400000000;
          *(v11 + 24) = 0;
        }

        *(v11 + 32) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v12 = *(v1 + 88);
      if (v12)
      {
        if (*(v12 + 24))
        {
          *(v12 + 8) = 0;
          *(v12 + 16) = 4;
        }

        *(v12 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(v1 + 96);
      if (v13)
      {
        if (*(v13 + 16))
        {
          *(v13 + 8) = 15;
        }

        *(v13 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v14 = *(v1 + 104);
      if (v14)
      {
        if (*(v14 + 44))
        {
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
        }

        *(v14 + 44) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v15 = *(v1 + 112);
      if (v15)
      {
        if (*(v15 + 36))
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
        }

        *(v15 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      this = *(v1 + 120);
      if (this)
      {
        this = proto::gpsd::InjectAssistanceFile::Clear(this);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v16 = *(v1 + 128);
      if (v16)
      {
        if (*(v16 + 20))
        {
          v17 = *(v16 + 8);
          if (v17 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            if (*(v17 + 23) < 0)
            {
              **v17 = 0;
              *(v17 + 8) = 0;
            }

            else
            {
              *v17 = 0;
              *(v17 + 23) = 0;
            }
          }
        }

        *(v16 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v18 = *(v1 + 136);
      if (v18)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v18 + 8);
        *(v18 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v19 = *(v1 + 144);
      if (v19)
      {
        if (*(v19 + 20))
        {
          *(v19 + 8) = 0;
        }

        *(v19 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v20 = *(v1 + 152);
      if (v20)
      {
        if (*(v20 + 20))
        {
          *(v20 + 8) = 1;
          *(v20 + 9) = 0;
          *(v20 + 13) = 0;
        }

        *(v20 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = *(v1 + 160);
      if (v21)
      {
        if (*(v21 + 20))
        {
          *(v21 + 8) = 0;
        }

        *(v21 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v22 = *(v1 + 168);
      if (v22)
      {
        if (*(v22 + 20))
        {
          *(v22 + 8) = 0;
          *(v22 + 12) = 0;
        }

        *(v22 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      v23 = *(v1 + 176);
      if (v23)
      {
        if (*(v23 + 20))
        {
          *(v23 + 8) = 0;
        }

        *(v23 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      v24 = *(v1 + 184);
      if (v24)
      {
        if (*(v24 + 16))
        {
          *(v24 + 8) = 0;
        }

        *(v24 + 16) = 0;
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v25 = *(v1 + 192);
      if (v25)
      {
        if (*(v25 + 20))
        {
          v26 = *(v25 + 8);
          if (v26 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            if (*(v26 + 23) < 0)
            {
              **v26 = 0;
              *(v26 + 8) = 0;
            }

            else
            {
              *v26 = 0;
              *(v26 + 23) = 0;
            }
          }
        }

        *(v25 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      v27 = *(v1 + 200);
      if (v27)
      {
        if (*(v27 + 20))
        {
          v28 = *(v27 + 8);
          if (v28 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            if (*(v28 + 23) < 0)
            {
              **v28 = 0;
              *(v28 + 8) = 0;
            }

            else
            {
              *v28 = 0;
              *(v28 + 23) = 0;
            }
          }
        }

        *(v27 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        this = proto::gpsd::LtlInfo::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      v29 = *(v1 + 216);
      if (v29)
      {
        if (*(v29 + 24))
        {
          *(v29 + 16) = 0;
          *(v29 + 8) = 0;
        }

        *(v29 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      v30 = *(v1 + 224);
      if (v30)
      {
        if (*(v30 + 24))
        {
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
        }

        *(v30 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v31 = *(v1 + 232);
      if (v31)
      {
        if (*(v31 + 16))
        {
          *(v31 + 8) = 0;
        }

        *(v31 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v32 = *(v1 + 240);
      if (v32)
      {
        if (*(v32 + 20))
        {
          v33 = *(v32 + 8);
          if (v33 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            if (*(v33 + 23) < 0)
            {
              **v33 = 0;
              *(v33 + 8) = 0;
            }

            else
            {
              *v33 = 0;
              *(v33 + 23) = 0;
            }
          }
        }

        *(v32 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      this = *(v1 + 248);
      if (this)
      {
        this = proto::gnss::Emergency::EmergConfig::Clear(this);
      }
    }
  }

  v34 = *(v1 + 400);
  if (v34)
  {
    if (v34)
    {
      v35 = *(v1 + 256);
      if (v35 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v35 + 23) < 0)
        {
          **v35 = 0;
          *(v35 + 8) = 0;
        }

        else
        {
          *v35 = 0;
          *(v35 + 23) = 0;
        }
      }
    }

    v34 = *(v1 + 400);
    if ((v34 & 2) != 0)
    {
      v36 = *(v1 + 264);
      if (v36)
      {
        v37 = *(v36 + 80);
        if (v37)
        {
          *(v36 + 24) = 0u;
          *(v36 + 8) = 0u;
        }

        if ((v37 & 0xFF00) != 0)
        {
          *(v36 + 56) = 0u;
          *(v36 + 40) = 0u;
        }

        if ((v37 & 0xFF0000) != 0)
        {
          *(v36 + 72) = 0;
        }

        *(v36 + 80) = 0;
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 304) = 0;
    if ((v34 & 8) != 0)
    {
      this = *(v1 + 272);
      if (this)
      {
        this = proto::gnss::Emergency::GpsReferenceTime::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x10) != 0)
    {
      v38 = *(v1 + 280);
      if (v38)
      {
        v39 = *(v38 + 68);
        if (v39)
        {
          *(v38 + 24) = 0u;
          *(v38 + 8) = 0u;
        }

        if ((v39 & 0xFF00) != 0)
        {
          *(v38 + 40) = 0;
          *(v38 + 48) = 0;
          *(v38 + 56) = 0;
        }

        *(v38 + 68) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x20) != 0)
    {
      v40 = *(v1 + 288);
      if (v40)
      {
        if (*(v40 + 52))
        {
          *(v40 + 32) = 0;
          *(v40 + 40) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v40 + 8);
        *(v40 + 52) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x40) != 0)
    {
      this = *(v1 + 296);
      if (this)
      {
        this = proto::gnss::Emergency::GpsAcqAssistance::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x80) != 0)
    {
      this = *(v1 + 312);
      if (this)
      {
        this = proto::gnss::Emergency::CellFTAssistance::Clear(this);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0xFF00) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      this = *(v1 + 320);
      if (this)
      {
        this = proto::gnss::Emergency::CplaneContext::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x400) != 0)
    {
      this = *(v1 + 344);
      if (this)
      {
        this = proto::gnss::Emergency::LocationId::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 308) = 0;
    *(v1 + 368) = 0;
    *(v1 + 372) = 0;
    if ((v34 & 0x8000) != 0)
    {
      this = *(v1 + 376);
      if (this)
      {
        this = proto::gnss::Emergency::SuplContext::Clear(this);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0x10000) != 0)
  {
    v41 = *(v1 + 384);
    if (v41)
    {
      if (*(v41 + 40))
      {
        *(v41 + 32) = 0;
      }

      this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v41 + 8);
      *(v41 + 40) = 0;
    }
  }

  *(v1 + 336) = 0;
  *(v1 + 360) = 0;
  *v2 = 0;
  return this;
}

uint64_t GpsdPreferences::instance(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZN15GpsdPreferences8instanceENS_4ModeE_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v3 = a1;
  if (GpsdPreferences::instance(GpsdPreferences::Mode)::pred != -1)
  {
    dispatch_once(&GpsdPreferences::instance(GpsdPreferences::Mode)::pred, block);
  }

  return GpsdPreferences::fInstance;
}

uint64_t __Block_byref_object_dispose_(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v3 = *(a1 + 40);
  v1 = (a1 + 40);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](v1, v2);
  }
}

uint64_t __Block_byref_object_dispose__3(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](result);
  }

  return result;
}

uint64_t __Block_byref_object_dispose__4(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t ___ZN16GnssSessionTicks11notifyStartEv_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

unint64_t GnssWatchdog::tick(GnssWatchdog *this)
{
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 4);
    *v10 = 134349312;
    *&v10[4] = this;
    v11 = 2050;
    v12[0] = v9;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "#wdt,%{public}p,tick,count,%{public}zu", v10, 0x16u);
  }

  result = gpsd::util::getMachContinuousTimeMs(v3);
  v6 = *(this + 1);
  v5 = *(this + 2);
  if (v6 != v5)
  {
    v7 = result;
    do
    {
      v8 = *v6;
      *&v10[8] = *(v6 + 2);
      *v10 = v8;
      std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v12 + 2, (v6 + 2));
      if (*(*v10 + 8) == 1 && **v10 + *&v10[8] <= v7)
      {
        std::function<void ()(unsigned long long)>::operator()(*(&v12[3] + 2), v7);
      }

      result = std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v12 + 2);
      v6 += 6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t std::__function::__func<GpsdGnssDeviceRequestQueue::setupWatchdog(void)::$_0,std::allocator<GpsdGnssDeviceRequestQueue::setupWatchdog(void)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017E250;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void GnssHal::PlatformTimer::handleEvent(GnssHal::PlatformTimer *this)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(*v3 + 48);

    v4();
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "timer,handleEvent,callback,nullptr", v6, 2u);
    }
  }
}

void GnssHal::PlatformTimer::start(GnssHal::PlatformTimer *this, int a2, char a3)
{
  v3 = *(this + 6);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN7GnssHal13PlatformTimer5startEib_block_invoke;
  v4[3] = &__block_descriptor_tmp;
  v4[4] = this;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void GnssHal::PlatformTimer::setTimer(GnssHal::PlatformTimer *this, int a2, int a3)
{
  if (a2 || (a3 & 1) != 0)
  {
    v6 = *(this + 5);
    if (!v6 || (a3 & 1) == 0)
    {
      if (!v6)
      {
        operator new();
      }

      v7 = (a2 * 0.001 * 1000000000.0);
      v8 = *(v6 + 8);
      v9 = dispatch_time(0, v7);
      if (a3)
      {
        v10 = v7;
      }

      else
      {
        v10 = -1;
      }

      dispatch_source_set_timer(v8, v9, v10, 0x5F5E100uLL);
    }
  }

  else
  {
    v5 = *(this + 6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZN7GnssHal13PlatformTimer8setTimerEib_block_invoke;
    block[3] = &__block_descriptor_tmp_2;
    block[4] = this;
    dispatch_async(v5, block);
  }
}

id GnssHal::ExtensionsFireImpl::platformCalibrationL5GroupDelayMeters(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::externalToChipL5GroupDelayMeters(v1);
}

uint64_t GpsdPlatformInfo::instance(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZN16GpsdPlatformInfo8instanceEN24GpsdPlatformInfoHardware8HardwareE_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v3 = a1;
  if (GpsdPlatformInfo::instance(GpsdPlatformInfoHardware::Hardware)::pred != -1)
  {
    dispatch_once(&GpsdPlatformInfo::instance(GpsdPlatformInfoHardware::Hardware)::pred, block);
  }

  return GpsdPlatformInfo::fInstance;
}

void std::__function::__func<GpsdGnssDeviceManager::handleRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v3 + 376);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
  v6[3] = &__block_descriptor_tmp_46;
  v6[4] = v3;
  v7 = v4;
  v8 = v2;
  dispatch_async(v5, v6);
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::MergePartialFromCodedStream(proto::gpsd::SetConfigEnableGnssConstellations *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
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

uint64_t GpsdGnssDeviceManager::setConfigEnableGnssConstellations(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a2[5])
  {
    GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
    v7 = GpsdPreferences::instance(0);
    v8 = GpsdPreferences::enableConstellationsBitfield(v7);
    v9 = a2[2];
    v10 = a2[3] & ((a2[5] << 30) >> 31);
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240960;
      v15 = v8;
      v16 = 1026;
      v17 = v9;
      v18 = 1026;
      v19 = v10;
      v20 = 1026;
      v21 = (v9 | v8) & ~v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#gdm,setConfigEnableGnssConstellations,default,0x%{public}x,forceEnable,0x%{public}x,forceDisable,0x%{public}x,net,0x%{public}x", buf, 0x1Au);
    }

    v12 = *(a1 + 16);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
    (*(*v12 + 232))(v12, (v9 | v8) & ~v10, v13);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdPreferences::enableConstellationsBitfield(GpsdPreferences *this)
{
  v1 = [fDefaults BOOLForKey:@"EnableGps"];
  if ([fDefaults BOOLForKey:@"EnableQzss"])
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | v1;
  if ([fDefaults BOOLForKey:@"EnableGlonass"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if ([fDefaults BOOLForKey:@"EnableGalileo"])
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  if ([fDefaults BOOLForKey:@"EnableBeidou"])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if ([fDefaults BOOLForKey:@"EnableNavic"])
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  return v6 | v7 | v8;
}

void GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip(GnssDeviceCommon::ActivityCheck *this)
{
  if (*(this + 8) == 1)
  {
    v2 = gpsd::util::getMachContinuousTimeNs(this) * 0.000000001;
    *(this + 2) = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134349056;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,noteInjectionOfAssistanceThatCanSpinUpChip,%{public}.2f", &v4, 0xCu);
    }
  }
}

void GpsdProtobufRouter::loggingRequest(GpsdProtobufRouter *this, const proto::gpsd::Request *a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a2 + 5);
  if ((v8 & 0xFFFFFFFE) != 0xE)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      ProtobufUtil::stringify(v8, __p);
      v11 = v13 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v15 = v11;
      v16 = 2050;
      v17 = a4 * 0.000001;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#router,request,type,%{public}s,time,%{public}.3f,ms", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v10 = *(this + 26);
  if (v10)
  {
    GpsdInterfaceTelemeter::appendRequest(v10, a2, a3, a4);
  }
}

uint64_t proto::gpsd::Request::MergePartialFromCodedStream(proto::gpsd::Request *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = (this + 304);
  v6 = (this + 308);
  v7 = (this + 372);
LABEL_2:
  while (2)
  {
    v8 = *(a2 + 1);
    if (v8 >= *(a2 + 2) || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v8 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v10 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 99) |= 1u;
        if (v14 < v11 && *v14 == 16)
        {
          v19 = v14 + 1;
          *(a2 + 1) = v19;
          goto LABEL_122;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_122:
        if (v19 >= v11 || (v29 = *v19, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v29;
          v30 = v19 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 99) |= 2u;
        if (v30 >= v11 || *v30 != 24)
        {
          continue;
        }

        v18 = v30 + 1;
        *(a2 + 1) = v18;
LABEL_130:
        v416[0] = 0;
        if (v18 >= v11 || (v31 = *v18, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416);
          if (!result)
          {
            return result;
          }

          v31 = v416[0];
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (proto::gpsd::Request_Type_IsValid(v31))
        {
          *(this + 99) |= 4u;
          *(this + 5) = v31;
        }

        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 34)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_140:
        *(this + 99) |= 8u;
        v33 = *(this + 3);
        if (!v33)
        {
          operator new();
        }

        v416[0] = 0;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v34;
          *(a2 + 1) = v34 + 1;
        }

        v35 = *(a2 + 14);
        v36 = *(a2 + 15);
        *(a2 + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::InjectAssistancePosition::MergePartialFromCodedStream(v33, a2, v38) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v37);
        v39 = *(a2 + 14);
        v40 = __OFSUB__(v39, 1);
        v41 = v39 - 1;
        if (v41 < 0 == v40)
        {
          *(a2 + 14) = v41;
        }

        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 42)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_154:
        *(this + 99) |= 0x10u;
        v43 = *(this + 4);
        if (!v43)
        {
          operator new();
        }

        v416[0] = 0;
        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v44;
          *(a2 + 1) = v44 + 1;
        }

        v45 = *(a2 + 14);
        v46 = *(a2 + 15);
        *(a2 + 14) = v45 + 1;
        if (v45 >= v46)
        {
          return 0;
        }

        v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::InjectAssistanceTime::MergePartialFromCodedStream(v43, a2, v48) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v47);
        v49 = *(a2 + 14);
        v40 = __OFSUB__(v49, 1);
        v50 = v49 - 1;
        if (v50 < 0 == v40)
        {
          *(a2 + 14) = v50;
        }

        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 != 50)
        {
          continue;
        }

        *(a2 + 1) = v51 + 1;
LABEL_168:
        *(this + 99) |= 0x20u;
        v52 = *(this + 5);
        if (!v52)
        {
          operator new();
        }

        v416[0] = 0;
        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v53;
          *(a2 + 1) = v53 + 1;
        }

        v54 = *(a2 + 14);
        v55 = *(a2 + 15);
        *(a2 + 14) = v54 + 1;
        if (v54 >= v55)
        {
          return 0;
        }

        v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistancePressure::MergePartialFromCodedStream(v52, a2, v57) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v56);
        v58 = *(a2 + 14);
        v40 = __OFSUB__(v58, 1);
        v59 = v58 - 1;
        if (v59 < 0 == v40)
        {
          *(a2 + 14) = v59;
        }

        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 != 58)
        {
          continue;
        }

        *(a2 + 1) = v60 + 1;
LABEL_182:
        *(this + 99) |= 0x40u;
        v61 = *(this + 6);
        if (!v61)
        {
          operator new();
        }

        v416[0] = 0;
        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v62;
          *(a2 + 1) = v62 + 1;
        }

        v63 = *(a2 + 14);
        v64 = *(a2 + 15);
        *(a2 + 14) = v63 + 1;
        if (v63 >= v64)
        {
          return 0;
        }

        v65 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceAccel::MergePartialFromCodedStream(v61, a2, v66) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v65);
        v67 = *(a2 + 14);
        v40 = __OFSUB__(v67, 1);
        v68 = v67 - 1;
        if (v68 < 0 == v40)
        {
          *(a2 + 14) = v68;
        }

        v69 = *(a2 + 1);
        if (v69 >= *(a2 + 2) || *v69 != 66)
        {
          continue;
        }

        *(a2 + 1) = v69 + 1;
LABEL_196:
        *(this + 99) |= 0x80u;
        v70 = *(this + 7);
        if (!v70)
        {
          operator new();
        }

        v416[0] = 0;
        v71 = *(a2 + 1);
        if (v71 >= *(a2 + 2) || *v71 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v71;
          *(a2 + 1) = v71 + 1;
        }

        v72 = *(a2 + 14);
        v73 = *(a2 + 15);
        *(a2 + 14) = v72 + 1;
        if (v72 >= v73)
        {
          return 0;
        }

        v74 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceGyro::MergePartialFromCodedStream(v70, a2, v75) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v74);
        v76 = *(a2 + 14);
        v40 = __OFSUB__(v76, 1);
        v77 = v76 - 1;
        if (v77 < 0 == v40)
        {
          *(a2 + 14) = v77;
        }

        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 != 74)
        {
          continue;
        }

        *(a2 + 1) = v78 + 1;
LABEL_210:
        *(this + 99) |= 0x100u;
        v79 = *(this + 8);
        if (!v79)
        {
          operator new();
        }

        v416[0] = 0;
        v80 = *(a2 + 1);
        if (v80 >= *(a2 + 2) || *v80 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v80;
          *(a2 + 1) = v80 + 1;
        }

        v81 = *(a2 + 14);
        v82 = *(a2 + 15);
        *(a2 + 14) = v81 + 1;
        if (v81 >= v82)
        {
          return 0;
        }

        v83 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceDem::MergePartialFromCodedStream(v79, a2, v84) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v83);
        v85 = *(a2 + 14);
        v40 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v40)
        {
          *(a2 + 14) = v86;
        }

        v87 = *(a2 + 1);
        if (v87 >= *(a2 + 2) || *v87 != 82)
        {
          continue;
        }

        *(a2 + 1) = v87 + 1;
LABEL_224:
        *(this + 99) |= 0x200u;
        v88 = *(this + 9);
        if (!v88)
        {
          operator new();
        }

        v416[0] = 0;
        v89 = *(a2 + 1);
        if (v89 >= *(a2 + 2) || *v89 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v89;
          *(a2 + 1) = v89 + 1;
        }

        v90 = *(a2 + 14);
        v91 = *(a2 + 15);
        *(a2 + 14) = v90 + 1;
        if (v90 >= v91)
        {
          return 0;
        }

        v92 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceMapVector::MergePartialFromCodedStream(v88, a2, v93) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v92);
        v94 = *(a2 + 14);
        v40 = __OFSUB__(v94, 1);
        v95 = v94 - 1;
        if (v95 < 0 == v40)
        {
          *(a2 + 14) = v95;
        }

        v96 = *(a2 + 1);
        if (v96 >= *(a2 + 2) || *v96 != 90)
        {
          continue;
        }

        *(a2 + 1) = v96 + 1;
LABEL_238:
        *(this + 99) |= 0x400u;
        v97 = *(this + 10);
        if (!v97)
        {
          operator new();
        }

        v416[0] = 0;
        v98 = *(a2 + 1);
        if (v98 >= *(a2 + 2) || *v98 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v98;
          *(a2 + 1) = v98 + 1;
        }

        v99 = *(a2 + 14);
        v100 = *(a2 + 15);
        *(a2 + 14) = v99 + 1;
        if (v99 >= v100)
        {
          return 0;
        }

        v101 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceMotionActivityContext::MergePartialFromCodedStream(v97, a2, v102) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v101);
        v103 = *(a2 + 14);
        v40 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v40)
        {
          *(a2 + 14) = v104;
        }

        v105 = *(a2 + 1);
        if (v105 >= *(a2 + 2) || *v105 != 98)
        {
          continue;
        }

        *(a2 + 1) = v105 + 1;
LABEL_252:
        *(this + 99) |= 0x800u;
        v106 = *(this + 11);
        if (!v106)
        {
          operator new();
        }

        v416[0] = 0;
        v107 = *(a2 + 1);
        if (v107 >= *(a2 + 2) || *v107 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v107;
          *(a2 + 1) = v107 + 1;
        }

        v108 = *(a2 + 14);
        v109 = *(a2 + 15);
        *(a2 + 14) = v108 + 1;
        if (v108 >= v109)
        {
          return 0;
        }

        v110 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceMountState::MergePartialFromCodedStream(v106, a2, v111) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v110);
        v112 = *(a2 + 14);
        v40 = __OFSUB__(v112, 1);
        v113 = v112 - 1;
        if (v113 < 0 == v40)
        {
          *(a2 + 14) = v113;
        }

        v114 = *(a2 + 1);
        if (v114 >= *(a2 + 2) || *v114 != 106)
        {
          continue;
        }

        *(a2 + 1) = v114 + 1;
LABEL_266:
        *(this + 99) |= 0x1000u;
        v115 = *(this + 12);
        if (!v115)
        {
          operator new();
        }

        v416[0] = 0;
        v116 = *(a2 + 1);
        if (v116 >= *(a2 + 2) || *v116 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v116;
          *(a2 + 1) = v116 + 1;
        }

        v117 = *(a2 + 14);
        v118 = *(a2 + 15);
        *(a2 + 14) = v117 + 1;
        if (v117 >= v118)
        {
          return 0;
        }

        v119 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceSignalEnvironment::MergePartialFromCodedStream(v115, a2, v120) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v119);
        v121 = *(a2 + 14);
        v40 = __OFSUB__(v121, 1);
        v122 = v121 - 1;
        if (v122 < 0 == v40)
        {
          *(a2 + 14) = v122;
        }

        v123 = *(a2 + 1);
        if (v123 >= *(a2 + 2) || *v123 != 114)
        {
          continue;
        }

        *(a2 + 1) = v123 + 1;
LABEL_280:
        *(this + 99) |= 0x2000u;
        v124 = *(this + 13);
        if (!v124)
        {
          operator new();
        }

        v416[0] = 0;
        v125 = *(a2 + 1);
        if (v125 >= *(a2 + 2) || *v125 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v125;
          *(a2 + 1) = v125 + 1;
        }

        v126 = *(a2 + 14);
        v127 = *(a2 + 15);
        *(a2 + 14) = v126 + 1;
        if (v126 >= v127)
        {
          return 0;
        }

        v128 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceSpeedConstraint::MergePartialFromCodedStream(v124, a2, v129) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v128);
        v130 = *(a2 + 14);
        v40 = __OFSUB__(v130, 1);
        v131 = v130 - 1;
        if (v131 < 0 == v40)
        {
          *(a2 + 14) = v131;
        }

        v132 = *(a2 + 1);
        if (v132 >= *(a2 + 2) || *v132 != 122)
        {
          continue;
        }

        *(a2 + 1) = v132 + 1;
LABEL_294:
        *(this + 99) |= 0x4000u;
        v133 = *(this + 14);
        if (!v133)
        {
          operator new();
        }

        v416[0] = 0;
        v134 = *(a2 + 1);
        if (v134 >= *(a2 + 2) || *v134 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v134;
          *(a2 + 1) = v134 + 1;
        }

        v135 = *(a2 + 14);
        v136 = *(a2 + 15);
        *(a2 + 14) = v135 + 1;
        if (v135 >= v136)
        {
          return 0;
        }

        v137 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetAssistanceAlongTrackVelocity::MergePartialFromCodedStream(v133, a2, v138) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v137);
        v139 = *(a2 + 14);
        v40 = __OFSUB__(v139, 1);
        v140 = v139 - 1;
        if (v140 < 0 == v40)
        {
          *(a2 + 14) = v140;
        }

        v141 = *(a2 + 1);
        if (*(a2 + 4) - v141 <= 1 || *v141 != 130 || v141[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v141 + 2;
LABEL_309:
        *(this + 99) |= 0x8000u;
        v142 = *(this + 15);
        if (!v142)
        {
          operator new();
        }

        v416[0] = 0;
        v143 = *(a2 + 1);
        if (v143 >= *(a2 + 2) || *v143 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v143;
          *(a2 + 1) = v143 + 1;
        }

        v144 = *(a2 + 14);
        v145 = *(a2 + 15);
        *(a2 + 14) = v144 + 1;
        if (v144 >= v145)
        {
          return 0;
        }

        v146 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::InjectAssistanceFile::MergePartialFromCodedStream(v142, a2, v147) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v146);
        v148 = *(a2 + 14);
        v40 = __OFSUB__(v148, 1);
        v149 = v148 - 1;
        if (v149 < 0 == v40)
        {
          *(a2 + 14) = v149;
        }

        v150 = *(a2 + 1);
        if (*(a2 + 4) - v150 <= 1 || *v150 != 138 || v150[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v150 + 2;
LABEL_324:
        *(this + 99) |= 0x10000u;
        v151 = *(this + 16);
        if (!v151)
        {
          operator new();
        }

        v416[0] = 0;
        v152 = *(a2 + 1);
        if (v152 >= *(a2 + 2) || *v152 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v152;
          *(a2 + 1) = v152 + 1;
        }

        v153 = *(a2 + 14);
        v154 = *(a2 + 15);
        *(a2 + 14) = v153 + 1;
        if (v153 >= v154)
        {
          return 0;
        }

        v155 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::InjectRtiFile::MergePartialFromCodedStream(v151, a2, v156) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v155);
        v157 = *(a2 + 14);
        v40 = __OFSUB__(v157, 1);
        v158 = v157 - 1;
        if (v158 < 0 == v40)
        {
          *(a2 + 14) = v158;
        }

        v159 = *(a2 + 1);
        if (*(a2 + 4) - v159 <= 1 || *v159 != 146 || v159[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v159 + 2;
LABEL_339:
        *(this + 99) |= 0x20000u;
        v160 = *(this + 17);
        if (!v160)
        {
          operator new();
        }

        v416[0] = 0;
        v161 = *(a2 + 1);
        if (v161 >= *(a2 + 2) || *v161 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v161;
          *(a2 + 1) = v161 + 1;
        }

        v162 = *(a2 + 14);
        v163 = *(a2 + 15);
        *(a2 + 14) = v162 + 1;
        if (v162 >= v163)
        {
          return 0;
        }

        v164 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::InjectSvidBlocklist::MergePartialFromCodedStream(v160, a2, v165) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v164);
        v166 = *(a2 + 14);
        v40 = __OFSUB__(v166, 1);
        v167 = v166 - 1;
        if (v167 < 0 == v40)
        {
          *(a2 + 14) = v167;
        }

        v168 = *(a2 + 1);
        if (*(a2 + 4) - v168 <= 1 || *v168 != 154 || v168[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v168 + 2;
LABEL_354:
        *(this + 99) |= 0x40000u;
        v169 = *(this + 18);
        if (!v169)
        {
          operator new();
        }

        v416[0] = 0;
        v170 = *(a2 + 1);
        if (v170 >= *(a2 + 2) || *v170 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v170;
          *(a2 + 1) = v170 + 1;
        }

        v171 = *(a2 + 14);
        v172 = *(a2 + 15);
        *(a2 + 14) = v171 + 1;
        if (v171 >= v172)
        {
          return 0;
        }

        v173 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::DeleteGnssData::MergePartialFromCodedStream(v169, a2, v174) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v173);
        v175 = *(a2 + 14);
        v40 = __OFSUB__(v175, 1);
        v176 = v175 - 1;
        if (v176 < 0 == v40)
        {
          *(a2 + 14) = v176;
        }

        v177 = *(a2 + 1);
        if (*(a2 + 4) - v177 <= 1 || *v177 != 162 || v177[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v177 + 2;
LABEL_369:
        *(this + 99) |= 0x80000u;
        v178 = *(this + 19);
        if (!v178)
        {
          operator new();
        }

        v416[0] = 0;
        v179 = *(a2 + 1);
        if (v179 >= *(a2 + 2) || *v179 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v179;
          *(a2 + 1) = v179 + 1;
        }

        v180 = *(a2 + 14);
        v181 = *(a2 + 15);
        *(a2 + 14) = v180 + 1;
        if (v180 >= v181)
        {
          return 0;
        }

        v182 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetPvtmReport::MergePartialFromCodedStream(v178, a2, v183) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v182);
        v184 = *(a2 + 14);
        v40 = __OFSUB__(v184, 1);
        v185 = v184 - 1;
        if (v185 < 0 == v40)
        {
          *(a2 + 14) = v185;
        }

        v186 = *(a2 + 1);
        if (*(a2 + 4) - v186 <= 1 || *v186 != 170 || v186[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v186 + 2;
LABEL_384:
        *(this + 99) |= 0x100000u;
        v187 = *(this + 20);
        if (!v187)
        {
          operator new();
        }

        v416[0] = 0;
        v188 = *(a2 + 1);
        if (v188 >= *(a2 + 2) || *v188 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v188;
          *(a2 + 1) = v188 + 1;
        }

        v189 = *(a2 + 14);
        v190 = *(a2 + 15);
        *(a2 + 14) = v189 + 1;
        if (v189 >= v190)
        {
          return 0;
        }

        v191 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetNmeaHandler::MergePartialFromCodedStream(v187, a2, v192) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v191);
        v193 = *(a2 + 14);
        v40 = __OFSUB__(v193, 1);
        v194 = v193 - 1;
        if (v194 < 0 == v40)
        {
          *(a2 + 14) = v194;
        }

        v195 = *(a2 + 1);
        if (*(a2 + 4) - v195 <= 1 || *v195 != 178 || v195[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v195 + 2;
LABEL_399:
        *(this + 99) |= 0x200000u;
        v196 = *(this + 21);
        if (!v196)
        {
          operator new();
        }

        v416[0] = 0;
        v197 = *(a2 + 1);
        if (v197 >= *(a2 + 2) || *v197 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v197;
          *(a2 + 1) = v197 + 1;
        }

        v198 = *(a2 + 14);
        v199 = *(a2 + 15);
        *(a2 + 14) = v198 + 1;
        if (v198 >= v199)
        {
          return 0;
        }

        v200 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetConfigSimulatorMode::MergePartialFromCodedStream(v196, a2, v201) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v200);
        v202 = *(a2 + 14);
        v40 = __OFSUB__(v202, 1);
        v203 = v202 - 1;
        if (v203 < 0 == v40)
        {
          *(a2 + 14) = v203;
        }

        v204 = *(a2 + 1);
        if (*(a2 + 4) - v204 <= 1 || *v204 != 186 || v204[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v204 + 2;
LABEL_414:
        *(this + 99) |= 0x400000u;
        v205 = *(this + 22);
        if (!v205)
        {
          operator new();
        }

        v416[0] = 0;
        v206 = *(a2 + 1);
        if (v206 >= *(a2 + 2) || *v206 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v206;
          *(a2 + 1) = v206 + 1;
        }

        v207 = *(a2 + 14);
        v208 = *(a2 + 15);
        *(a2 + 14) = v207 + 1;
        if (v207 >= v208)
        {
          return 0;
        }

        v209 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetConfigEnableGnssConstellations::MergePartialFromCodedStream(v205, a2, v210) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v209);
        v211 = *(a2 + 14);
        v40 = __OFSUB__(v211, 1);
        v212 = v211 - 1;
        if (v212 < 0 == v40)
        {
          *(a2 + 14) = v212;
        }

        v213 = *(a2 + 1);
        if (*(a2 + 4) - v213 <= 1 || *v213 != 194 || v213[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v213 + 2;
LABEL_429:
        *(this + 99) |= 0x800000u;
        v214 = *(this + 23);
        if (!v214)
        {
          operator new();
        }

        v416[0] = 0;
        v215 = *(a2 + 1);
        if (v215 >= *(a2 + 2) || *v215 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v215;
          *(a2 + 1) = v215 + 1;
        }

        v216 = *(a2 + 14);
        v217 = *(a2 + 15);
        *(a2 + 14) = v216 + 1;
        if (v216 >= v217)
        {
          return 0;
        }

        v218 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetConfigDutyCycling::MergePartialFromCodedStream(v214, a2, v219) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v218);
        v220 = *(a2 + 14);
        v40 = __OFSUB__(v220, 1);
        v221 = v220 - 1;
        if (v221 < 0 == v40)
        {
          *(a2 + 14) = v221;
        }

        v222 = *(a2 + 1);
        if (*(a2 + 4) - v222 <= 1 || *v222 != 202 || v222[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v222 + 2;
LABEL_444:
        *(this + 99) |= 0x1000000u;
        v223 = *(this + 24);
        if (!v223)
        {
          operator new();
        }

        v416[0] = 0;
        v224 = *(a2 + 1);
        if (v224 >= *(a2 + 2) || *v224 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v224;
          *(a2 + 1) = v224 + 1;
        }

        v225 = *(a2 + 14);
        v226 = *(a2 + 15);
        *(a2 + 14) = v225 + 1;
        if (v225 >= v226)
        {
          return 0;
        }

        v227 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::TerminationImminent::MergePartialFromCodedStream(v223, a2, v228) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v227);
        v229 = *(a2 + 14);
        v40 = __OFSUB__(v229, 1);
        v230 = v229 - 1;
        if (v230 < 0 == v40)
        {
          *(a2 + 14) = v230;
        }

        v231 = *(a2 + 1);
        if (*(a2 + 4) - v231 <= 1 || *v231 != 210 || v231[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v231 + 2;
LABEL_459:
        *(this + 99) |= 0x2000000u;
        v232 = *(this + 25);
        if (!v232)
        {
          operator new();
        }

        v416[0] = 0;
        v233 = *(a2 + 1);
        if (v233 >= *(a2 + 2) || *v233 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v233;
          *(a2 + 1) = v233 + 1;
        }

        v234 = *(a2 + 14);
        v235 = *(a2 + 15);
        *(a2 + 14) = v234 + 1;
        if (v234 >= v235)
        {
          return 0;
        }

        v236 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::ExitMessage::MergePartialFromCodedStream(v232, a2, v237) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v236);
        v238 = *(a2 + 14);
        v40 = __OFSUB__(v238, 1);
        v239 = v238 - 1;
        if (v239 < 0 == v40)
        {
          *(a2 + 14) = v239;
        }

        v240 = *(a2 + 1);
        if (*(a2 + 4) - v240 <= 1 || *v240 != 218 || v240[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v240 + 2;
LABEL_474:
        *(this + 99) |= 0x4000000u;
        v241 = *(this + 26);
        if (!v241)
        {
          operator new();
        }

        v416[0] = 0;
        v242 = *(a2 + 1);
        if (v242 >= *(a2 + 2) || *v242 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v242;
          *(a2 + 1) = v242 + 1;
        }

        v243 = *(a2 + 14);
        v244 = *(a2 + 15);
        *(a2 + 14) = v243 + 1;
        if (v243 >= v244)
        {
          return 0;
        }

        v245 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::LtlInfo::MergePartialFromCodedStream(v241, a2, v246) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v245);
        v247 = *(a2 + 14);
        v40 = __OFSUB__(v247, 1);
        v248 = v247 - 1;
        if (v248 < 0 == v40)
        {
          *(a2 + 14) = v248;
        }

        v249 = *(a2 + 1);
        if (*(a2 + 4) - v249 <= 1 || *v249 != 226 || v249[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v249 + 2;
LABEL_489:
        *(this + 99) |= 0x8000000u;
        v250 = *(this + 27);
        if (!v250)
        {
          operator new();
        }

        v416[0] = 0;
        v251 = *(a2 + 1);
        if (v251 >= *(a2 + 2) || *v251 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v251;
          *(a2 + 1) = v251 + 1;
        }

        v252 = *(a2 + 14);
        v253 = *(a2 + 15);
        *(a2 + 14) = v252 + 1;
        if (v252 >= v253)
        {
          return 0;
        }

        v254 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::StartContext::MergePartialFromCodedStream(v250, a2, v255) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v254);
        v256 = *(a2 + 14);
        v40 = __OFSUB__(v256, 1);
        v257 = v256 - 1;
        if (v257 < 0 == v40)
        {
          *(a2 + 14) = v257;
        }

        v258 = *(a2 + 1);
        if (*(a2 + 4) - v258 <= 1 || *v258 != 242 || v258[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v258 + 2;
LABEL_504:
        *(this + 99) |= 0x10000000u;
        v259 = *(this + 28);
        if (!v259)
        {
          operator new();
        }

        v416[0] = 0;
        v260 = *(a2 + 1);
        if (v260 >= *(a2 + 2) || *v260 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v260;
          *(a2 + 1) = v260 + 1;
        }

        v261 = *(a2 + 14);
        v262 = *(a2 + 15);
        *(a2 + 14) = v261 + 1;
        if (v261 >= v262)
        {
          return 0;
        }

        v263 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetThermalRiskState::MergePartialFromCodedStream(v259, a2, v264) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v263);
        v265 = *(a2 + 14);
        v40 = __OFSUB__(v265, 1);
        v266 = v265 - 1;
        if (v266 < 0 == v40)
        {
          *(a2 + 14) = v266;
        }

        v267 = *(a2 + 1);
        if (*(a2 + 4) - v267 <= 1 || *v267 != 250 || v267[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v267 + 2;
LABEL_519:
        *(this + 99) |= 0x20000000u;
        v268 = *(this + 29);
        if (!v268)
        {
          operator new();
        }

        v416[0] = 0;
        v269 = *(a2 + 1);
        if (v269 >= *(a2 + 2) || *v269 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v269;
          *(a2 + 1) = v269 + 1;
        }

        v270 = *(a2 + 14);
        v271 = *(a2 + 15);
        *(a2 + 14) = v270 + 1;
        if (v270 >= v271)
        {
          return 0;
        }

        v272 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::SetConfigRfBandEnable::MergePartialFromCodedStream(v268, a2, v273) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v272);
        v274 = *(a2 + 14);
        v40 = __OFSUB__(v274, 1);
        v275 = v274 - 1;
        if (v275 < 0 == v40)
        {
          *(a2 + 14) = v275;
        }

        v276 = *(a2 + 1);
        if (*(a2 + 4) - v276 <= 1 || *v276 != 130 || v276[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v276 + 2;
LABEL_534:
        *(this + 99) |= 0x40000000u;
        v277 = *(this + 30);
        if (!v277)
        {
          operator new();
        }

        v416[0] = 0;
        v278 = *(a2 + 1);
        if (v278 >= *(a2 + 2) || *v278 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v278;
          *(a2 + 1) = v278 + 1;
        }

        v279 = *(a2 + 14);
        v280 = *(a2 + 15);
        *(a2 + 14) = v279 + 1;
        if (v279 >= v280)
        {
          return 0;
        }

        v281 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gpsd::InjectRavenOrbitFile::MergePartialFromCodedStream(v277, a2, v282) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v281);
        v283 = *(a2 + 14);
        v40 = __OFSUB__(v283, 1);
        v284 = v283 - 1;
        if (v284 < 0 == v40)
        {
          *(a2 + 14) = v284;
        }

        v285 = *(a2 + 1);
        if (*(a2 + 4) - v285 <= 1 || *v285 != 146 || v285[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v285 + 2;
LABEL_549:
        *(this + 99) |= 0x80000000;
        v286 = *(this + 31);
        if (!v286)
        {
          operator new();
        }

        v416[0] = 0;
        v287 = *(a2 + 1);
        if (v287 >= *(a2 + 2) || *v287 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v287;
          *(a2 + 1) = v287 + 1;
        }

        v288 = *(a2 + 14);
        v289 = *(a2 + 15);
        *(a2 + 14) = v288 + 1;
        if (v288 >= v289)
        {
          return 0;
        }

        v290 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::EmergConfig::MergePartialFromCodedStream(v286, a2, v291) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v290);
        v292 = *(a2 + 14);
        v40 = __OFSUB__(v292, 1);
        v293 = v292 - 1;
        if (v293 < 0 == v40)
        {
          *(a2 + 14) = v293;
        }

        v294 = *(a2 + 1);
        if (*(a2 + 4) - v294 <= 1 || *v294 != 154 || v294[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v294 + 2;
LABEL_564:
        *(this + 100) |= 1u;
        if (*(this + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v295 = *(a2 + 1);
        if (*(a2 + 4) - v295 < 2 || *v295 != 226 || v295[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v295 + 2;
LABEL_571:
        *(this + 100) |= 2u;
        v296 = *(this + 33);
        if (!v296)
        {
          operator new();
        }

        v416[0] = 0;
        v297 = *(a2 + 1);
        if (v297 >= *(a2 + 2) || *v297 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v297;
          *(a2 + 1) = v297 + 1;
        }

        v298 = *(a2 + 14);
        v299 = *(a2 + 15);
        *(a2 + 14) = v298 + 1;
        if (v298 >= v299)
        {
          return 0;
        }

        v300 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::PositionRequest::MergePartialFromCodedStream(v296, a2, v301) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v300);
        v302 = *(a2 + 14);
        v40 = __OFSUB__(v302, 1);
        v303 = v302 - 1;
        if (v303 < 0 == v40)
        {
          *(a2 + 14) = v303;
        }

        v304 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v304 <= 1 || *v304 != 232 || v304[1] != 3)
        {
          continue;
        }

        v23 = (v304 + 2);
        *(a2 + 1) = v23;
LABEL_586:
        if (v23 >= v22 || (v305 = *v23, (v305 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v306 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v5 = v305;
          v306 = (v23 + 1);
          *(a2 + 1) = v306;
        }

        v24 = *(this + 100) | 4;
        *(this + 100) = v24;
        if (v22 - v306 < 2 || *v306 != 242 || v306[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v306 + 2;
LABEL_595:
        *(this + 100) = v24 | 8;
        v307 = *(this + 34);
        if (!v307)
        {
          operator new();
        }

        v416[0] = 0;
        v308 = *(a2 + 1);
        if (v308 >= *(a2 + 2) || *v308 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v308;
          *(a2 + 1) = v308 + 1;
        }

        v309 = *(a2 + 14);
        v310 = *(a2 + 15);
        *(a2 + 14) = v309 + 1;
        if (v309 >= v310)
        {
          return 0;
        }

        v311 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::GpsReferenceTime::MergePartialFromCodedStream(v307, a2, v312) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v311);
        v313 = *(a2 + 14);
        v40 = __OFSUB__(v313, 1);
        v314 = v313 - 1;
        if (v314 < 0 == v40)
        {
          *(a2 + 14) = v314;
        }

        v315 = *(a2 + 1);
        if (*(a2 + 4) - v315 <= 1 || *v315 != 250 || v315[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v315 + 2;
LABEL_610:
        *(this + 100) |= 0x10u;
        v316 = *(this + 35);
        if (!v316)
        {
          operator new();
        }

        v416[0] = 0;
        v317 = *(a2 + 1);
        if (v317 >= *(a2 + 2) || *v317 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v317;
          *(a2 + 1) = v317 + 1;
        }

        v318 = *(a2 + 14);
        v319 = *(a2 + 15);
        *(a2 + 14) = v318 + 1;
        if (v318 >= v319)
        {
          return 0;
        }

        v320 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::ReferenceLocation::MergePartialFromCodedStream(v316, a2, v321) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v320);
        v322 = *(a2 + 14);
        v40 = __OFSUB__(v322, 1);
        v323 = v322 - 1;
        if (v323 < 0 == v40)
        {
          *(a2 + 14) = v323;
        }

        v324 = *(a2 + 1);
        if (*(a2 + 4) - v324 <= 1 || *v324 != 130 || v324[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v324 + 2;
LABEL_625:
        *(this + 100) |= 0x20u;
        v325 = *(this + 36);
        if (!v325)
        {
          operator new();
        }

        v416[0] = 0;
        v326 = *(a2 + 1);
        if (v326 >= *(a2 + 2) || *v326 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v326;
          *(a2 + 1) = v326 + 1;
        }

        v327 = *(a2 + 14);
        v328 = *(a2 + 15);
        *(a2 + 14) = v327 + 1;
        if (v327 >= v328)
        {
          return 0;
        }

        v329 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::GpsNavigationModel::MergePartialFromCodedStream(v325, a2, v330) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v329);
        v331 = *(a2 + 14);
        v40 = __OFSUB__(v331, 1);
        v332 = v331 - 1;
        if (v332 < 0 == v40)
        {
          *(a2 + 14) = v332;
        }

        v333 = *(a2 + 1);
        if (*(a2 + 4) - v333 <= 1 || *v333 != 138 || v333[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v333 + 2;
LABEL_640:
        *(this + 100) |= 0x40u;
        v334 = *(this + 37);
        if (!v334)
        {
          operator new();
        }

        v416[0] = 0;
        v335 = *(a2 + 1);
        if (v335 >= *(a2 + 2) || *v335 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v335;
          *(a2 + 1) = v335 + 1;
        }

        v336 = *(a2 + 14);
        v337 = *(a2 + 15);
        *(a2 + 14) = v336 + 1;
        if (v336 >= v337)
        {
          return 0;
        }

        v338 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::GpsAcqAssistance::MergePartialFromCodedStream(v334, a2, v339) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v338);
        v340 = *(a2 + 14);
        v40 = __OFSUB__(v340, 1);
        v341 = v340 - 1;
        if (v341 < 0 == v40)
        {
          *(a2 + 14) = v341;
        }

        v342 = *(a2 + 1);
        if (*(a2 + 4) - v342 <= 1 || *v342 != 146 || v342[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v342 + 2;
LABEL_655:
        *(this + 100) |= 0x80u;
        v343 = *(this + 39);
        if (!v343)
        {
          operator new();
        }

        v416[0] = 0;
        v344 = *(a2 + 1);
        if (v344 >= *(a2 + 2) || *v344 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v344;
          *(a2 + 1) = v344 + 1;
        }

        v345 = *(a2 + 14);
        v346 = *(a2 + 15);
        *(a2 + 14) = v345 + 1;
        if (v345 >= v346)
        {
          return 0;
        }

        v347 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::CellFTAssistance::MergePartialFromCodedStream(v343, a2, v348) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v347);
        v349 = *(a2 + 14);
        v40 = __OFSUB__(v349, 1);
        v350 = v349 - 1;
        if (v350 < 0 == v40)
        {
          *(a2 + 14) = v350;
        }

        v351 = *(a2 + 1);
        if (*(a2 + 4) - v351 <= 1 || *v351 != 154 || v351[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v351 + 2;
LABEL_670:
        *(this + 100) |= 0x100u;
        v352 = *(this + 40);
        if (!v352)
        {
          operator new();
        }

        v416[0] = 0;
        v353 = *(a2 + 1);
        if (v353 >= *(a2 + 2) || *v353 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
          {
            return 0;
          }
        }

        else
        {
          v416[0] = *v353;
          *(a2 + 1) = v353 + 1;
        }

        v354 = *(a2 + 14);
        v355 = *(a2 + 15);
        *(a2 + 14) = v354 + 1;
        if (v354 >= v355)
        {
          return 0;
        }

        v356 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
        if (!proto::gnss::Emergency::CplaneContext::MergePartialFromCodedStream(v352, a2, v357) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v356);
        v358 = *(a2 + 14);
        v40 = __OFSUB__(v358, 1);
        v359 = v358 - 1;
        if (v359 < 0 == v40)
        {
          *(a2 + 14) = v359;
        }

        v360 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v27 - v360 > 1)
        {
          v361 = *v360;
          goto LABEL_683;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_130;
      case 4u:
        if (v10 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_111;
      case 5u:
        if (v10 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_111;
      case 6u:
        if (v10 == 2)
        {
          goto LABEL_168;
        }

        goto LABEL_111;
      case 7u:
        if (v10 == 2)
        {
          goto LABEL_182;
        }

        goto LABEL_111;
      case 8u:
        if (v10 == 2)
        {
          goto LABEL_196;
        }

        goto LABEL_111;
      case 9u:
        if (v10 == 2)
        {
          goto LABEL_210;
        }

        goto LABEL_111;
      case 0xAu:
        if (v10 == 2)
        {
          goto LABEL_224;
        }

        goto LABEL_111;
      case 0xBu:
        if (v10 == 2)
        {
          goto LABEL_238;
        }

        goto LABEL_111;
      case 0xCu:
        if (v10 == 2)
        {
          goto LABEL_252;
        }

        goto LABEL_111;
      case 0xDu:
        if (v10 == 2)
        {
          goto LABEL_266;
        }

        goto LABEL_111;
      case 0xEu:
        if (v10 == 2)
        {
          goto LABEL_280;
        }

        goto LABEL_111;
      case 0xFu:
        if (v10 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_111;
      case 0x10u:
        if (v10 == 2)
        {
          goto LABEL_309;
        }

        goto LABEL_111;
      case 0x11u:
        if (v10 == 2)
        {
          goto LABEL_324;
        }

        goto LABEL_111;
      case 0x12u:
        if (v10 == 2)
        {
          goto LABEL_339;
        }

        goto LABEL_111;
      case 0x13u:
        if (v10 == 2)
        {
          goto LABEL_354;
        }

        goto LABEL_111;
      case 0x14u:
        if (v10 == 2)
        {
          goto LABEL_369;
        }

        goto LABEL_111;
      case 0x15u:
        if (v10 == 2)
        {
          goto LABEL_384;
        }

        goto LABEL_111;
      case 0x16u:
        if (v10 == 2)
        {
          goto LABEL_399;
        }

        goto LABEL_111;
      case 0x17u:
        if (v10 == 2)
        {
          goto LABEL_414;
        }

        goto LABEL_111;
      case 0x18u:
        if (v10 == 2)
        {
          goto LABEL_429;
        }

        goto LABEL_111;
      case 0x19u:
        if (v10 == 2)
        {
          goto LABEL_444;
        }

        goto LABEL_111;
      case 0x1Au:
        if (v10 == 2)
        {
          goto LABEL_459;
        }

        goto LABEL_111;
      case 0x1Bu:
        if (v10 == 2)
        {
          goto LABEL_474;
        }

        goto LABEL_111;
      case 0x1Cu:
        if (v10 == 2)
        {
          goto LABEL_489;
        }

        goto LABEL_111;
      case 0x1Eu:
        if (v10 == 2)
        {
          goto LABEL_504;
        }

        goto LABEL_111;
      case 0x1Fu:
        if (v10 == 2)
        {
          goto LABEL_519;
        }

        goto LABEL_111;
      case 0x20u:
        if (v10 == 2)
        {
          goto LABEL_534;
        }

        goto LABEL_111;
      case 0x32u:
        if (v10 == 2)
        {
          goto LABEL_549;
        }

        goto LABEL_111;
      case 0x33u:
        if (v10 == 2)
        {
          goto LABEL_564;
        }

        goto LABEL_111;
      case 0x3Cu:
        if (v10 == 2)
        {
          goto LABEL_571;
        }

        goto LABEL_111;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_586;
      case 0x3Eu:
        if (v10 != 2)
        {
          goto LABEL_111;
        }

        v24 = *(this + 100);
        goto LABEL_595;
      case 0x3Fu:
        if (v10 == 2)
        {
          goto LABEL_610;
        }

        goto LABEL_111;
      case 0x40u:
        if (v10 == 2)
        {
          goto LABEL_625;
        }

        goto LABEL_111;
      case 0x41u:
        if (v10 == 2)
        {
          goto LABEL_640;
        }

        goto LABEL_111;
      case 0x42u:
        if (v10 == 2)
        {
          goto LABEL_655;
        }

        goto LABEL_111;
      case 0x43u:
        if (v10 == 2)
        {
          goto LABEL_670;
        }

        goto LABEL_111;
      case 0x46u:
        if ((TagFallback & 7) == 0)
        {
          v28 = *(a2 + 1);
          v27 = *(a2 + 2);
          while (1)
          {
            v415 = 0;
            if (v28 >= v27 || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v415))
              {
                return 0;
              }
            }

            else
            {
              v415 = *v28;
              *(a2 + 1) = v28 + 1;
            }

            v362 = *(this + 84);
            if (v362 == *(this + 85))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 41, v362 + 1);
              v362 = *(this + 84);
            }

            v363 = v415;
            v364 = *(this + 41);
            *(this + 84) = v362 + 1;
            *(v364 + 4 * v362) = v363;
            v365 = *(this + 85) - *(this + 84);
            if (v365 >= 1)
            {
              v366 = v365 + 1;
              do
              {
                v367 = *(a2 + 1);
                v368 = *(a2 + 2);
                if (v368 - v367 < 2 || *v367 != 176 || v367[1] != 4)
                {
                  break;
                }

                *(a2 + 1) = v367 + 2;
                if ((v367 + 2) >= v368 || v367[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v415))
                  {
                    return 0;
                  }
                }

                else
                {
                  v415 = v367[2];
                  *(a2 + 1) = v367 + 3;
                }

                v369 = *(this + 84);
                if (v369 >= *(this + 85))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v416);
                  v369 = *(this + 84);
                }

                v370 = v415;
                v371 = *(this + 41);
                *(this + 84) = v369 + 1;
                *(v371 + 4 * v369) = v370;
                --v366;
              }

              while (v366 > 1);
            }

LABEL_704:
            v360 = *(a2 + 1);
            v27 = *(a2 + 2);
            if (v27 - v360 < 2)
            {
              goto LABEL_2;
            }

            v361 = *v360;
            if (v361 == 186)
            {
              break;
            }

LABEL_683:
            if (v361 != 176 || v360[1] != 4)
            {
              goto LABEL_2;
            }

            v28 = (v360 + 2);
            *(a2 + 1) = v28;
          }

          if (v360[1] == 4)
          {
            *(a2 + 1) = v360 + 2;
LABEL_708:
            *(this + 100) |= 0x400u;
            v372 = *(this + 43);
            if (!v372)
            {
              operator new();
            }

            v416[0] = 0;
            v373 = *(a2 + 1);
            if (v373 >= *(a2 + 2) || *v373 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
              {
                return 0;
              }
            }

            else
            {
              v416[0] = *v373;
              *(a2 + 1) = v373 + 1;
            }

            v374 = *(a2 + 14);
            v375 = *(a2 + 15);
            *(a2 + 14) = v374 + 1;
            if (v374 >= v375)
            {
              return 0;
            }

            v376 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
            if (!proto::gnss::Emergency::LocationId::MergePartialFromCodedStream(v372, a2, v377) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v376);
            v378 = *(a2 + 14);
            v40 = __OFSUB__(v378, 1);
            v379 = v378 - 1;
            if (v379 < 0 == v40)
            {
              *(a2 + 14) = v379;
            }

            v380 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v15 - v380 > 1 && *v380 == 192 && v380[1] == 4)
            {
              v16 = (v380 + 2);
              *(a2 + 1) = v16;
LABEL_723:
              if (v16 >= v15 || (v381 = *v16, (v381 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                if (!result)
                {
                  return result;
                }

                v382 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                *v6 = v381;
                v382 = (v16 + 1);
                *(a2 + 1) = v382;
              }

              *(this + 100) |= 0x800u;
              if (v15 - v382 >= 2)
              {
                v383 = *v382;
                goto LABEL_730;
              }
            }
          }

          continue;
        }

        if (v10 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 328);
          if (result)
          {
            goto LABEL_704;
          }

          return result;
        }

        goto LABEL_111;
      case 0x47u:
        if (v10 == 2)
        {
          goto LABEL_708;
        }

        goto LABEL_111;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_723;
      case 0x49u:
        if ((TagFallback & 7) == 0)
        {
          v26 = *(a2 + 1);
          v15 = *(a2 + 2);
          while (1)
          {
            v415 = 0;
            if (v26 >= v15 || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v415))
              {
                return 0;
              }
            }

            else
            {
              v415 = *v26;
              *(a2 + 1) = v26 + 1;
            }

            v384 = *(this + 90);
            if (v384 == *(this + 91))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 44, v384 + 1);
              v384 = *(this + 90);
            }

            v385 = v415;
            v386 = *(this + 44);
            *(this + 90) = v384 + 1;
            *(v386 + 4 * v384) = v385;
            v387 = *(this + 91) - *(this + 90);
            if (v387 >= 1)
            {
              v388 = v387 + 1;
              do
              {
                v389 = *(a2 + 1);
                v390 = *(a2 + 2);
                if (v390 - v389 < 2 || *v389 != 200 || v389[1] != 4)
                {
                  break;
                }

                *(a2 + 1) = v389 + 2;
                if ((v389 + 2) >= v390 || v389[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v415))
                  {
                    return 0;
                  }
                }

                else
                {
                  v415 = v389[2];
                  *(a2 + 1) = v389 + 3;
                }

                v391 = *(this + 90);
                if (v391 >= *(this + 91))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v416);
                  v391 = *(this + 90);
                }

                v392 = v415;
                v393 = *(this + 44);
                *(this + 90) = v391 + 1;
                *(v393 + 4 * v391) = v392;
                --v388;
              }

              while (v388 > 1);
            }

LABEL_751:
            v382 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v15 - v382 < 2)
            {
              goto LABEL_2;
            }

            v383 = *v382;
            if (v383 == 208)
            {
              break;
            }

LABEL_730:
            if (v383 != 200 || v382[1] != 4)
            {
              goto LABEL_2;
            }

            v26 = (v382 + 2);
            *(a2 + 1) = v26;
          }

          if (v382[1] == 4)
          {
            v20 = (v382 + 2);
            *(a2 + 1) = v20;
LABEL_755:
            v416[0] = 0;
            if (v20 >= v15 || (v394 = *v20, (v394 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416);
              if (!result)
              {
                return result;
              }

              v394 = v416[0];
              v395 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              v395 = (v20 + 1);
              *(a2 + 1) = v395;
            }

            *(this + 368) = v394 != 0;
            *(this + 100) |= 0x2000u;
            if (v15 - v395 >= 2 && *v395 == 216 && v395[1] == 4)
            {
              v21 = (v395 + 2);
              *(a2 + 1) = v21;
LABEL_764:
              if (v21 >= v15 || (v396 = *v21, (v396 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                if (!result)
                {
                  return result;
                }

                v397 = *(a2 + 1);
                v15 = *(a2 + 2);
              }

              else
              {
                *v7 = v396;
                v397 = (v21 + 1);
                *(a2 + 1) = v397;
              }

              v25 = *(this + 100) | 0x4000;
              *(this + 100) = v25;
              if (v15 - v397 >= 2 && *v397 == 226 && v397[1] == 4)
              {
                *(a2 + 1) = v397 + 2;
LABEL_773:
                *(this + 100) = v25 | 0x8000;
                v398 = *(this + 47);
                if (!v398)
                {
                  operator new();
                }

                v416[0] = 0;
                v399 = *(a2 + 1);
                if (v399 >= *(a2 + 2) || *v399 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
                  {
                    return 0;
                  }
                }

                else
                {
                  v416[0] = *v399;
                  *(a2 + 1) = v399 + 1;
                }

                v400 = *(a2 + 14);
                v401 = *(a2 + 15);
                *(a2 + 14) = v400 + 1;
                if (v400 >= v401)
                {
                  return 0;
                }

                v402 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
                if (!proto::gnss::Emergency::SuplContext::MergePartialFromCodedStream(v398, a2, v403) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v402);
                v404 = *(a2 + 14);
                v40 = __OFSUB__(v404, 1);
                v405 = v404 - 1;
                if (v405 < 0 == v40)
                {
                  *(a2 + 14) = v405;
                }

                v406 = *(a2 + 1);
                if (*(a2 + 4) - v406 > 1 && *v406 == 234 && v406[1] == 4)
                {
                  *(a2 + 1) = v406 + 2;
LABEL_788:
                  *(this + 100) |= 0x10000u;
                  v407 = *(this + 48);
                  if (!v407)
                  {
                    operator new();
                  }

                  v416[0] = 0;
                  v408 = *(a2 + 1);
                  if (v408 >= *(a2 + 2) || *v408 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v416[0] = *v408;
                    *(a2 + 1) = v408 + 1;
                  }

                  v409 = *(a2 + 14);
                  v410 = *(a2 + 15);
                  *(a2 + 14) = v409 + 1;
                  if (v409 >= v410)
                  {
                    return 0;
                  }

                  v411 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v416[0]);
                  if (!proto::gnss::Emergency::WlanMeasurementList::MergePartialFromCodedStream(v407, a2, v412) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v411);
                  v413 = *(a2 + 14);
                  v40 = __OFSUB__(v413, 1);
                  v414 = v413 - 1;
                  if (v414 < 0 == v40)
                  {
                    *(a2 + 14) = v414;
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

          continue;
        }

        if (v10 != 2)
        {
LABEL_111:
          if (v10 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 352);
        if (result)
        {
          goto LABEL_751;
        }

        return result;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v20 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_755;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v21 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_764;
      case 0x4Cu:
        if (v10 != 2)
        {
          goto LABEL_111;
        }

        v25 = *(this + 100);
        goto LABEL_773;
      case 0x4Du:
        if (v10 == 2)
        {
          goto LABEL_788;
        }

        goto LABEL_111;
      default:
        goto LABEL_111;
    }
  }
}

void sub_100009164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void GpsdGnssDeviceManager::handleRequest(std::mutex *this, const proto::gpsd::Request *a2)
{
  if ((*(a2 + 396) & 4) == 0)
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__m_.__sig) = 0;
      v5 = "#gdm,Missing request type";
      v6 = v4;
      v7 = 2;
LABEL_49:
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v8 = *(a2 + 5);
  if (!v8 || (IsValid = proto::gpsd::Request_Type_IsValid(*(a2 + 5)), (IsValid & 1) == 0))
  {
    v16 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a2 + 5);
      LODWORD(buf[0].__m_.__sig) = 67240192;
      HIDWORD(buf[0].__m_.__sig) = v31;
      v5 = "#gdm,Invalid request type,%{public}d";
      v6 = v16;
      v7 = 8;
      goto LABEL_49;
    }

LABEL_20:
    v17 = *(a2 + 5);
    v18 = *&this[5].__m_.__opaque[48];
    buf[0].__m_.__sig = _NSConcreteStackBlock;
    *buf[0].__m_.__opaque = 0x40000000;
    *&buf[0].__m_.__opaque[8] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
    *&buf[0].__m_.__opaque[16] = &__block_descriptor_tmp_46;
    *&buf[0].__m_.__opaque[24] = this;
    *&buf[0].__m_.__opaque[32] = v17;
    *&buf[0].__m_.__opaque[36] = 4;
    dispatch_async(v18, buf);
    return;
  }

  if ((v8 & 0xFFFFFFFE) != 0xE && (v10 = GpsdLogObjectGeneral, IsValid = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG), IsValid))
  {
    ProtobufUtil::stringify(v8, buf);
    if (buf[0].__m_.__opaque[15] >= 0)
    {
      sig = buf;
    }

    else
    {
      sig = buf[0].__m_.__sig;
    }

    LODWORD(v115) = 136446210;
    *(&v115 + 4) = sig;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#gdm,receivedRequest,%{public}s", &v115, 0xCu);
    if (buf[0].__m_.__opaque[15] < 0)
    {
      operator delete(buf[0].__m_.__sig);
    }

    v11 = *(a2 + 5);
  }

  else
  {
    v11 = v8;
  }

  *&v115 = off_10017D6C0;
  *(&v115 + 1) = this;
  v116 = v8;
  v117 = &v115;
  if (v11 > 34)
  {
    switch(v11)
    {
      case '#':
        v21 = *(a2 + 24);
        if (!v21)
        {
          v21 = *(proto::gpsd::Request::default_instance_ + 192);
        }

        v22 = 1;
        GpsdGnssDeviceManager::prepareForTermination(this, *(v21 + 8), 1);
        goto LABEL_75;
      case '$':
        v23 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].__m_.__sig) = 0;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#gdm,EXIT request via XPC", buf, 2u);
        }

        v24 = *(a2 + 25);
        if (!v24)
        {
          v24 = *(proto::gpsd::Request::default_instance_ + 200);
        }

        GpsdGnssDeviceManager::prepareForTermination(this, *(v24 + 8), 1);
        std::function<void ()(gnss::Result)>::operator()(&v115, 1);
        usleep(0x186A0u);
        v25 = GpsdLogObjectGeneral;
        v26 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          LOWORD(buf[0].__m_.__sig) = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#gdm,Completed exit preparations", buf, 2u);
        }

        v27 = GpsdRuntime::instance(v26);
        v28 = *(a2 + 25);
        if (!v28)
        {
          v28 = *(proto::gpsd::Request::default_instance_ + 200);
        }

        GpsdRuntime::bounceExit(v27, *(v28 + 8));
        goto LABEL_76;
      case '%':
        v12 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0].__m_.__sig) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#gdm,hard clear start", buf, 2u);
        }

        std::string::basic_string[abi:ne200100]<0>(v113, "hard clear");
        GpsdGnssDeviceManager::prepareForTermination(this, v113, 1);
        GnssHal::PlatformNvStore::PlatformNvStore(buf);
        GnssHal::PlatformNvStore::clearSessionStorage(buf);
        GnssHal::PlatformNvStore::clearPermanentStorage(buf);
        v13 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v79 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#gdm,hard clear done", v79, 2u);
        }

        GnssHal::PlatformNvStore::~PlatformNvStore(buf);
        GpsdPerformanceSummary::appendRequest(this + 6, a2);
        v15 = GpsdRuntime::instance(v14);
        GpsdRuntime::bounceExit(v15, v113);
        if (v114 < 0)
        {
          operator delete(*v113);
        }

        goto LABEL_76;
    }

LABEL_40:
    v29 = *&this->__m_.__opaque[8];
    if (v29)
    {
      goto LABEL_46;
    }

    if (this[20].__m_.__opaque[32] == 1 && (v11 > 0x22 || ((1 << v11) & 0x500040F04) == 0))
    {
      v41 = GpsdPreferences::instance(0);
      IsValid = GpsdPreferences::bigPowerSwitch(v41);
      if (IsValid)
      {
        v42 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          ProtobufUtil::stringify(*(a2 + 5), buf);
          v43 = buf[0].__m_.__opaque[15] >= 0 ? buf : buf[0].__m_.__sig;
          *v113 = 136446210;
          *&v113[4] = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#gdm,#bps,createDevice init,%{public}s", v113, 0xCu);
          if (buf[0].__m_.__opaque[15] < 0)
          {
            operator delete(buf[0].__m_.__sig);
          }
        }

        GpsdGnssDeviceManager::createDevice(this);
      }
    }

    v29 = *&this->__m_.__opaque[8];
    if (v29)
    {
      v11 = *(a2 + 5);
LABEL_46:
      switch(v11)
      {
        case 1:
          GpsdGnssDeviceManager::handleRegularStartRequest(this, a2);
          goto LABEL_54;
        case 2:
          GpsdGnssDeviceManager::handleRegularStopRequest(this);
          goto LABEL_54;
        case 3:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v109, &v115);
          (*(*v29 + 24))(v29, v109);
          v30 = v109;
          break;
        case 4:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v108, &v115);
          (*(*v29 + 32))(v29, v108);
          v30 = v108;
          break;
        case 5:
          if ((*(a2 + 398) & 4) == 0)
          {
            goto LABEL_39;
          }

          v51 = *(a2 + 18);
          if (!v51)
          {
            v51 = *(proto::gpsd::Request::default_instance_ + 144);
          }

          if ((*(v51 + 20) & 1) == 0)
          {
            goto LABEL_39;
          }

          v52 = GpsdGnssDeviceManager::getVendorDeleteGnssFlag(IsValid, *(v51 + 8));
          v53 = *&this->__m_.__opaque[8];
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v107, &v115);
          (*(*v53 + 40))(v53, v52, v107);
          v30 = v107;
          break;
        case 6:
          if ((*(a2 + 398) & 8) == 0)
          {
            goto LABEL_39;
          }

          v54 = *(a2 + 19);
          if (!v54)
          {
            v54 = *(proto::gpsd::Request::default_instance_ + 152);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v106, &v115);
          GpsdGnssDeviceManager::setPvtmReport(this, v54, v106);
          v30 = v106;
          break;
        case 7:
          if ((*(a2 + 398) & 0x10) == 0)
          {
            goto LABEL_39;
          }

          v48 = *(a2 + 20);
          if (!v48)
          {
            v48 = *(proto::gpsd::Request::default_instance_ + 160);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v105, &v115);
          GpsdGnssDeviceManager::setNmeaHandler(this, v48, v105);
          v30 = v105;
          break;
        case 8:
          if ((*(a2 + 396) & 8) == 0)
          {
            goto LABEL_39;
          }

          v49 = *(a2 + 3);
          if (!v49)
          {
            v49 = *(proto::gpsd::Request::default_instance_ + 24);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v104, &v115);
          GpsdGnssDeviceManager::injectAssistancePosition(this, v49, v104);
          v30 = v104;
          break;
        case 9:
          if ((*(a2 + 396) & 0x10) == 0)
          {
            goto LABEL_39;
          }

          v45 = *(a2 + 4);
          if (!v45)
          {
            v45 = *(proto::gpsd::Request::default_instance_ + 32);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v103, &v115);
          GpsdGnssDeviceManager::injectAssistanceTime(this, v45, v103);
          v30 = v103;
          break;
        case 10:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v102, &v115);
          GpsdGnssDeviceManager::injectAssistanceFile(this, a2, v102);
          v30 = v102;
          break;
        case 11:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v101, &v115);
          GpsdGnssDeviceManager::injectRtiFile(this, a2, v101);
          v30 = v101;
          break;
        case 12:
          goto LABEL_39;
        case 14:
          if ((*(a2 + 396) & 0x40) == 0)
          {
            goto LABEL_39;
          }

          v57 = *(a2 + 6);
          if (!v57)
          {
            v57 = *(proto::gpsd::Request::default_instance_ + 48);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v99, &v115);
          GpsdGnssDeviceManager::setAssistanceAccel(this, v57, v99);
          v30 = v99;
          break;
        case 15:
          if ((*(a2 + 396) & 0x80) == 0)
          {
            goto LABEL_39;
          }

          v46 = *(a2 + 7);
          if (!v46)
          {
            v46 = *(proto::gpsd::Request::default_instance_ + 56);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v98, &v115);
          GpsdGnssDeviceManager::setAssistanceGyro(this, v46, v98);
          v30 = v98;
          break;
        case 16:
          if ((*(a2 + 397) & 1) == 0)
          {
            goto LABEL_39;
          }

          v61 = *(a2 + 8);
          if (!v61)
          {
            v61 = *(proto::gpsd::Request::default_instance_ + 64);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v97, &v115);
          GpsdGnssDeviceManager::setAssistanceDem(this, v61, v97);
          v30 = v97;
          break;
        case 17:
          if ((*(a2 + 397) & 2) == 0)
          {
            goto LABEL_39;
          }

          v62 = *(a2 + 9);
          if (!v62)
          {
            v62 = *(proto::gpsd::Request::default_instance_ + 72);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v96, &v115);
          GpsdGnssDeviceManager::setAssistanceMapVector(this, v62, v96);
          v30 = v96;
          break;
        case 18:
          if ((*(a2 + 397) & 4) == 0)
          {
            goto LABEL_39;
          }

          v64 = *(a2 + 10);
          if (!v64)
          {
            v64 = *(proto::gpsd::Request::default_instance_ + 80);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v95, &v115);
          GpsdGnssDeviceManager::setAssistanceMotionActivityContext(this, v64, v95);
          v30 = v95;
          break;
        case 19:
          if ((*(a2 + 397) & 8) == 0)
          {
            goto LABEL_39;
          }

          v63 = *(a2 + 11);
          if (!v63)
          {
            v63 = *(proto::gpsd::Request::default_instance_ + 88);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v94, &v115);
          GpsdGnssDeviceManager::setAssistanceMountState(this, v63, v94);
          v30 = v94;
          break;
        case 20:
          if ((*(a2 + 397) & 0x10) == 0)
          {
            goto LABEL_39;
          }

          v44 = *(a2 + 12);
          if (!v44)
          {
            v44 = *(proto::gpsd::Request::default_instance_ + 96);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v93, &v115);
          GpsdGnssDeviceManager::setAssistanceSignalEnvironment(this, v44, v93);
          v30 = v93;
          break;
        case 21:
          if ((*(a2 + 397) & 0x20) == 0)
          {
            goto LABEL_39;
          }

          v58 = *(a2 + 13);
          if (!v58)
          {
            v58 = *(proto::gpsd::Request::default_instance_ + 104);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v92, &v115);
          GpsdGnssDeviceManager::setAssistanceSpeedConstraint(this, v58, v92);
          v30 = v92;
          break;
        case 22:
          if ((*(a2 + 397) & 0x40) == 0)
          {
            goto LABEL_39;
          }

          v65 = *(a2 + 14);
          if (!v65)
          {
            v65 = *(proto::gpsd::Request::default_instance_ + 112);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v91, &v115);
          GpsdGnssDeviceManager::setAssistanceAlongTrackVelocity(this, v65, v91);
          v30 = v91;
          break;
        case 23:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v89, &v115);
          GpsdGnssDeviceManager::setPowerReport(this, v89);
          v30 = v89;
          break;
        case 24:
          if ((*(a2 + 398) & 0x20) == 0)
          {
            goto LABEL_39;
          }

          v56 = *(a2 + 21);
          if (!v56)
          {
            v56 = *(proto::gpsd::Request::default_instance_ + 168);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v88, &v115);
          GpsdGnssDeviceManager::setConfigSimulatorMode(this, v56, v88);
          v30 = v88;
          break;
        case 25:
          if ((*(a2 + 398) & 0x40) == 0)
          {
            goto LABEL_39;
          }

          v47 = *(a2 + 22);
          if (!v47)
          {
            v47 = *(proto::gpsd::Request::default_instance_ + 176);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v87, &v115);
          GpsdGnssDeviceManager::setConfigEnableGnssConstellations(this, v47, v87);
          v30 = v87;
          break;
        case 26:
          if ((*(a2 + 398) & 0x80) == 0)
          {
            goto LABEL_39;
          }

          v59 = *(a2 + 23);
          if (!v59)
          {
            v59 = *(proto::gpsd::Request::default_instance_ + 184);
          }

          if ((*(v59 + 16) & 1) == 0)
          {
            goto LABEL_39;
          }

          v60 = *(v59 + 8);
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v86, &v115);
          (*(*v29 + 248))(v29, v60, v86);
          v30 = v86;
          break;
        case 27:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v84, &v115);
          GnssDeviceCommon::setTimeTransferPulseHelper(this->__m_.__opaque, v84);
          v30 = v84;
          break;
        case 28:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v83, &v115);
          (*(*v29 + 128))(v29, v83);
          v30 = v83;
          break;
        case 31:
          if ((*(a2 + 399) & 0x10) == 0)
          {
            goto LABEL_39;
          }

          v66 = *(a2 + 28);
          if (!v66)
          {
            v66 = *(proto::gpsd::Request::default_instance_ + 224);
          }

          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v90, &v115);
          GpsdGnssDeviceManager::setThermalRiskState(this, v66, v90);
          v30 = v90;
          break;
        case 32:
          std::function<void ()(gnss::Result)>::operator()(&v115, 1);
          GpsdGnssDeviceManager::sendStatusIndication(this);
        case 38:
          if ((*(a2 + 399) & 0x20) == 0)
          {
            goto LABEL_39;
          }

          v55 = *(a2 + 29);
          if (!v55)
          {
            v55 = *(proto::gpsd::Request::default_instance_ + 232);
          }

          if ((~*(v55 + 16) & 3) != 0)
          {
            goto LABEL_39;
          }

          LOWORD(buf[0].__m_.__sig) = *(v55 + 8);
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v85, &v115);
          GnssDeviceCommon::setConfigRfBandEnableHelper(this->__m_.__opaque, buf, v85);
          v30 = v85;
          break;
        case 39:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v100, &v115);
          GpsdGnssDeviceManager::injectRavenOrbitFile(this, a2, v100);
          v30 = v100;
          break;
        case 51:
          GpsdGnssDeviceManager::handleEmergencyPreemptiveStartRequest(this, a2);
          goto LABEL_54;
        case 52:
          GpsdGnssDeviceManager::handleEmergencyPreemptiveStopRequest(this);
          goto LABEL_54;
        case 53:
        case 60:
        case 61:
        case 65:
        case 66:
        case 68:
        case 69:
        case 70:
        case 71:
        case 73:
        case 74:
        case 76:
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v80, &v115);
          GpsdGnssDeviceManager::handleRequestWithLegacyEmergencyHandler(this, a2, v80);
          v30 = v80;
          break;
        case 67:
          v50 = GpsdLogObjectGeneral;
          if ((*(a2 + 400) & 0x20) == 0)
          {
            if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf[0].__m_.__sig) = 0;
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "#gdm,#nilr,#cp,GpsNavigationModel payload is missing", buf, 2u);
            }

            goto LABEL_39;
          }

          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0].__m_.__sig) = 0;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#gdm,#nilr,#cp,GpsNavigationModel", buf, 2u);
          }

          gnss::Emergency::Cplane::GpsNavigationModel::GpsNavigationModel(buf);
          v69 = *(a2 + 36);
          if (!v69)
          {
            v69 = *(proto::gpsd::Request::default_instance_ + 288);
          }

          ProtobufUtil::fromProtobuf(v69, buf, v68);
          v70 = *&this->__m_.__opaque[8];
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v81, &v115);
          (*(*v70 + 376))(v70, buf, v81);
          v30 = v81;
          break;
        default:
          v67 = GpsdLogObjectWarning;
          if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0].__m_.__sig) = 67240192;
            HIDWORD(buf[0].__m_.__sig) = v11;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#gdm,Unexpected request type,%{public}d", buf, 8u);
          }

          goto LABEL_39;
      }

LABEL_53:
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
      goto LABEL_54;
    }

    v36 = GpsdPreferences::instance(0);
    v37 = GpsdPreferences::bigPowerSwitch(v36);
    v38 = *(a2 + 5);
    if (v38 == 2)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    v40 = GpsdLogObjectGeneral;
    if (v39 == 1)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0].__m_.__sig) = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#gdm,#bps,Ignore and ack stop when device held in reset", buf, 2u);
      }

      v22 = 1;
    }

    else
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        ProtobufUtil::stringify(v38, buf);
        v71 = buf[0].__m_.__opaque[15] >= 0 ? buf : buf[0].__m_.__sig;
        *v113 = 136446210;
        *&v113[4] = v71;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "#gdm,Device not initialized,Cannot handle request,%{public}s", v113, 0xCu);
        if (buf[0].__m_.__opaque[15] < 0)
        {
          operator delete(buf[0].__m_.__sig);
        }
      }

      v22 = 7;
    }

LABEL_75:
    std::function<void ()(gnss::Result)>::operator()(&v115, v22);
    goto LABEL_76;
  }

  if (v11 != 29)
  {
    if (v11 == 34)
    {
      this[20].__m_.__opaque[32] = 1;
      if (this[20].__m_.__opaque[34] == 1)
      {
        v72 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0].__m_.__sig) = 0;
          _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "#gdm,Device has been destroyed", buf, 2u);
          v72 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0].__m_.__sig) = 136446722;
          *(&buf[0].__m_.__sig + 4) = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdGnssDeviceManager.cpp";
          *&buf[0].__m_.__opaque[4] = 1026;
          *&buf[0].__m_.__opaque[6] = 426;
          *&buf[0].__m_.__opaque[10] = 2082;
          *&buf[0].__m_.__opaque[12] = "handleRequest";
          _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(v77, "assert");
        std::string::basic_string[abi:ne200100]<0>(v75, "handleRequest");
        std::string::basic_string[abi:ne200100]<0>(v73, "#gdm,Device has been destroyed");
        gpsd::util::triggerDiagnosticReport(v77, v75, v73);
        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        if (v76 < 0)
        {
          operator delete(v75[0]);
        }

        if (v78 < 0)
        {
          operator delete(v77[0]);
        }

        __assert_rtn("handleRequest", "GpsdGnssDeviceManager.cpp", 426, "false && #gdm,Device has been destroyed");
      }

      if (this[20].__m_.__opaque[33] == 1)
      {
        v19 = gnss::Exception::instance(IsValid);
        v20 = *&this[20].__m_.__opaque[36];
        gnss::Exception::set(v19, 7);
      }

      v33 = GpsdPreferences::instance(0);
      if (!GpsdPreferences::bigPowerSwitch(v33))
      {
        GpsdGnssDeviceManager::createDevice(this);
      }

      v34 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0].__m_.__sig) = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#gdm,#bps,ignore BUILD_DEVICE", buf, 2u);
      }

      v112 = 0;
      GnssHal::GpioEmbedded::GpioEmbedded(buf, v111);
      std::__function::__value_func<void ()(GnssHal::TimeTransferPulseMark)>::~__value_func[abi:ne200100](v111);
      GnssHal::GpioEmbedded::setResetLow(buf);
      std::function<void ()(gnss::Result)>::operator()(&v115, 1);
      GnssHal::GpioEmbedded::~GpioEmbedded(buf);
      goto LABEL_76;
    }

    goto LABEL_40;
  }

  if ((*(a2 + 399) & 4) != 0)
  {
    v32 = *(a2 + 26);
    if (!v32)
    {
      v32 = *(proto::gpsd::Request::default_instance_ + 208);
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v110, &v115);
    GpsdGnssDeviceManager::injectLtlInfo(this, v32, v110);
    v30 = v110;
    goto LABEL_53;
  }

LABEL_39:
  std::function<void ()(gnss::Result)>::operator()(&v115, 4);
LABEL_54:
  GpsdPerformanceSummary::appendRequest(this + 6, a2);
LABEL_76:
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&v115);
}

void sub_10000A67C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&STACK[0x9F0]);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 - 112);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

__n128 std::__function::__func<GpsdGnssDeviceManager::handleRequest(proto::gpsd::Request const&)::$_0,std::allocator<GpsdGnssDeviceManager::handleRequest(proto::gpsd::Request const&)::$_0>,void ()(gnss::Result)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_10017D6C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

BOOL proto::gpsd::Request_Type_IsValid(proto::gpsd *this)
{
  v1 = this;
  result = 1;
  if (v1 - 31 > 0x2D || ((1 << (v1 - 31)) & 0x3FFFE7F001FBLL) == 0)
  {
    return v1 < 0x1E;
  }

  return result;
}

void proto::gpsd::Request::~Request(proto::gpsd::Request *this)
{
  *this = off_100179C10;
  proto::gpsd::Request::SharedDtor(this);
  if (*(this + 44))
  {
    operator delete[]();
  }

  if (*(this + 41))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::Request::~Request(this);

  operator delete();
}

void *gpsd::util::GnssRepeatTimer::GnssRepeatTimer(void *a1, NSObject *a2, void *a3, double a4, double a5)
{
  v8 = gpsd::util::GnssTimer::GnssTimer(a1, a2, a3);
  *v8 = off_10017B580;
  v9 = v8[1];
  v10 = dispatch_time(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v9, v10, (a4 * 1000000000.0), (a5 * 1000000000.0));
  return a1;
}

void GpsdGnssDeviceManager::handleResponseHelper(uint64_t a1, proto::gpsd *this, unsigned int a3)
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
  v10 = *(a1 + 1304);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10, &v18);
  GpsdPerformanceSummary::appendResponse(a1 + 384, this, a3);
  v18 = off_100179C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(&v18);
}

void sub_10000AEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *proto::gpsd::Request::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[32];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (proto::gpsd::Request::default_instance_ != this)
  {
    v4 = this[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = v1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = v1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = v1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = v1[39];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v1[40];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v1[43];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v1[47];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    this = v1[48];
    if (this)
    {
      v42 = *(*this + 8);

      return v42();
    }
  }

  return this;
}

void proto::gpsd::SetConfigEnableGnssConstellations::~SetConfigEnableGnssConstellations(proto::gpsd::SetConfigEnableGnssConstellations *this)
{
  *this = off_10017A7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_10017A7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A7C8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t GpsdSessionMonitor::start(uint64_t this)
{
  if (!*(this + 16))
  {
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "GpsdSessionMonitor,takeOsTransaction", buf, 2u);
    }

    operator new();
  }

  return this;
}

gpsd::util::OsTransaction *gpsd::util::OsTransaction::OsTransaction(gpsd::util::OsTransaction *this, const char *a2)
{
  *this = 0;
  v3 = os_transaction_create();
  v4 = *this;
  *this = v3;

  return this;
}

id **std::unique_ptr<gpsd::util::OsTransaction>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;

    operator delete();
  }

  return result;
}

uint64_t GnssSessionTicks::notifyStart(uint64_t this)
{
  if (!*(this + 48))
  {
    v1 = this;
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "GpsdResourceWatcher, created timer", buf, 2u);
    }

    v3 = *(v1 + 32);
    if (v3)
    {
      (*(*v3 + 48))(v3);
      v4 = *(v1 + 56) * 0.001;
      operator new();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  return this;
}

void GpsdPerformanceSummary::appendResponse(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 824))
  {
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(a1);
    std::mutex::lock((a1 + 832));
    if (a3 == 1)
    {
      switch(a2)
      {
        case 8:
          if (*a1 && !*(a1 + 16))
          {
            *(a1 + 16) = MachContinuousTimeNs;
            GpsdPerformanceSummary::printNominalStartAssistanceStats(a1);
          }

          ++*(a1 + 56);
          break;
        case 9:
          if (*a1 && !*(a1 + 8))
          {
            *(a1 + 8) = MachContinuousTimeNs;
            GpsdPerformanceSummary::printNominalStartAssistanceStats(a1);
          }

          ++*(a1 + 52);
          break;
        case 10:
          if (*a1 && !*(a1 + 24))
          {
            *(a1 + 24) = MachContinuousTimeNs;
            GpsdPerformanceSummary::printNominalStartAssistanceStats(a1);
          }

          ++*(a1 + 40);
          break;
        case 11:
          ++*(a1 + 44);
          break;
        case 12:
          ++*(a1 + 48);
          break;
        case 14:
          ++*(a1 + 192);
          break;
        case 15:
          ++*(a1 + 196);
          break;
        case 16:
          ++*(a1 + 200);
          break;
        case 17:
          ++*(a1 + 204);
          break;
        case 18:
          ++*(a1 + 216);
          break;
        case 19:
          ++*(a1 + 220);
          break;
        case 20:
          ++*(a1 + 224);
          break;
        case 21:
          ++*(a1 + 208);
          break;
        case 22:
          ++*(a1 + 212);
          break;
        default:
          break;
      }
    }

    else
    {
      switch(a2)
      {
        case 8:
          ++*(a1 + 76);
          break;
        case 9:
          ++*(a1 + 72);
          break;
        case 10:
          ++*(a1 + 60);
          break;
        case 11:
          ++*(a1 + 64);
          break;
        case 12:
          ++*(a1 + 68);
          break;
        case 14:
          ++*(a1 + 228);
          break;
        case 15:
          ++*(a1 + 232);
          break;
        case 16:
          ++*(a1 + 236);
          break;
        case 17:
          ++*(a1 + 240);
          break;
        case 18:
          ++*(a1 + 252);
          break;
        case 19:
          ++*(a1 + 256);
          break;
        case 20:
          ++*(a1 + 260);
          break;
        case 21:
          ++*(a1 + 244);
          break;
        case 22:
          ++*(a1 + 248);
          break;
        default:
          break;
      }
    }

    std::mutex::unlock((a1 + 832));
  }
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](uint64_t a1)
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

void GpsdPerformanceSummary::appendRequest(std::mutex *this, const proto::gpsd::Request *a2)
{
  v2 = *(a2 + 5);
  if (*&this[12].__m_.__opaque[48])
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 1;
  }

  if (v3)
  {
    if (v2 <= 8)
    {
      switch(v2)
      {
        case 1:
          v6 = this + 13;
          std::mutex::lock(this + 13);
          GpsdPerformanceSummary::onStart(this);
          break;
        case 2:
          v6 = this + 13;
          std::mutex::lock(this + 13);
          GpsdPerformanceSummary::onStop(this);
          break;
        case 8:
          v6 = this + 13;
          std::mutex::lock(this + 13);
          v8 = *(a2 + 3);
          if (!v8)
          {
            v8 = *(proto::gpsd::Request::default_instance_ + 24);
          }

          GpsdPerformanceSummary::analyzeCpi(this, v8);
          break;
        default:
          return;
      }
    }

    else if (v2 > 10)
    {
      if (v2 == 11)
      {
        v6 = this + 13;
        std::mutex::lock(this + 13);
        v13 = *(a2 + 16);
        if (!v13)
        {
          v13 = *(proto::gpsd::Request::default_instance_ + 128);
        }

        GpsdPerformanceSummary::analyzeRti(this, v13);
      }

      else
      {
        if (v2 != 16)
        {
          return;
        }

        v6 = this + 13;
        std::mutex::lock(this + 13);
        v9 = *(a2 + 8);
        if (!v9)
        {
          v9 = *(proto::gpsd::Request::default_instance_ + 64);
        }

        GpsdPerformanceSummary::analyzeDem(this, v9);
      }
    }

    else if (v2 == 9)
    {
      v6 = this + 13;
      std::mutex::lock(this + 13);
      v10 = *(a2 + 4);
      if (!v10)
      {
        v10 = *(proto::gpsd::Request::default_instance_ + 32);
      }

      if (!*&this[1].__m_.__opaque[48])
      {
        v11 = v10[1];
        *&this[1].__m_.__opaque[40] = v10[3];
        *&this[1].__m_.__opaque[48] = v11;
        v12 = v10[2] * 0.000001;
        *&this[2].__m_.__sig = v12;
      }
    }

    else
    {
      v6 = this + 13;
      std::mutex::lock(this + 13);
      v7 = *(a2 + 15);
      if (!v7)
      {
        v7 = *(proto::gpsd::Request::default_instance_ + 120);
      }

      GpsdPerformanceSummary::analyzeEe(this, v7);
    }

    std::mutex::unlock(v6);
  }
}

uint64_t GpsdSessionHandlerManager::instance(GpsdSessionHandlerManager *this)
{
  result = GpsdSessionHandlerManager::fInstance;
  if (!GpsdSessionHandlerManager::fInstance)
  {
    if (GpsdSessionHandlerManager::instance(void)::pred != -1)
    {
      dispatch_once(&GpsdSessionHandlerManager::instance(void)::pred, &__block_literal_global_1);
    }

    return GpsdSessionHandlerManager::fInstance;
  }

  return result;
}

void std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  operator delete();
}

void GpsdGnssDeviceRequestQueue::popRequest(GpsdGnssDeviceRequestQueue *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v3 = GpsdLogObjectGeneral;
    if (*(this + 8) == 1)
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v9 = 134349056;
        v10 = v1;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#router,pop,pendingResponse,numInQueue,%{public}zu", &v9, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v9 = 134349056;
        v10 = v1;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#router,pop,request,numInQueue,%{public}zu", &v9, 0xCu);
      }

      GpsdGnssDeviceRequestQueue::sendRequestToDevice(this, *(*(this + 4) + 8 * (*(this + 7) / 0xAAuLL)) + 24 * (*(this + 7) % 0xAAuLL));
      v4 = *(this + 7);
      v5 = *(*(this + 4) + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA);
      v6 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v6;
        operator delete(v6);
        v4 = *(this + 7);
      }

      v7 = *(this + 8) - 1;
      v8 = v4 + 1;
      *(this + 7) = v8;
      *(this + 8) = v7;
      if (v8 >= 0x154)
      {
        operator delete(**(this + 4));
        *(this + 4) += 8;
        *(this + 7) -= 170;
      }
    }
  }
}

void *gpsd::util::GnssTimer::GnssTimer(void *a1, dispatch_queue_t queue, void *a3)
{
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  *a1 = off_10017BD30;
  a1[1] = v5;
  gpsd::util::DispatchSource::setupHandler(a1, a3);
  *a1 = off_100171AB8;
  return a1;
}

void gpsd::util::DispatchSource::setupHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  if (!v4)
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "DispatchSource,setupHandler,nullptr", buf, 2u);
      v7 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtilObjc.mm";
      v16 = 1026;
      v17 = 126;
      v18 = 2082;
      v19 = "setupHandler";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(v12, "assert");
    std::string::basic_string[abi:ne200100]<0>(v10, "setupHandler");
    std::string::basic_string[abi:ne200100]<0>(__p, "DispatchSource,setupHandler,nullptr");
    gpsd::util::triggerDiagnosticReport(v12, v10, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    __assert_rtn("setupHandler", "GpsdUtilObjc.mm", 126, "false && DispatchSource,setupHandler,nullptr");
  }

  dispatch_source_set_event_handler(v4, v3);
  dispatch_resume(*(a1 + 8));
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 8);
    *buf = 134349056;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DispatchSource,setupHandler,%{public}p", buf, 0xCu);
  }
}

void sub_10000C578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t gnss::Convert::toProtobuf(unsigned int a1)
{
  if (a1 < 9)
  {
    return dword_100145DB4[a1];
  }

  v3 = GpsdLogObjectGeneral;
  if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    return 8;
  }

  v5[0] = 67109120;
  v5[1] = a1;
  v2 = 8;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unhandled gnss::Result enum %d", v5, 8u);
  return v2;
}

{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  v3 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for gnss::PositionAssistType", v4, 8u);
    return 0;
  }

  return result;
}

void GpsdGnssDeviceRequestQueue::handleResponse(GpsdGnssDeviceRequestQueue *this, const proto::gpsd::Response *a2)
{
  checkResponseFailure(a2);
  GpsdGnssDeviceRequestQueue::checkResponseDelay(this, a2);
  if (*(this + 8) == 1)
  {
    *(this + 8) = 0;
  }

  GpsdGnssDeviceRequestQueue::popRequest(this);
}

void GpsdGnssDeviceRequestQueue::checkResponseDelay(GpsdGnssDeviceRequestQueue *this, const proto::gpsd::Response *a2)
{
  v2 = *(a2 + 4);
  if (*(this + 8))
  {
    v4 = *(a2 + 1) - 1000000 * *this;
    if ((v2 & 0xFFFFFFFE) != 0xE)
    {
      v5 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v11 = buf;
        ProtobufUtil::stringify(v2, buf);
        if (v19 < 0)
        {
          v11 = *buf;
        }

        v12 = gnss::Convert::fromProtobuf(*(a2 + 5));
        gnss::stringify(v12, v14);
        if (v15 >= 0)
        {
          v13 = v14;
        }

        else
        {
          v13 = v14[0];
        }

        *__p = 136446722;
        *&__p[4] = v11;
        v21 = 2082;
        v22 = v13;
        v23 = 2050;
        v24 = v4;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#router,response,%{public}s,results,%{public}s,delay,%{public}llu,ns", __p, 0x20u);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        if (v19 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (v4 >= 200000001)
    {
      if (v4 >= 0x2540BE401)
      {
        v6 = GpsdLogObjectGeneral;
        if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        ProtobufUtil::stringify(v2, __p);
        if (v23 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = *__p;
        }

        *buf = 134349314;
        *&buf[4] = v4 * 0.000001;
        v17 = 2082;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#router,excessive request-response delay,%{public}.2f,ms,%{public}s", buf, 0x16u);
        goto LABEL_22;
      }

      if (v2 > 0x33 || ((0x7FFFBFFFFFFFDuLL >> v2) & 1) != 0 || v4 >= 0xB2D05E01)
      {
        v9 = GpsdLogObjectWarning;
        if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          ProtobufUtil::stringify(v2, __p);
          if (v23 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = *__p;
          }

          *buf = 134349314;
          *&buf[4] = v4 * 0.000001;
          v17 = 2082;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#router,excessive request-response delay,%{public}.2f,ms,%{public}s", buf, 0x16u);
LABEL_22:
          if (SHIBYTE(v23) < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *__p = 67240192;
      *&__p[4] = v2;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#router,response,fRequestPendingResponse,false,type,%{public}d", __p, 8u);
    }
  }
}

void checkResponseFailure(const proto::gpsd::Response *a1)
{
  v1 = *(a1 + 5);
  if (v1 != 1)
  {
    v2 = *(a1 + 4);
    if (v2 > 0x33 || ((1 << v2) & 0x8000400000006) == 0)
    {
      v7 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      ProtobufUtil::stringify(v2, __p);
      if (v17 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = gnss::Convert::fromProtobuf(v1);
      gnss::stringify(v9, v14);
      if (v15 >= 0)
      {
        v10 = v14;
      }

      else
      {
        v10 = v14[0];
      }

      *buf = 136446466;
      v19 = v8;
      v20 = 2082;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#router,#warning,request,failed,%{public}s,%{public}s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    else
    {
      v4 = GpsdLogObjectGeneral;
      v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT);
      if (v5)
      {
        ProtobufUtil::stringify(v2, __p);
        if (v17 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = gnss::Convert::fromProtobuf(v1);
        gnss::stringify(v12, v14);
        if (v15 >= 0)
        {
          v13 = v14;
        }

        else
        {
          v13 = v14[0];
        }

        *buf = 136446466;
        v19 = v11;
        v20 = 2082;
        v21 = v13;
        _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "#router,request,failed,%{public}s,%{public}s", buf, 0x16u);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = GpsdRuntime::instance(v5);
      std::string::basic_string[abi:ne200100]<0>(__p, "ResponseFailure");
      GpsdRuntime::bounceExit(v6, __p);
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10000CD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GpsdGnssDeviceManager::handleRegularStartRequest(GpsdGnssDeviceManager *this, const proto::gpsd::Request *a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#gdm,start,initiated", v13, 2u);
  }

  if (*(this + 1328) == 1)
  {
    v5 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#gdm,Device was already started", v13, 2u);
    }

    v6 = *(this + 47);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___ZN21GpsdGnssDeviceManager14handleResponseEN5proto4gpsd12Request_TypeEN4gnss6ResultE_block_invoke;
    v13[3] = &__block_descriptor_tmp_46;
    v13[4] = this;
    v13[5] = 0x100000001;
    dispatch_async(v6, v13);
  }

  else
  {
    *(this + 1328) = 1;
    if (*(this + 272) == 1)
    {
      *(this + 272) = 0;
    }

    if (*(this + 167))
    {
      v7 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#gdm,start,Overlap with previous stop timer", v13, 2u);
      }

      GpsdGnssDeviceManager::handleStopCompletedTimer(this);
      *(this + 333) = 7;
    }

    v8 = GpsdPreferences::instance(0);
    GpsdPreferences::dumpSettingsToLog(v8);
    *(this + 184) = 0;
    *(this + 168) = 0u;
    *(this + 152) = 0u;
    if ((*(a2 + 399) & 8) != 0)
    {
      v10 = *(a2 + 27);
      if (!v10)
      {
        v10 = *(proto::gpsd::Request::default_instance_ + 216);
      }

      *(this + 248) = *(v10 + 18);
      v9 = *(v10 + 19);
    }

    else
    {
      v9 = 0;
      *(this + 248) = 0;
    }

    *(this + 249) = v9 & 1;
    v11 = *(this + 2);
    v12 = GpsdGnssDeviceManager::decodeCoexConfig(this, a2);
    v15[0] = off_10017DA60;
    v15[1] = this;
    v15[3] = v15;
    v14[0] = off_10017DB00;
    v14[1] = this;
    v14[3] = v14;
    (*(*v11 + 48))(v11, v12, v15, v14);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
  }
}

void sub_10000D004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8 - 72);
  _Unwind_Resume(a1);
}

void GpsdPreferences::dumpSettingsToLog(GpsdPreferences *this)
{
  v1 = GpsdLogObjectGeneral;
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    *buf = 134349056;
    v20 = gpsd::util::getMachContinuousTimeNs(v2) * 0.000000001;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#version,CoreGPS-328.0.1,machContSec,%{public}.3f,BuildTime,{Oct 10 2025,21:36:42}", buf, 0xCu);
  }

  v14 = [fDefaults dictionaryRepresentation];
  v3 = [v14 allKeys];
  v4 = [v3 sortedArrayUsingSelector:"compare:"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v8 = *v16;
    *&v7 = 138543618;
    v13 = v7;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 isEqualToString:{@"AppleLanguages", v13}] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"NSLanguages") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"NSInterfaceStyle") & 1) == 0)
        {
          v11 = [v14 objectForKeyedSubscript:v10];
          v12 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
          {
            *buf = v13;
            v20 = *&v10;
            v21 = 2114;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Pref: %{public}@ = %{public}@", buf, 0x16u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_1,std::allocator<GpsdGnssDeviceManager::handleRegularStartRequest(proto::gpsd::Request const&)::$_1>,void ()(gnss::Result)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017DB00;
  a2[1] = v2;
  return result;
}

id GnssHal::ExtensionsFireImpl::debugFeaturesBitmask(GnssHal::ExtensionsFireImpl *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::debugFeaturesBitmask(v1);
}

id GpsdPreferences::debugFeaturesBitmask(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"DebugFeaturesBitmask"];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134349056;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "debugFeaturesBitmask,0x%{public}llx", &v4, 0xCu);
  }

  return v1;
}

uint64_t GnssHal::CommSpi::open(GnssHal::CommSpi *this)
{
  if ((*(*this + 32))(this))
  {
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#spi,open,alreadyOpen", &v7, 2u);
    }
  }

  else
  {
    v3 = *(this + 6);
    if (v3 && (v4 = *(this + 14)) != 0)
    {
      v5 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        v7 = 134349312;
        v8 = v3;
        v9 = 2050;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#spi,open,existing,plugin,%{public}p,ifc,%{public}p", &v7, 0x16u);
      }
    }

    else
    {
      GnssHal::CommSpi::createIoPlugin(this);
    }

    GnssHal::CommSpi::setGnssChipPowerStateOn(this, 0);
    GnssHal::CommSpi::setGnssChipPowerStateOn(this, 1);
    *(this + 42) = 1;
  }

  return 1;
}

void GpsdAssistanceSeeding::injectSeeding(GpsdAssistanceSeeding *this)
{
  v2 = *(this + 4);
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
  v9 = &__block_descriptor_tmp_15;
  v10 = this;
  v11 = 0x60000000ALL;
  dispatch_async(v2, &v6);
  v3 = *(this + 4);
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
  v9 = &__block_descriptor_tmp_15;
  v10 = this;
  v11 = 0x50000000ALL;
  dispatch_async(v3, &v6);
  v4 = *(this + 4);
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
  v9 = &__block_descriptor_tmp_15;
  v10 = this;
  v11 = 11;
  dispatch_async(v4, &v6);
  v5 = *(this + 4);
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = ___ZN21GpsdAssistanceSeeding18sendAssistanceFileEN5proto4gpsd12Request_TypeEN3CLP8LogEntry11PrivateData16SvPositionSourceE_block_invoke;
  v9 = &__block_descriptor_tmp_15;
  v10 = this;
  v11 = 39;
  dispatch_async(v5, &v6);
}

uint64_t proto::gpsd::StartContext::MergePartialFromCodedStream(proto::gpsd::StartContext *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v25 = 0;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 16) = v14 != 0;
        *(this + 6) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 17) = v16 != 0;
          *(this + 6) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 18) = v18 != 0;
            *(this + 6) |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(a2 + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_48:
      if (v12 >= v8 || (v20 = *v12, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 6) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        v25 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 19) = v22 != 0;
        *(this + 6) |= 0x10u;
        if (v23 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

unint64_t GpsdGnssDeviceManager::decodeCoexConfig(GpsdGnssDeviceManager *this, const proto::gpsd::Request *a2)
{
  v4 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x19;
  if (!v5 && v6 != 0)
  {
    v8 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
    v5 = v8 > 4;
    v9 = (1 << v8) & 0x19;
    if (v5 || v9 == 0)
    {
      v14 = 0;
      v13 = 0;
    }

    else
    {
      if ((*(a2 + 399) & 8) == 0)
      {
        goto LABEL_16;
      }

      v11 = *(a2 + 27);
      if (!v11)
      {
        v11 = *(proto::gpsd::Request::default_instance_ + 216);
      }

      if (*(v11 + 16) == 1)
      {
        v12 = GpsdPreferences::instance(0);
        if (GpsdPreferences::useB14LteFilterSettingsForB13(v12))
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
LABEL_16:
        v13 = 0;
      }

      v14 = *(this + 248);
    }

    v18 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return v13 | (v14 << 32);
    }

    v22 = 134349824;
    v19 = v13 | (v14 << 32);
    v23 = v19;
    v24 = 1026;
    v25 = v13;
    v26 = 1026;
    v27 = 0;
    v28 = 1026;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#gdm,decodeCoexConfig,#coexConfig,0x%{public}lluX,lte,%{public}d,blanking,%{public}d,bitMask,%{public}uX", &v22, 0x1Eu);
    return v19;
  }

  if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) > 1)
  {
    return 0;
  }

  if ((*(a2 + 399) & 8) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(a2 + 27);
  if (!v15)
  {
    v15 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  if ((*(v15 + 24) & 8) != 0)
  {
    v16 = *(v15 + 8);
    v17 = 1;
  }

  else
  {
LABEL_23:
    v16 = 0;
    v17 = 0;
  }

  v21 = GpsdPreferences::instance(0);

  return GpsdPreferences::determineLibindusFinalCoExConfig(v21, v16, v17);
}

uint64_t GnssHal::PlatformLog::log(uint64_t a1, unsigned int a2, std::string *a3)
{
  v6 = *(a1 + 2 * a2 + 48);
  if ((v6 & 0x100) != 0)
  {
    v7 = GpsdLogObjectDevice;
    if (os_log_type_enabled(GpsdLogObjectDevice, v6))
    {
      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136642819;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, v6, "%{sensitive}s", buf, 0xCu);
    }
  }

  v13[0] = off_100172F18;
  v13[1] = a3;
  v13[3] = v13;
  GnssHal::PlatformLog::outOfLevelWarning(a1, a2, v13);
  result = std::__function::__value_func<char const* ()(void)>::~__value_func[abi:ne200100](v13);
  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v11 = size;
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    result = *(a1 + 32);
    if (result)
    {
      if (v11 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = a3->__r_.__value_.__r.__words[0];
      }

      if (v12->__r_.__value_.__s.__data_[size - 1] != 10)
      {
        std::string::push_back(a3, 10);
        result = *(a1 + 32);
      }

      return (*(*result + 16))(result, a3);
    }
  }

  return result;
}

void GnssHal::PlatformLog::outOfLevelWarning(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 9)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if (((*(a1 + 40) >> a2) & 1) == 0)
  {
    v4 = GnssHal::PlatformLog::outOfLevelWarning(GnssHal::LogLevel,std::function<char const* ()(void)>)::levelWarningCount;
    if (GnssHal::PlatformLog::outOfLevelWarning(GnssHal::LogLevel,std::function<char const* ()(void)>)::levelWarningCount <= 0xA)
    {
      v6 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 67240448;
        LODWORD(v11[0]) = v4;
        WORD2(v11[0]) = 1026;
        *(v11 + 6) = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "VendorLogger,outOfLevel,count,%{public}d,level,%{public}d", &v10, 0xEu);
      }

      v7 = *(a3 + 24);
      if (v7)
      {
        v8 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
        {
          v9 = (*(*v7 + 48))(v7);
          v10 = 136642819;
          v11[0] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "VendorLogger,outOfLevel,content,%{sensitive}s", &v10, 0xCu);
        }
      }

      ++GnssHal::PlatformLog::outOfLevelWarning(GnssHal::LogLevel,std::function<char const* ()(void)>)::levelWarningCount;
    }
  }
}

uint64_t std::__function::__value_func<char const* ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void GnssHal::CommSpi::setGnssChipPowerStateOn(GnssHal::CommSpi *this, int a2)
{
  if (GnssHal::CommSpi::isGnssChipPowerStateOn(this) == a2)
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *v14 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#spi,setGnssChipPowerStateOn,alreadyInState,%{public}d", buf, 8u);
    }
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = (*(**(this + 14) + 96))(*(this + 14), v5);
  v7 = GpsdLogObjectGeneral;
  if (v6)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v9 = mach_error_string(v6);
      *buf = 67240450;
      *v14 = v6;
      *&v14[4] = 2082;
      *&v14[6] = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,SetPowerState,errCode,0x%{public}X,%{public}s", buf, 0x12u);
      v7 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v14 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v14[8] = 1026;
      *&v14[10] = 61;
      v15 = 2082;
      v16 = "setGnssChipPowerStateOn";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v12, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v11, "setGnssChipPowerStateOn");
    std::string::basic_string[abi:ne200100]<0>(&v10, "#spi,fail,gpti,SetPowerState,errCode,0x%{public}X,%{public}s");
    gpsd::util::triggerDiagnosticReport(&v12, &v11, &v10);
    std::string::~string(&v10);
    std::string::~string(&v11);
    std::string::~string(&v12);
    __assert_rtn("setGnssChipPowerStateOn", "GnssHalCommSpi.cpp", 61, "false && #spi,fail, gpti, SetPowerState ,errCode,0x%{public}X,%{public}s");
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    *v14 = a2;
    *&v14[4] = 1026;
    *&v14[6] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#spi,setGnssChipPowerStateOn,enable,%{public}d,set,%{public}d", buf, 0xEu);
  }

  if (GnssHal::CommSpi::isGnssChipPowerStateOn(this) != a2)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#spi,setGnssChipPowerStateOn,failed", buf, 2u);
    }
  }
}

void sub_10000E2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

BOOL GnssHal::CommSpi::isGnssChipPowerStateOn(GnssHal::CommSpi *this)
{
  v8 = 0;
  v1 = (*(**(this + 14) + 104))(*(this + 14), &v8);
  v2 = GpsdLogObjectGeneral;
  if (v1)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4 = mach_error_string(v1);
      *buf = 67240450;
      *v10 = v1;
      *&v10[4] = 2082;
      *&v10[6] = v4;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "#spi,fail,gpti,GetGnssChipPowerState,errCode,0x%{public}X,%{public}s", buf, 0x12u);
      v2 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v10 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/HAL/Implementation/GnssHalCommSpi.cpp";
      *&v10[8] = 1026;
      *&v10[10] = 71;
      v11 = 2082;
      v12 = "isGnssChipPowerStateOn";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v7, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v6, "isGnssChipPowerStateOn");
    std::string::basic_string[abi:ne200100]<0>(&v5, "#spi,fail,gpti,GetGnssChipPowerState,errCode,0x%{public}X,%{public}s");
    gpsd::util::triggerDiagnosticReport(&v7, &v6, &v5);
    std::string::~string(&v5);
    std::string::~string(&v6);
    std::string::~string(&v7);
    __assert_rtn("isGnssChipPowerStateOn", "GnssHalCommSpi.cpp", 71, "false && #spi,fail, gpti, GetGnssChipPowerState ,errCode,0x%{public}X,%{public}s");
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *v10 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#spi,GetGnssChipPowerState,%{public}d", buf, 8u);
  }

  return v8 == 2;
}

void sub_10000E514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  _Unwind_Resume(exception_object);
}

void GpsdAssistanceSeeding::createAssistanceFileProto(uint64_t a1, proto::gpsd *a2, unsigned int a3)
{
  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    ProtobufUtil::stringify(a2, &__p);
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#gnssseeding,createAssistanceFileProto,requestType,%{public}s", &buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  memset(&buf, 0, sizeof(buf));
  switch(a2)
  {
    case 0x27:
      GpsdAssistanceSeeding::getRavenOrbitFilePath(a1, &__p);
      break;
    case 0xB:
      GpsdAssistanceSeeding::getRTIFilePath(a1, &__p);
      break;
    case 0xA:
      GpsdAssistanceSeeding::getAssistanceFilePath(a3, *(a1 + 40), &__p);
      break;
    default:
      goto LABEL_72;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  buf = __p;
  memset(&v23, 0, sizeof(v23));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (p_buf < &v23 || (&v23.__r_.__value_.__l.__data_ + 1) <= p_buf)
    {
      if (size < 0x17)
      {
        v10 = &v23;
      }

      else
      {
        v10 = &v23;
        std::string::__grow_by(&v23, 0x16uLL, size - 22, 0, 0, 0, 0);
        v23.__r_.__value_.__l.__size_ = 0;
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = v23.__r_.__value_.__r.__words[0];
        }
      }

      memmove(v10, p_buf, size);
      v10->__r_.__value_.__s.__data_[size] = 0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        v23.__r_.__value_.__l.__size_ = size;
      }

      else
      {
        *(&v23.__r_.__value_.__s + 23) = size & 0x7F;
      }
    }

    else
    {
      if (size >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (size > 0x16)
      {
        operator new();
      }

      *(&__p.__r_.__value_.__s + 23) = size;
      memcpy(&__p, p_buf, size);
      __p.__r_.__value_.__s.__data_[size] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v23, p_p, v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  std::__fs::filesystem::__status(&v23, 0);
  v13 = __p.__r_.__value_.__s.__data_[0];
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v13 != 255 && v13)
  {
    __p.__r_.__value_.__r.__words[0] = off_100179C10;
    v45 = 0;
    v46 = 0;
    v49 = 0;
    v54 = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v40 = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
    v47 = 0;
    v48 = 0;
    v50 = 0;
    v55 = 0;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    IsValid = proto::gpsd::Request_Type_IsValid(a2);
    if (!IsValid)
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    LODWORD(v55) = 4;
    HIDWORD(__p.__r_.__value_.__r.__words[2]) = a2;
    MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(IsValid);
    v18 = v55;
    LODWORD(v55) = v55 | 1;
    __p.__r_.__value_.__l.__size_ = MachContinuousTimeNs;
    if (a2 == 10)
    {
      LODWORD(v55) = v18 | 0x8001;
      v20 = v31;
      if (!v31)
      {
        operator new();
      }

      if (a3 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GpsdProtocol.pb.h", 9184, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      v21 = *(v31 + 28);
      *(v31 + 16) = 1;
      *(v20 + 20) = a3;
      *(v20 + 28) = v21 | 7;
      v19 = *(v20 + 8);
      if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }
    }

    else if (a2 == 11)
    {
      LODWORD(v55) = v18 | 0x10001;
      if (!*(&v31 + 1))
      {
        operator new();
      }

      v19 = *(*(&v31 + 1) + 8);
      *(*(&v31 + 1) + 20) |= 1u;
      if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }
    }

    else
    {
      LODWORD(v55) = v18 | 0x40000001;
      if (!*(&v38 + 1))
      {
        operator new();
      }

      v19 = *(*(&v38 + 1) + 8);
      *(*(&v38 + 1) + 20) |= 1u;
      if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }
    }

    std::string::operator=(v19, &buf);
    v22 = *(a1 + 24);
    if (!v22)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v22 + 48))(v22, &__p);
    proto::gpsd::Request::~Request(&__p);
  }

  else
  {
    v14 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
      *(__p.__r_.__value_.__r.__words + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#gnssseeding,createAssistanceFileProto,file,%{public}s,doesn't exist", &__p, 0xCu);
    }
  }

LABEL_72:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_10000EC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  proto::gpsd::Request::~Request(&__p);
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(a1);
}

void GnssEmergencyManager::handleRemoteRequest(gpsd::util *a1, int a2, void *a3)
{
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(a1);
  v7 = (a2 - 34);
  if (v7 <= 0x2A)
  {
    if (((1 << (a2 - 34)) & 0x64C701E0001) != 0)
    {
      return;
    }

    if (v7 == 21)
    {
      v8 = 1;
      goto LABEL_7;
    }

    if (v7 == 22)
    {
      v8 = 0;
LABEL_7:
      *(a1 + 72) = v8;
    }
  }

  v9 = [NSData dataWithBytes:*a3 length:a3[1] - *a3];
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v11 = a3[1] - *a3;
    v12 = 134349056;
    v13 = v11;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#gem,handleRemoteRequest,length,%{public}zu", &v12, 0xCu);
  }

  [fExternGem handleRemoteRequest:v9 machconttimens:MachContinuousTimeNs];
}

void ProtobufUtil::stringify(int __val@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = "START";
  switch(__val)
  {
    case 0:
      v4 = "PROTO_DEFAULT";
      goto LABEL_63;
    case 1:
      goto LABEL_63;
    case 2:
      v4 = "STOP";
      goto LABEL_63;
    case 3:
      v4 = "RESET";
      goto LABEL_63;
    case 4:
      v4 = "CLEAR";
      goto LABEL_63;
    case 5:
      v4 = "DELETE_GNSS_DATA";
      goto LABEL_63;
    case 6:
      v4 = "SET_PVTM_REPORT";
      goto LABEL_63;
    case 7:
      v4 = "SET_NMEA_HANDLER";
      goto LABEL_63;
    case 8:
      v4 = "INJECT_ASSISTANCE_POSITION";
      goto LABEL_63;
    case 9:
      v4 = "INJECT_ASSISTANCE_TIME";
      goto LABEL_63;
    case 10:
      v4 = "INJECT_ASSISTANCE_FILE";
      goto LABEL_63;
    case 11:
      v4 = "INJECT_RTI_FILE";
      goto LABEL_63;
    case 12:
      v4 = "INJECT_SVID_BLOCKLIST";
      goto LABEL_63;
    case 13:
      v4 = "SET_ASSISTANCE_PRESSURE";
      goto LABEL_63;
    case 14:
      v4 = "SET_ASSISTANCE_ACCEL";
      goto LABEL_63;
    case 15:
      v4 = "SET_ASSISTANCE_GYRO";
      goto LABEL_63;
    case 16:
      v4 = "SET_ASSISTANCE_DEM";
      goto LABEL_63;
    case 17:
      v4 = "SET_ASSISTANCE_MAP_VECTOR";
      goto LABEL_63;
    case 18:
      v4 = "SET_ASSISTANCE_MOTION_ACTIVITY_CONTEXT";
      goto LABEL_63;
    case 19:
      v4 = "SET_ASSISTANCE_MOUNT_STATE";
      goto LABEL_63;
    case 20:
      v4 = "SET_ASSISTANCE_SIGNAL_ENVIRONMENT";
      goto LABEL_63;
    case 21:
      v4 = "SET_ASSISTANCE_SPEED_CONSTRAINT";
      goto LABEL_63;
    case 22:
      v4 = "SET_ASSISTANCE_ALONG_TRACK_VELOCITY";
      goto LABEL_63;
    case 23:
      v4 = "SET_POWER_REPORT";
      goto LABEL_63;
    case 24:
      v4 = "SET_CONFIG_SIMULATOR_MODE";
      goto LABEL_63;
    case 25:
      v4 = "SET_CONFIG_ENABLE_GNSS_CONSTELLATIONS";
      goto LABEL_63;
    case 26:
      v4 = "SET_CONFIG_DUTY_CYCLING";
      goto LABEL_63;
    case 27:
      v4 = "SET_TIME_TRANSFER_PULSE";
      goto LABEL_63;
    case 28:
      v4 = "CLEAN_TIME_TRANSFER_PULSE";
      goto LABEL_63;
    case 29:
      v4 = "INJECT_LTL_INFO";
      goto LABEL_63;
    case 31:
      v4 = "SET_THERMAL_RISK_STATE";
      goto LABEL_63;
    case 32:
      v4 = "PING";
      goto LABEL_63;
    case 34:
      v4 = "BUILD_DEVICE";
      goto LABEL_63;
    case 35:
      v4 = "TERMINATION_IMMINENT";
      goto LABEL_63;
    case 36:
      v4 = "EXIT";
      goto LABEL_63;
    case 37:
      v4 = "FORCE_CLEAR_ALL_NV";
      goto LABEL_63;
    case 38:
      v4 = "SET_CONFIG_RF_BAND_ENABLE";
      goto LABEL_63;
    case 39:
      v4 = "INJECT_RAVEN_ORBIT_FILE";
      goto LABEL_63;
    case 51:
      v4 = "START_EMERGENCY_PREEMPTIVE_SESSION";
      goto LABEL_63;
    case 52:
      v4 = "STOP_EMERGENCY_PREEMPTIVE_SESSION";
      goto LABEL_63;
    case 53:
      v4 = "SET_EMERGENCY_CONFIG";
      goto LABEL_63;
    case 54:
      v4 = "SET_EMERGENCY_SESSION_SUMMARY_REPORT";
      goto LABEL_63;
    case 55:
      v4 = "ENTER_EMERGENCY_MODE";
      goto LABEL_63;
    case 56:
      v4 = "EXIT_EMERGENCY_MODE";
      goto LABEL_63;
    case 57:
      v4 = "GEM_PROTOCOL_REQUEST";
      goto LABEL_63;
    case 60:
      v4 = "START_EMERGENCY_POSITION";
      goto LABEL_63;
    case 61:
      v4 = "STOP_EMERGENCY_POSITION";
      goto LABEL_63;
    case 62:
      v4 = "SET_EMERGENCY_POSITION_REPORT";
      goto LABEL_63;
    case 63:
      v4 = "SET_EMERGENCY_MEASUREMENT_REPORT";
      goto LABEL_63;
    case 64:
      v4 = "SET_NW_ASSISTANCE_NEEDED_REPORT";
      goto LABEL_63;
    case 65:
      v4 = "SET_NW_ASSISTANCE_GPS_REF_TIME";
      goto LABEL_63;
    case 66:
      v4 = "SET_NW_ASSISTANCE_REF_POSITION";
      goto LABEL_63;
    case 67:
      v4 = "SET_NW_ASSISTANCE_GPS_EPHEMERIS";
      goto LABEL_63;
    case 68:
      v4 = "SET_NW_ASSISTANCE_GPS_ACQUISITION";
      goto LABEL_63;
    case 69:
      v4 = "INJECT_FT_ASSISTANCE";
      goto LABEL_63;
    case 70:
      v4 = "DECODE_SUPL_INIT";
      goto LABEL_63;
    case 71:
      v4 = "SET_SUPL_INIT";
      goto LABEL_63;
    case 72:
      v4 = "SET_SUPL_LOCATIONID_NEEDED_REPORT";
      goto LABEL_63;
    case 73:
      v4 = "SET_SUPL_LOCATIONID";
      goto LABEL_63;
    case 74:
      v4 = "ABORT_SUPL_SESSION";
      goto LABEL_63;
    case 75:
      v4 = "SET_SUPL_SESSION_STATUS_REPORT";
      goto LABEL_63;
    case 76:
      v4 = "SET_SUPL_WLAN_MEAS";
LABEL_63:
      std::string::assign(a2, v4);
      v5 = *(a2 + 23);
      if (*(a2 + 23) < 0)
      {
        v5 = *(a2 + 8);
      }

      if (!v5)
      {
        goto LABEL_66;
      }

      return;
    default:
LABEL_66:
      std::to_string(&__p, __val);
      v6 = std::string::insert(&__p, 0, "unknown_");
      v7 = v6->__r_.__value_.__r.__words[0];
      v11[0] = v6->__r_.__value_.__l.__size_;
      *(v11 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
      v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v9 = v11[0];
      *a2 = v7;
      *(a2 + 8) = v9;
      *(a2 + 15) = *(v11 + 7);
      *(a2 + 23) = v8;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
  }
}

void sub_10000F238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t ___ZN7GnssHal13PlatformTimer4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 40);
  *(v1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void GpsdGnssDeviceManager::createPvtmWatchdogTimer(GpsdGnssDeviceManager *this)
{
  if (!*(this + 170))
  {
    *(this + 1345) = 0;
    v3 = GpsdPreferences::instance(0);
    v4 = _NSConcreteStackBlock;
    v5 = 0x40000000;
    v6 = ___ZN21GpsdGnssDeviceManager23createPvtmWatchdogTimerEv_block_invoke;
    v7 = &__block_descriptor_tmp_22;
    v8 = this;
    PvtmTimeOut = GpsdPreferences::getPvtmTimeOut(v3);
    operator new();
  }

  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Nested pvtm watchdog", buf, 2u);
  }
}

uint64_t proto::gpsd::InjectAssistanceFile::MergePartialFromCodedStream(proto::gpsd::InjectAssistanceFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_18:
        v19 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
          if (!result)
          {
            return result;
          }

          v13 = v19;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v13 <= 2)
        {
          *(this + 7) |= 2u;
          *(this + 4) = v13;
        }

        v16 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v16 < v14 && *v16 == 24)
        {
          v15 = v16 + 1;
          *(a2 + 1) = v15;
LABEL_33:
          v18 = 0;
          if (v15 >= v14 || (v17 = *v15, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
            if (!result)
            {
              return result;
            }

            v17 = v18;
          }

          else
          {
            *(a2 + 1) = v15 + 1;
          }

          if (v17 <= 6)
          {
            *(this + 7) |= 4u;
            *(this + 5) = v17;
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

      else
      {
        if (v7 != 1 || v8 != 2)
        {
          goto LABEL_22;
        }

        *(this + 7) |= 1u;
        if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 16)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_18;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      goto LABEL_33;
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

void GpsdGnssDeviceManager::injectAssistanceFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1328) & 1) != 0 || (v6 = *(a1 + 1312)) != 0 && ((*(v6 + 72) & 1) != 0 || (*(v6 + 73)))
  {
    if ((*(a2 + 397) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 120);
    if (!v7)
    {
      v7 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    v8 = *(v7 + 28);
    if ((v8 & 1) == 0)
    {
LABEL_9:
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "#gdm,INJECT_ASSISTANCE_FILE,missing arguments", &buf, 2u);
      }

LABEL_11:
      std::function<void ()(gnss::Result)>::operator()(a3, 4);
      return;
    }

    if ((v8 & 4) == 0)
    {
      v11 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#gdm,INJECT_ASSISTANCE_FILE,no assistance file type", &buf, 2u);
      }

      goto LABEL_11;
    }

    v12 = *(v7 + 8);
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *v12, *(v12 + 1));
    }

    else
    {
      v13 = *v12;
      buf.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&buf.__r_.__value_.__l.__data_ = v13;
    }

    __p = 0;
    v27 = 0;
    v28 = 0;
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
      v15 = __p;
      v16 = v27;
      v17 = GpsdLogObjectGeneral;
      if (__p != v27)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 134349056;
          v33 = (v16 - v15);
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_ASSISTANCE_FILE,Injecting Assistance file,size,%{public}zu", v32, 0xCu);
        }

        GnssDeviceCommon::ActivityCheck::noteInjectionOfAssistanceThatCanSpinUpChip((a1 + 264));
        v18 = *(a2 + 120);
        if (!v18)
        {
          v18 = *(proto::gpsd::Request::default_instance_ + 120);
        }

        v19 = *(v18 + 20);
        v20 = *(a1 + 16);
        v31[0] = off_10017D740;
        v31[1] = a1;
        v31[3] = v31;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a3);
        v21 = *v20 + 72;
        if (v19 == 6)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4;
        }

        (*(*v20 + 72))(v20, &__p, v22, v31, v30);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
        std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v31);
        goto LABEL_41;
      }

      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v25 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = buf.__r_.__value_.__r.__words[0];
        }

        *v32 = 136446210;
        v33 = v25;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#gdm,INJECT_ASSISTANCE_FILE,file is empty,%{public}s", v32, 0xCu);
      }
    }

    else
    {
      v23 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v24 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = buf.__r_.__value_.__r.__words[0];
        }

        *v32 = 136446210;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_ASSISTANCE_FILE,failed to read file,%{public}s", v32, 0xCu);
      }
    }

    std::function<void ()(gnss::Result)>::operator()(a3, 4);
LABEL_41:
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    return;
  }

  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#gdm,INJECT_ASSISTANCE_FILE,ignore update outside of session", &buf, 2u);
  }

  std::function<void ()(gnss::Result)>::operator()(a3, 1);
}

void sub_10000FDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a20);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](&a24);
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

BOOL gpsd::util::readFileIntoVector(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  *(v20 + *(v20[0] - 24)) = v4;
  v20[1] = 0;
  v5 = (v20 + *(v20[0] - 24));
  std::ios_base::init(v5, v21);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v20 + *(v20[0] - 24)), *&v21[*(v20[0] - 24) + 16] | 4);
  }

  v6 = v22;
  if (v22)
  {
    v15 = v22;
    v7 = *&v21[*(v20[0] - 24) + 24];
    if (v7)
    {
      v8 = v7[3];
      v9 = v7[4];
      if (v8 != v9)
      {
        goto LABEL_8;
      }

      if ((*(*v7 + 72))(v7) != -1)
      {
        v8 = v7[3];
        v9 = v7[4];
LABEL_8:
        if (v8 == v9)
        {
          (*(*v7 + 72))(v7);
        }

        else
        {
          v10 = *v8;
        }

        operator new();
      }
    }

    v12 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v17 = a1;
      v18 = 2050;
      v19 = 0;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "readFileIntoVector,%{public}s,size,%{public}zu", buf, 0x16u);
    }

    v6 = v15;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v11 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "readFileIntoVector,failed to open %{public}s", buf, 0xCu);
    }
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v6 != 0;
}

void sub_1000103A8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

id GpsdPreferences::getPvtmTimeOut(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"PvtmTimeOut"];
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240192;
    v4[1] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Pref: kPvtmTimeOut = %{public}d", v4, 8u);
  }

  return v1;
}

uint64_t std::__function::__func<GpsdGnssDeviceManager::injectAssistanceFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0,std::allocator<GpsdGnssDeviceManager::injectAssistanceFile(proto::gpsd::Request const&,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::DecodedExtendedEphemeris &&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017D740;
  a2[1] = v2;
  return result;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_10001054C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void GpsdProtobufRouter::loggingResponse(GpsdProtobufRouter *this, const proto::gpsd::Response *a2)
{
  v4 = *(a2 + 4);
  v5 = (*(*a2 + 72))(a2);
  v6 = *(this + 26);
  if (v6)
  {
    v7 = v5;
    v8 = *(a2 + 5);

    GpsdInterfaceTelemeter::appendResponse(v6, v4, v7);
  }
}

uint64_t proto::gpsd::Response::ByteSize(proto::gpsd::Response *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 7);
    goto LABEL_12;
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 7);
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
    v6 = *(this + 5);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

LABEL_21:
  *(this + 6) = v4;
  return v4;
}

BOOL proto::gnss::Reliability_IsValid(proto::gnss *this)
{
  v1 = this;
  result = 1;
  if (v1 > 0x32 || ((1 << v1) & 0x4000002000403) == 0)
  {
    return v1 == 75;
  }

  return result;
}

void proto::gnss::Position::~Position(proto::gnss::Position *this)
{
  *this = off_100179550;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179550;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179550;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}