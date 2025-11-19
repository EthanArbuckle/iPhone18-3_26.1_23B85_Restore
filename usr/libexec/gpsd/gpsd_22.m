void VendorLogger::openNewLogFile(VendorLogger *this)
{
  VendorLogger::ensureDirectoryExists(this);
  if (*(this + 868) == 1)
  {
    VendorLogger::closeLogFile(this);
    VendorLogger::pruneLogFiles(this);
  }

  VendorLogger::initCompression(this);
  VendorLogger::generateFilename(this, &v5);
  v2 = (this + 824);
  if (*(this + 847) < 0)
  {
    operator delete(*v2);
  }

  *v2 = v5;
  *(this + 105) = v6;
  std::ofstream::open();
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 847) < 0)
    {
      v2 = *v2;
    }

    LODWORD(v5) = 136446210;
    *(&v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "VendorLogger,opening,%{public}s", &v5, 0xCu);
  }

  if (!*(this + 48))
  {
    v4 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v5) = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "VendorLogger,failed to open", &v5, 2u);
    }
  }

  *(this + 868) = 1;
}

void VendorLogger::ensureLogFileIsClosed(VendorLogger *this)
{
  if (*(this + 868) == 1)
  {
    VendorLogger::closeLogFile(this);

    VendorLogger::pruneLogFiles(this);
  }
}

void VendorLogger::ensureDirectoryExists(VendorLogger *this)
{
  v2 = this + 112;
  v3 = *(this + 135);
  v4 = this + 112;
  if (v3 < 0)
  {
    v4 = *v2;
  }

  if (mkdir(v4, 0x1F8u))
  {
    v5 = *__error();
    if (v5 != 17)
    {
      v13 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      if (*(this + 135) < 0)
      {
        v2 = *v2;
      }

      v14 = 136446466;
      v15 = v2;
      v16 = 1026;
      v17 = v5;
      v9 = "VendorLogger,could not create directory,%{public}s,%{public}d";
      v10 = v13;
      v11 = 18;
      goto LABEL_18;
    }

    if (*(this + 135) < 0)
    {
      v2 = *v2;
    }

    v6 = chmod(v2, 0x1F8u);
    v7 = GpsdLogObjectGeneral;
    if (v6)
    {
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v8 = *__error();
      v14 = 67240192;
      LODWORD(v15) = v8;
      v9 = "VendorLogger,chmod failed,%{public}d";
      v10 = v7;
      v11 = 8;
LABEL_18:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
      return;
    }

    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67240192;
      LODWORD(v15) = 504;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "VendorLogger,directory exists,permissions,%{public}x", &v14, 8u);
    }
  }

  else
  {
    v12 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      if (*(this + 135) < 0)
      {
        v2 = *v2;
      }

      v14 = 136446466;
      v15 = v2;
      v16 = 1026;
      v17 = 504;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "VendorLogger,created directory,%{public}s,permissions,%{public}x", &v14, 0x12u);
    }
  }
}

void VendorLogger::initCompression(VendorLogger *this)
{
  if (*(this + 244) == 1)
  {
    v10 = v1;
    v11 = v2;
    *(this + 31) = 0;
    v4 = *(this + 22);
    v5 = *(this + 23) - v4;
    if (v5 >> 15)
    {
      if (v5 != 0x8000)
      {
        *(this + 23) = v4 + 0x8000;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(this + 22, 0x8000 - v5);
    }

    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "VendorLogger,initCompression", buf, 2u);
    }

    if (compression_stream_init(this + 5, COMPRESSION_STREAM_ENCODE, *(this + 60)))
    {
      v7 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "VendorLogger,initCompression,Could not init stream", v8, 2u);
      }

      *(this + 244) = 0;
      *(this + 23) = *(this + 22);
    }

    else
    {
      *(this + 245) = 1;
    }
  }
}

void VendorLogger::generateFilename(VendorLogger *this@<X0>, uint64_t a2@<X8>)
{
  snprintf(__str, 8uLL, "%03d", *(this + 216));
  ++*(this + 216);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  VendorLogger::isoTimestampString(&v50);
  std::string::basic_string[abi:ne200100]<0>(&v49, __str);
  if (*GpsdPreferences::instance(0) == 3)
  {
    std::string::assign(&v50, "unittest");
    std::string::assign(&v49, "000");
  }

  if (*(this + 135) >= 0)
  {
    v4 = *(this + 135);
  }

  else
  {
    v4 = *(this + 15);
  }

  v5 = &v42;
  std::string::basic_string[abi:ne200100](&v42, v4 + 1);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v42.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 135) >= 0)
    {
      v6 = this + 112;
    }

    else
    {
      v6 = *(this + 14);
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
  v7 = *(this + 39);
  if (v7 >= 0)
  {
    v8 = this + 16;
  }

  else
  {
    v8 = *(this + 2);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 39);
  }

  else
  {
    v9 = *(this + 3);
  }

  v10 = std::string::append(&v42, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v50;
  }

  else
  {
    v12 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v50.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v43, v12, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v44, "_");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v49;
  }

  else
  {
    v18 = v49.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v18);
  if ((v41 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v20 = v41;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v45, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v46, ".");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(this + 63);
  if (v25 >= 0)
  {
    v26 = this + 40;
  }

  else
  {
    v26 = *(this + 5);
  }

  if (v25 >= 0)
  {
    v27 = *(this + 63);
  }

  else
  {
    v27 = *(this + 6);
  }

  v28 = std::string::append(&v47, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = *(this + 111);
  if (v30 >= 0)
  {
    v31 = this + 88;
  }

  else
  {
    v31 = *(this + 11);
  }

  if (v30 >= 0)
  {
    v32 = *(this + 111);
  }

  else
  {
    v32 = *(this + 12);
  }

  v33 = std::string::append(&v48, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v51[0] = v33->__r_.__value_.__l.__size_;
  *(v51 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v36 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
  *(a2 + 15) = *(v51 + 7);
  v37 = v51[0];
  *a2 = v34;
  *(a2 + 8) = v37;
  *(a2 + 23) = v35;
  if (v36 < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (*(this + 244) == 1)
  {
    std::string::append(a2, ".");
    v38 = *(this + 60);
    if (v38 > 773)
    {
      if (v38 == 774)
      {
        v39 = "lzma";
        goto LABEL_73;
      }

      if (v38 == 2049)
      {
        v39 = "lzfse";
        goto LABEL_73;
      }
    }

    else
    {
      if (v38 == 256)
      {
        v39 = "lz4";
        goto LABEL_73;
      }

      if (v38 == 517)
      {
        v39 = "zlib";
LABEL_73:
        std::string::append(a2, v39);
        goto LABEL_74;
      }
    }

    v39 = "unk";
    goto LABEL_73;
  }

LABEL_74:
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_10010BCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v57 - 137) < 0)
  {
    operator delete(*(v57 - 160));
  }

  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  if (*(v57 - 81) < 0)
  {
    operator delete(*(v57 - 104));
  }

  if (*(v56 + 23) < 0)
  {
    operator delete(*v56);
  }

  _Unwind_Resume(exception_object);
}

VendorLogger::MemoryStat *VendorLogger::notifyStop(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "VendorLogger,notifyStop,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger10notifyStopEv_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = this;
  dispatch_sync(v3, block);
  result = std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](this + 111, 0);
  atomic_store(0, this + 109);
  atomic_store(0, this + 110);
  return result;
}

void ___ZN12VendorLogger10notifyStopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 868) == 1)
  {
    VendorLogger::closeLogFile(*(a1 + 32));

    VendorLogger::pruneLogFiles(v1);
  }
}

VendorLogger::MemoryStat *std::unique_ptr<VendorLogger::MemoryStat>::reset[abi:ne200100](VendorLogger::MemoryStat **a1, VendorLogger::MemoryStat *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    VendorLogger::MemoryStat::~MemoryStat(result);

    operator delete();
  }

  return result;
}

void VendorLogger::flush(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "VendorLogger,flush,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger5flushEv_block_invoke;
  block[3] = &__block_descriptor_tmp_16_0;
  block[4] = this;
  dispatch_sync(v3, block);
}

uint64_t ___ZN12VendorLogger5flushEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  VendorLogger::flushCompression(v1);
  VendorLogger::initCompression(v1);

  return std::ostream::flush();
}

void VendorLogger::prepareForTermination(VendorLogger *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "VendorLogger,prepareForTermination,received", buf, 2u);
  }

  v3 = *(this + 107);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN12VendorLogger21prepareForTerminationEv_block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = this;
  dispatch_sync(v3, block);
}

void ___ZN12VendorLogger21prepareForTerminationEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 868) == 1)
  {
    VendorLogger::closeLogFile(*(a1 + 32));

    VendorLogger::pruneLogFiles(v1);
  }
}

void VendorLogger::log()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3002000000;
  v0[3] = __Block_byref_object_copy__1;
  v0[4] = __Block_byref_object_dispose__1;
  operator new();
}

void ___ZN12VendorLogger3logEONSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v5 = v3;
  VendorLogger::logBounce(v1, &v5);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](&v5, v4);
  }
}

void sub_10010C358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

void VendorLogger::logBounce(uint64_t a1, uint64_t *a2)
{
  VendorLogger::ensureMemoryStatExists(a1);
  shouldPauseLogging = VendorLogger::MemoryStat::shouldPauseLogging(*(a1 + 888), a2);
  if (!shouldPauseLogging)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3002000000;
    v10[3] = __Block_byref_object_copy__1;
    v5 = *a2;
    *a2 = 0;
    v10[4] = __Block_byref_object_dispose__1;
    v11 = v5;
    v6 = gpsd::util::getMachContinuousTimeNs(shouldPauseLogging) * 0.000000001;
    v7 = *(a1 + 856);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZN12VendorLogger9logBounceENSt3__110unique_ptrINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_14default_deleteIS7_EEEE_block_invoke;
    block[3] = &unk_10017BA20;
    block[4] = v10;
    block[5] = a1;
    *&block[6] = v6;
    dispatch_async(v7, block);
    _Block_object_dispose(v10, 8);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](&v11, v8);
    }
  }
}

void sub_10010C490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  _Block_object_dispose(&a17, 8);
  v24 = a22;
  a22 = 0;
  if (v24)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](v22 + 40, v24);
  }

  _Unwind_Resume(a1);
}

uint64_t VendorLogger::ensureMemoryStatExists(uint64_t this)
{
  if (!*(this + 888))
  {
    operator new();
  }

  return this;
}

BOOL VendorLogger::MemoryStat::shouldPauseLogging(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = atomic_load(a1[5]);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    if (a1[2] <= v4)
    {
      v8 = v2 - v3;
    }

    else
    {
      v8 = a1[2];
    }

    a1[2] = v8;
    v9 = *a1;
    v10 = *a2;
    v11 = *(*a2 + 23);
    v6 = v4 > *a1;
    if (v4 <= *a1)
    {
      if (v11 < 0)
      {
        v13 = (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      else
      {
        v13 = 22;
      }

      a1[4] = v13 + v2;
      v14 = a1[3];
    }

    else
    {
      if (v11 < 0)
      {
        v12 = (*(v10 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      else
      {
        v12 = 22;
      }

      v14 = a1[3] + v12;
      a1[3] = v14;
    }

    v15 = v14 + v4;
    if (v14 + v4 > 0x100000 && v15 > a1[1] + 0x100000)
    {
      a1[1] = v15;
      v16 = GpsdLogObjectGeneral;
      v17 = 16 * (v4 > v9);
      if (os_log_type_enabled(GpsdLogObjectGeneral, v17))
      {
        v18 = atomic_load((a1[5] + 8));
        v20 = 134350592;
        v21 = v4 >> 10;
        v22 = 2050;
        v23 = v8 >> 10;
        v24 = 2050;
        v25 = v9 >> 10;
        v26 = 2050;
        v27 = v15 >> 10;
        v28 = 2050;
        v29 = v14;
        v30 = 1026;
        v31 = v4 > v9;
        v32 = 2050;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v16, v17, "VendorLogger,addtl memory,%{public}zu,KB,max,%{public}zu,KB,allowed,%{public}zu,KB,sum,%{public}zu,KB,dropped,%{public}zu,B,pause,%{public}d,backup,%{public}.3f,sec", &v20, 0x44u);
      }
    }
  }

  else
  {
    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v20 = 134349312;
      v21 = v2;
      v22 = 2050;
      v23 = v3;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "VendorLogger,shouldPauseLogging,bufferSize,in,%{public}zu,out,%{public}zu", &v20, 0x16u);
    }

    return 0;
  }

  return v6;
}

void ___ZN12VendorLogger9logBounceENSt3__110unique_ptrINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_14default_deleteIS7_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v4 = v3;
  VendorLogger::binaryLogWorker(v1, &v4, *(a1 + 48));
  v4 = 0;
  if (v3)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](&v4, v3);
  }
}

void sub_10010C7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<cproto::gpsd::InjectRavenOrbitFile>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void VendorLogger::binaryLogWorker(uint64_t a1, const unsigned __int8 **a2, double a3)
{
  if ((*a2)[23] < 0)
  {
    v6 = (*(*a2 + 2) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v6 = 22;
  }

  atomic_fetch_add((a1 + 872), v6);
  v7 = gpsd::util::getMachContinuousTimeNs(a1) * 0.000000001 - a3;
  v8 = COERCE_DOUBLE(atomic_load((a1 + 880)));
  if (v7 <= v8)
  {
    v7 = v8;
  }

  atomic_store(*&v7, (a1 + 880));
  if ((*(a1 + 868) & 1) == 0)
  {
    VendorLogger::openNewLogFile(a1);
  }

  if (*(a1 + 244) == 1)
  {
    if (*(a1 + 164) == 1)
    {
      v9 = snprintf(__str, 0x10uLL, "%.3f,", a3);
      if (v9 >= 1)
      {
        VendorLogger::writeCompressed(a1, __str, v9);
      }
    }

    v10 = *a2;
    v11 = *(*a2 + 23);
    if (v11 < 0)
    {
      v10 = *v10;
      v11 = *(*a2 + 1);
    }

    VendorLogger::writeCompressed(a1, v10, v11);
  }

  else if ((*(a1 + 256 + *(*(a1 + 256) - 24) + 32) & 5) == 0)
  {
    if (*(a1 + 164) == 1 && snprintf(__str, 0x10uLL, "%.3f,", a3) >= 1)
    {
      v12 = strlen(__str);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 256), __str, v12);
    }

    if (((*a2)[23] & 0x8000000000000000) != 0)
    {
      v13 = **a2;
      v14 = *(*a2 + 1);
    }

    std::ostream::write();
  }
}

void forceDelaysTestCase(void)
{
  v0 = GpsdPreferences::instance(0);
  v1 = GpsdPreferences::genericTestCase(v0);
  if (v1 == 1)
  {
    v2 = (gpsd::util::getMachContinuousTimeNs(v1) * 0.000000001);
    if (forceDelaysTestCase(void)::LastSleepMctSec != v2)
    {
      v3 = forceDelaysTestCase(void)::SleepIntervalSec;
      if (!(v2 % (forceDelaysTestCase(void)::SleepIntervalSec + 3)))
      {
        v4 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67240448;
          v8 = v2;
          v9 = 1026;
          v10 = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "VendorLogger,debugonly,presleep,%{public}d,delay,%{public}d", &v7, 0xEu);
          v3 = forceDelaysTestCase(void)::SleepIntervalSec;
        }

        sleep(v3);
        v5 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67240448;
          v8 = v2;
          v9 = 1026;
          v10 = forceDelaysTestCase(void)::SleepIntervalSec;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VendorLogger,debugonly,aftersleep,%{public}d,delay,%{public}d", &v7, 0xEu);
        }

        v6 = forceDelaysTestCase(void)::SleepIntervalSec;
        if (forceDelaysTestCase(void)::SleepIntervalSec >= 80)
        {
          v6 = 80;
        }

        forceDelaysTestCase(void)::SleepIntervalSec = v6 + 10;
      }
    }

    forceDelaysTestCase(void)::LastSleepMctSec = v2;
  }
}

void VendorLogger::MemoryStat::~MemoryStat(VendorLogger::MemoryStat *this)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 3);
    v4 = *(this + 2) >> 10;
    v5 = *this >> 10;
    v6 = *(this + 4);
    v7 = atomic_load(*(this + 5));
    v8 = atomic_load((*(this + 5) + 8));
    v9 = 134350336;
    v10 = v4;
    v11 = 2050;
    v12 = v5;
    v13 = 2050;
    v14 = v6;
    v15 = 2050;
    v16 = v7;
    v17 = 2050;
    v18 = v3;
    v19 = 2050;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "VendorLogger,MemoryStat,dtor,sizeMax,%{public}zu,KB,allowed,%{public}zu,KB,buffer,in,%{public}zu,B,out,%{public}zu,B,dropped,%{public}zu,B,backup,%{public}.3f,sec", &v9, 0x3Eu);
  }
}

_BYTE *VendorLogger::isoTimestampString@<X0>(_BYTE *a1@<X8>)
{
  v5 = time(0);
  v3 = localtime(&v5);
  if (v5 < 0 || !v3)
  {
    strcpy(__s, "unknown_time");
  }

  else
  {
    strftime(__s, 0x20uLL, "%Y%m%dT_%H-%M-%S%z", v3);
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, __s);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v6 = a2 - 24;
    v7 = a2 - 48;
    v191 = a2;
    v8 = a2 - 72;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v191;
          v11 = v191 - v9;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v191 - v9) >> 3);
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v127 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 24), v9);
                v128 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 24));
                if (v127)
                {
                  if (v128)
                  {
                    goto LABEL_115;
                  }

                  v187 = *v9;
                  v194 = *(v9 + 16);
                  v193 = v187;
                  *v9 = *(v9 + 24);
                  *(v9 + 16) = *(v9 + 40);
                  *(v9 + 24) = v193;
                  *(v9 + 40) = v194;
                  if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 24)))
                  {
                    return;
                  }

                  v131 = *(v9 + 24);
                  v193 = v131;
                  v132 = *(v9 + 40);
                  v194 = v132;
                  v188 = *(v6 + 16);
                  *(v9 + 24) = *v6;
                  *(v9 + 40) = v188;
LABEL_116:
                  *(v6 + 16) = v132;
                  *v6 = v131;
                  return;
                }

                if (!v128)
                {
                  return;
                }

                v193 = *(v9 + 24);
                v177 = v193;
                v194 = *(v9 + 40);
                v178 = v194;
                v179 = *(v6 + 16);
                *(v9 + 24) = *v6;
                *(v9 + 40) = v179;
                *(v6 + 16) = v178;
                *v6 = v177;
LABEL_172:
                if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 24), v9))
                {
                  v180 = *v9;
                  v194 = *(v9 + 16);
                  v193 = v180;
                  *v9 = *(v9 + 24);
                  *(v9 + 16) = *(v9 + 40);
                  *(v9 + 24) = v193;
                  *(v9 + 40) = v194;
                }

                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(v9, (v9 + 24), (v9 + 48), v6);
                return;
              case 5:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(v9, (v9 + 24), (v9 + 48), (v9 + 72));
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (v9 + 72)))
                {
                  return;
                }

                v193 = *(v9 + 72);
                v119 = v193;
                v194 = *(v9 + 88);
                v120 = v194;
                v121 = *(v6 + 16);
                *(v9 + 72) = *v6;
                *(v9 + 88) = v121;
                *(v6 + 16) = v120;
                *v6 = v119;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 72), (v9 + 48)))
                {
                  return;
                }

                v122 = *(v9 + 64);
                v123 = *(v9 + 48);
                *(v9 + 48) = *(v9 + 72);
                *(v9 + 64) = *(v9 + 88);
                *(v9 + 72) = v123;
                *(v9 + 88) = v122;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v9 + 48), (v9 + 24)))
                {
                  return;
                }

                v124 = *(v9 + 40);
                v125 = *(v9 + 24);
                *(v9 + 24) = *(v9 + 48);
                *(v9 + 40) = *(v9 + 64);
                *(v9 + 48) = v125;
                *(v9 + 64) = v124;
                goto LABEL_172;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, v9))
              {
                return;
              }

LABEL_115:
              v129 = *v9;
              v194 = *(v9 + 16);
              v193 = v129;
              v130 = *v6;
              *(v9 + 16) = *(v6 + 16);
              *v9 = v130;
              v131 = v193;
              v132 = v194;
              goto LABEL_116;
            }
          }

          if (v11 <= 575)
          {
            v133 = (v9 + 24);
            v135 = v9 == v191 || v133 == v191;
            if (a4)
            {
              if (!v135)
              {
                v136 = 0;
                v137 = v9;
                do
                {
                  v138 = v137;
                  v137 = v133;
                  if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v133, v138))
                  {
                    v139 = *v137;
                    v194 = *(v137 + 16);
                    v193 = v139;
                    *(v137 + 8) = 0;
                    *(v137 + 16) = 0;
                    *v137 = 0;
                    v140 = v136;
                    while (1)
                    {
                      v141 = v9 + v140;
                      *(v141 + 24) = *(v9 + v140);
                      *(v141 + 40) = *(v9 + v140 + 16);
                      *(v141 + 23) = 0;
                      *v141 = 0;
                      if (!v140)
                      {
                        break;
                      }

                      v140 -= 24;
                      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v193, (v140 + v9)))
                      {
                        v142 = v9 + v140 + 24;
                        goto LABEL_135;
                      }
                    }

                    v142 = v9;
LABEL_135:
                    v143 = v193;
                    *(v142 + 16) = v194;
                    *v142 = v143;
                  }

                  v133 = (v137 + 24);
                  v136 += 24;
                }

                while (v137 + 24 != v191);
              }
            }

            else if (!v135)
            {
              v181 = v9 - 24;
              do
              {
                v182 = a1;
                a1 = v133;
                if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v133, v182))
                {
                  v183 = *a1;
                  v194 = *(a1 + 16);
                  v193 = v183;
                  *(a1 + 8) = 0;
                  *(a1 + 16) = 0;
                  *a1 = 0;
                  v184 = v181;
                  do
                  {
                    *(v184 + 48) = *(v184 + 24);
                    *(v184 + 64) = *(v184 + 40);
                    *(v184 + 47) = 0;
                    *(v184 + 24) = 0;
                    v185 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v193, v184);
                    v184 -= 24;
                  }

                  while (v185);
                  v186 = v193;
                  *(v184 + 64) = v194;
                  *(v184 + 48) = v186;
                }

                v133 = (a1 + 24);
                v181 += 24;
              }

              while (a1 + 24 != v191);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != v191)
            {
              v144 = v13 >> 1;
              v145 = v13 >> 1;
              do
              {
                v146 = v145;
                if (v144 >= v145)
                {
                  v147 = (2 * v145) | 1;
                  v148 = a1 + 24 * v147;
                  if (2 * v145 + 2 < v12 && std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v147), (v148 + 24)))
                  {
                    v148 += 24;
                    v147 = 2 * v146 + 2;
                  }

                  v149 = a1 + 24 * v146;
                  if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v148, v149))
                  {
                    v150 = *v149;
                    v194 = *(v149 + 16);
                    v193 = v150;
                    *(v149 + 8) = 0;
                    *(v149 + 16) = 0;
                    *v149 = 0;
                    do
                    {
                      v151 = v148;
                      v152 = *v148;
                      *(v149 + 16) = *(v148 + 16);
                      *v149 = v152;
                      *(v148 + 23) = 0;
                      *v148 = 0;
                      if (v144 < v147)
                      {
                        break;
                      }

                      v153 = (2 * v147) | 1;
                      v148 = a1 + 24 * v153;
                      v154 = 2 * v147 + 2;
                      if (v154 < v12 && std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v153), (v148 + 24)))
                      {
                        v148 += 24;
                        v153 = v154;
                      }

                      v149 = v151;
                      v147 = v153;
                    }

                    while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v148, &v193));
                    v155 = v193;
                    *(v151 + 16) = v194;
                    *v151 = v155;
                    v10 = v191;
                  }
                }

                v145 = v146 - 1;
              }

              while (v146);
              v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              do
              {
                v157 = 0;
                v158 = v10;
                v190 = *a1;
                *&v195 = *(a1 + 8);
                *(&v195 + 7) = *(a1 + 15);
                v192 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v159 = a1;
                do
                {
                  v160 = v159 + 24 * v157;
                  v161 = v160 + 24;
                  v162 = (2 * v157) | 1;
                  v163 = 2 * v157 + 2;
                  if (v163 < v156)
                  {
                    v164 = v160 + 48;
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v160 + 24), (v160 + 48)))
                    {
                      v161 = v164;
                      v162 = v163;
                    }
                  }

                  v165 = *v161;
                  *(v159 + 16) = *(v161 + 16);
                  *v159 = v165;
                  *(v161 + 23) = 0;
                  *v161 = 0;
                  v159 = v161;
                  v157 = v162;
                }

                while (v162 <= (v156 - 2) / 2);
                v10 -= 3;
                if (v161 == v158 - 3)
                {
                  *v161 = v190;
                  v175 = *(&v195 + 7);
                  *(v161 + 8) = v195;
                  *(v161 + 15) = v175;
                  *(v161 + 23) = v192;
                }

                else
                {
                  v166 = *v10;
                  *(v161 + 16) = *(v158 - 1);
                  *v161 = v166;
                  *(v158 - 3) = v190;
                  v167 = v195;
                  *(v158 - 9) = *(&v195 + 7);
                  *(v158 - 2) = v167;
                  *(v158 - 1) = v192;
                  v168 = v161 - a1 + 24;
                  if (v168 >= 25)
                  {
                    v169 = (-2 - 0x5555555555555555 * (v168 >> 3)) >> 1;
                    v170 = a1 + 24 * v169;
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v170, v161))
                    {
                      v171 = *v161;
                      v194 = *(v161 + 16);
                      v193 = v171;
                      *(v161 + 8) = 0;
                      *(v161 + 16) = 0;
                      *v161 = 0;
                      do
                      {
                        v172 = v170;
                        v173 = *v170;
                        *(v161 + 16) = *(v170 + 16);
                        *v161 = v173;
                        *(v170 + 23) = 0;
                        *v170 = 0;
                        if (!v169)
                        {
                          break;
                        }

                        v169 = (v169 - 1) >> 1;
                        v170 = a1 + 24 * v169;
                        v161 = v172;
                      }

                      while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v170, &v193));
                      v174 = v193;
                      *(v172 + 16) = v194;
                      *v172 = v174;
                    }
                  }
                }
              }

              while (v156-- > 2);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = v9 + 24 * v14;
          if (v11 >= 0xC01)
          {
            v16 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v14), a1);
            v17 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (a1 + 24 * v14));
            if (v16)
            {
              if (v17)
              {
                v18 = *a1;
                v194 = *(a1 + 16);
                v193 = v18;
                v19 = *v6;
                *(a1 + 16) = *(v6 + 16);
                *a1 = v19;
              }

              else
              {
                v36 = *a1;
                v194 = *(a1 + 16);
                v193 = v36;
                v37 = *v15;
                *(a1 + 16) = *(v15 + 16);
                *a1 = v37;
                v38 = v193;
                *(v15 + 16) = v194;
                *v15 = v38;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (a1 + 24 * v14)))
                {
                  goto LABEL_27;
                }

                v39 = *v15;
                v194 = *(v15 + 16);
                v193 = v39;
                v40 = *v6;
                *(v15 + 16) = *(v6 + 16);
                *v15 = v40;
              }

              v41 = v193;
              *(v6 + 16) = v194;
              *v6 = v41;
            }

            else if (v17)
            {
              v24 = *v15;
              v194 = *(v15 + 16);
              v193 = v24;
              v25 = *v6;
              *(v15 + 16) = *(v6 + 16);
              *v15 = v25;
              v26 = v193;
              *(v6 + 16) = v194;
              *v6 = v26;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24 * v14), a1))
              {
                v27 = *a1;
                v194 = *(a1 + 16);
                v193 = v27;
                v28 = *v15;
                *(a1 + 16) = *(v15 + 16);
                *a1 = v28;
                v29 = v193;
                *(v15 + 16) = v194;
                *v15 = v29;
              }
            }

LABEL_27:
            v42 = a1 + 24 * v14 - 24;
            v43 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v42, (a1 + 24));
            v44 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v7, v42);
            if (v43)
            {
              if (v44)
              {
                v45 = *(a1 + 24);
                v193 = v45;
                v46 = *(a1 + 40);
                v194 = v46;
                v47 = *(v7 + 16);
                *(a1 + 24) = *v7;
                *(a1 + 40) = v47;
              }

              else
              {
                v193 = *(a1 + 24);
                v60 = v193;
                v194 = *(a1 + 40);
                v61 = v194;
                v62 = *(a1 + 24 * v14 - 8);
                *(a1 + 24) = *v42;
                *(a1 + 40) = v62;
                *(a1 + 24 * v14 - 8) = v61;
                *v42 = v60;
                if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v7, v42))
                {
                  goto LABEL_39;
                }

                v63 = *v42;
                v194 = *(a1 + 24 * v14 - 8);
                v193 = v63;
                v64 = *v7;
                *(a1 + 24 * v14 - 8) = *(v7 + 16);
                *v42 = v64;
                v45 = v193;
                v46 = v194;
              }

              *(v7 + 16) = v46;
              *v7 = v45;
            }

            else if (v44)
            {
              v48 = *v42;
              v194 = *(a1 + 24 * v14 - 8);
              v193 = v48;
              v49 = *v7;
              *(a1 + 24 * v14 - 8) = *(v7 + 16);
              *v42 = v49;
              v50 = v193;
              *(v7 + 16) = v194;
              *v7 = v50;
              if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v42, (a1 + 24)))
              {
                v193 = *(a1 + 24);
                v51 = v193;
                v194 = *(a1 + 40);
                v52 = v194;
                v53 = *(a1 + 24 * v14 - 8);
                *(a1 + 24) = *v42;
                *(a1 + 40) = v53;
                *(a1 + 24 * v14 - 8) = v52;
                *v42 = v51;
              }
            }

LABEL_39:
            v65 = a1 + 24 * v14;
            v66 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), (a1 + 48));
            v67 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v8, (v65 + 24));
            if (!v66)
            {
              if (v67)
              {
                v71 = *(v65 + 24);
                v194 = *(v65 + 40);
                v193 = v71;
                v72 = *v8;
                *(v65 + 40) = *(v8 + 16);
                *(v65 + 24) = v72;
                v73 = v193;
                *(v8 + 16) = v194;
                *v8 = v73;
                if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), (a1 + 48)))
                {
                  v193 = *(a1 + 48);
                  v74 = v193;
                  v194 = *(a1 + 64);
                  v75 = v194;
                  v76 = *(v65 + 40);
                  *(a1 + 48) = *(v65 + 24);
                  *(a1 + 64) = v76;
                  *(v65 + 40) = v75;
                  *(v65 + 24) = v74;
                }
              }

              goto LABEL_48;
            }

            if (v67)
            {
              v68 = *(a1 + 48);
              v193 = v68;
              v69 = *(a1 + 64);
              v194 = v69;
              v70 = *(v8 + 16);
              *(a1 + 48) = *v8;
              *(a1 + 64) = v70;
            }

            else
            {
              v193 = *(a1 + 48);
              v77 = v193;
              v194 = *(a1 + 64);
              v78 = v194;
              v79 = *(v65 + 40);
              *(a1 + 48) = *(v65 + 24);
              *(a1 + 64) = v79;
              *(v65 + 40) = v78;
              *(v65 + 24) = v77;
              if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v8, (v65 + 24)))
              {
LABEL_48:
                v82 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v15, v42);
                v83 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), v15);
                if (v82)
                {
                  if (v83)
                  {
                    v84 = *v42;
                    v194 = *(v42 + 16);
                    v193 = v84;
                    *v42 = *(v65 + 24);
                    *(v42 + 16) = *(v65 + 40);
                    v85 = v193;
                    *(v65 + 40) = v194;
                    *(v65 + 24) = v85;
                    v10 = v191;
                  }

                  else
                  {
                    v90 = *v42;
                    v194 = *(v42 + 16);
                    v193 = v90;
                    *v42 = *v15;
                    *(v42 + 16) = *(v15 + 16);
                    v91 = v193;
                    *(v15 + 16) = v194;
                    *v15 = v91;
                    v10 = v191;
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v65 + 24), v15))
                    {
                      v92 = *v15;
                      v194 = *(v15 + 16);
                      v193 = v92;
                      *v15 = *(v65 + 24);
                      *(v15 + 16) = *(v65 + 40);
                      v93 = v193;
                      *(v65 + 40) = v194;
                      *(v65 + 24) = v93;
                    }
                  }
                }

                else
                {
                  v10 = v191;
                  if (v83)
                  {
                    v86 = *v15;
                    v194 = *(v15 + 16);
                    v193 = v86;
                    *v15 = *(v65 + 24);
                    *(v15 + 16) = *(v65 + 40);
                    v87 = v193;
                    *(v65 + 40) = v194;
                    *(v65 + 24) = v87;
                    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v15, v42))
                    {
                      v88 = *v42;
                      v194 = *(v42 + 16);
                      v193 = v88;
                      *v42 = *v15;
                      *(v42 + 16) = *(v15 + 16);
                      v89 = v193;
                      *(v15 + 16) = v194;
                      *v15 = v89;
                    }
                  }
                }

                v94 = *a1;
                v194 = *(a1 + 16);
                v193 = v94;
                v95 = *v15;
                *(a1 + 16) = *(v15 + 16);
                *a1 = v95;
                v96 = v193;
                *(v15 + 16) = v194;
                *v15 = v96;
                goto LABEL_57;
              }

              v80 = *(v65 + 24);
              v194 = *(v65 + 40);
              v193 = v80;
              v81 = *v8;
              *(v65 + 40) = *(v8 + 16);
              *(v65 + 24) = v81;
              v68 = v193;
              v69 = v194;
            }

            *(v8 + 16) = v69;
            *v8 = v68;
            goto LABEL_48;
          }

          v20 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1, (a1 + 24 * v14));
          v21 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1);
          if (v20)
          {
            if (v21)
            {
              v22 = *v15;
              v194 = *(v15 + 16);
              v193 = v22;
              v23 = *v6;
              *(v15 + 16) = *(v6 + 16);
              *v15 = v23;
            }

            else
            {
              v54 = *v15;
              v194 = *(v15 + 16);
              v193 = v54;
              v55 = *a1;
              *(v15 + 16) = *(a1 + 16);
              *v15 = v55;
              v56 = v193;
              *(a1 + 16) = v194;
              *a1 = v56;
              if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, a1))
              {
                goto LABEL_57;
              }

              v57 = *a1;
              v194 = *(a1 + 16);
              v193 = v57;
              v58 = *v6;
              *(a1 + 16) = *(v6 + 16);
              *a1 = v58;
            }

            v59 = v193;
            *(v6 + 16) = v194;
            *v6 = v59;
            goto LABEL_57;
          }

          if (v21)
          {
            v30 = *a1;
            v194 = *(a1 + 16);
            v193 = v30;
            v31 = *v6;
            *(a1 + 16) = *(v6 + 16);
            *a1 = v31;
            v32 = v193;
            *(v6 + 16) = v194;
            *v6 = v32;
            if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a1, (a1 + 24 * v14)))
            {
              v33 = *v15;
              v194 = *(v15 + 16);
              v193 = v33;
              v34 = *a1;
              *(v15 + 16) = *(a1 + 16);
              *v15 = v34;
              v35 = v193;
              *(a1 + 16) = v194;
              *a1 = v35;
            }
          }

LABEL_57:
          --a3;
          if ((a4 & 1) != 0 || std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 - 24), a1))
          {
            break;
          }

          v109 = *a1;
          v196 = *(a1 + 16);
          v195 = v109;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v6))
          {
            v9 = a1;
            do
            {
              v9 += 24;
            }

            while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v9));
          }

          else
          {
            v110 = (a1 + 24);
            do
            {
              v9 = v110;
              if (v110 >= v10)
              {
                break;
              }

              v111 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v110);
              v110 = (v9 + 24);
            }

            while (!v111);
          }

          v112 = v10;
          if (v9 < v10)
          {
            v112 = v10;
            do
            {
              v112 -= 3;
            }

            while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v112));
          }

          while (v9 < v112)
          {
            v113 = *v9;
            v194 = *(v9 + 16);
            v193 = v113;
            v114 = *v112;
            *(v9 + 16) = v112[2];
            *v9 = v114;
            v115 = v193;
            v112[2] = v194;
            *v112 = v115;
            do
            {
              v9 += 24;
            }

            while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v9));
            do
            {
              v112 -= 3;
            }

            while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v195, v112));
          }

          v116 = (v9 - 24);
          if (v9 - 24 == a1)
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*a1);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v117 = *v116;
            *(a1 + 16) = *(v9 - 8);
            *a1 = v117;
            *(v9 - 1) = 0;
            *(v9 - 24) = 0;
          }

          a4 = 0;
          v118 = v195;
          *(v9 - 8) = v196;
          *v116 = v118;
        }

        v97 = 0;
        v98 = *a1;
        v196 = *(a1 + 16);
        v195 = v98;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        do
        {
          v97 += 24;
        }

        while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((v97 + a1), &v195));
        v99 = a1 + v97;
        v100 = v10;
        if (v97 == 24)
        {
          v100 = v10;
          do
          {
            if (v99 >= v100)
            {
              break;
            }

            v100 -= 3;
          }

          while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v100, &v195));
        }

        else
        {
          do
          {
            v100 -= 3;
          }

          while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v100, &v195));
        }

        v9 = a1 + v97;
        if (v99 < v100)
        {
          v101 = v100;
          do
          {
            v102 = *v9;
            v194 = *(v9 + 16);
            v193 = v102;
            v103 = *v101;
            *(v9 + 16) = v101[2];
            *v9 = v103;
            v104 = v193;
            v101[2] = v194;
            *v101 = v104;
            do
            {
              v9 += 24;
            }

            while (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v9, &v195));
            do
            {
              v101 -= 3;
            }

            while (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v101, &v195));
          }

          while (v9 < v101);
        }

        v105 = (v9 - 24);
        if (v9 - 24 == a1)
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*a1);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v106 = *v105;
          *(a1 + 16) = *(v9 - 8);
          *a1 = v106;
          *(v9 - 1) = 0;
          *(v9 - 24) = 0;
        }

        v107 = v195;
        *(v9 - 8) = v196;
        *v105 = v107;
        if (v99 >= v100)
        {
          break;
        }

LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,false>(a1, v9 - 24, a3, a4 & 1);
        a4 = 0;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(a1, v9 - 24);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(v9, v191))
      {
        break;
      }

      if (!v108)
      {
        goto LABEL_82;
      }
    }

    a2 = v9 - 24;
    if (!v108)
    {
      continue;
    }

    break;
  }
}

BOOL std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v2 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(v5, v7, v8);
  if (v9)
  {
    return v9 < 0;
  }

  else
  {
    return v4 < v6;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(const void **a1, const void **a2, const void **a3, __int128 *a4)
{
  v8 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1);
  v9 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    *(a4 + 2) = v24;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 24;
        v14 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1);
        v15 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v5, (a1 + 24));
        if (v14)
        {
          if (!v15)
          {
            v33 = *(a1 + 16);
            v34 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v34;
            *(a1 + 40) = v33;
            if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v5, (a1 + 24)))
            {
              return 1;
            }

            v16 = *(a1 + 40);
            v17 = *(a1 + 24);
            v35 = *(v5 + 16);
            *(a1 + 24) = *v5;
            *(a1 + 40) = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = *(a1 + 16);
          v17 = *a1;
          v18 = *(v5 + 16);
          *a1 = *v5;
          *(a1 + 16) = v18;
LABEL_16:
          *v5 = v17;
          *(v5 + 16) = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = *(a1 + 40);
        v25 = *(a1 + 24);
        v26 = *(v5 + 16);
        *(a1 + 24) = *v5;
        *(a1 + 40) = v26;
        *v5 = v25;
        *(v5 + 16) = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        v6 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v6, (a1 + 72)))
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = *(v6 + 16);
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        *(v6 + 16) = v7;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1))
    {
      v27 = *(a1 + 16);
      v28 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v28;
      *(a1 + 40) = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 24;
    if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = (a1 + 48);
  v20 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1);
  v21 = std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 48), (a1 + 24));
  if (v20)
  {
    if (v21)
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *v19;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v37;
      *(a1 + 40) = v36;
      if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *v19;
      *(a1 + 40) = *(a1 + 64);
    }

    *v19 = v23;
    *(a1 + 64) = v22;
  }

  else if (v21)
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 24);
    *(a1 + 24) = *v19;
    *(a1 + 40) = *(a1 + 64);
    *v19 = v30;
    *(a1 + 64) = v29;
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>((a1 + 24), a1))
    {
      v31 = *(a1 + 16);
      v32 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v32;
      *(a1 + 40) = v31;
    }
  }

LABEL_33:
  v38 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(v38, v19))
    {
      v45 = *v38;
      v46 = *(v38 + 16);
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 88) = *(a1 + v41 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::greater<void>::operator()[abi:ne200100]<std::string &,std::string &>(&v45, (v42 + 24)))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 24 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 24;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

void GnssQueueWatchdog::GnssQueueWatchdog(GnssQueueWatchdog *this, dispatch_queue_s *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  v2 = *(GpsdRuntime::instance(this) + 8);
  operator new();
}

void GnssQueueWatchdog::kick(GnssQueueWatchdog *this)
{
  MachContinuousTimeMs = gpsd::util::getMachContinuousTimeMs(this);
  atomic_store(MachContinuousTimeMs, this + 2);
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134349056;
    v5 = MachContinuousTimeMs;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#dqwdt,kick,now,%{public}llu,ms", &v4, 0xCu);
  }
}

uint64_t std::__function::__func<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_0,std::allocator<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017BAC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_0,std::allocator<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_1,std::allocator<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017BB48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_1,std::allocator<GnssQueueWatchdog::GnssQueueWatchdog(dispatch_queue_s *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t gnss::Exception::instance(gnss::Exception *this)
{
  result = gnss::Exception::fInstance;
  if (!gnss::Exception::fInstance)
  {
    if (gnss::Exception::instance(void)::pred != -1)
    {
      dispatch_once(&gnss::Exception::instance(void)::pred, &__block_literal_global_3);
    }

    return gnss::Exception::fInstance;
  }

  return result;
}

void ___ZN4gnss9Exception8instanceEv_block_invoke(id a1)
{
  qword_1001817A8 = 0;
  gnss::ExceptionStaticMemory = 0u;
  unk_100181798 = 0u;
  gnss::Exception::fInstance = &gnss::ExceptionStaticMemory;
}

void gnss::Exception::instanceDelete(gnss::Exception *this)
{
  if (gnss::Exception::fInstance)
  {
    gnss::Exception::fInstance = 0;
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Exception,instanceDelete,nullptr", v4, 2u);
    }
  }
}

void gnss::Exception::set(uint64_t *a1, int a2)
{
  v3 = *a1 | (1 << a2);
  *a1 = v3;
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = gnss::Exception::toString(a2);
    v7 = 1026;
    v8 = a2;
    v9 = 2050;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Exception::Type,set,type,%{public}s,%{public}d,%{public}llx", &v5, 0x1Cu);
  }
}

{
  gnss::Exception::set(a1, a2);
  if (!a1[4])
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v4) = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Exception::set,fSendIndication,nullptr", &v4, 2u);
    }
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
  LODWORD(v5) = 23;
  v18 = 0x400100000000;
  operator new();
}

const char *gnss::Exception::toString(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_10017BBF8[(a1 - 1)];
  }
}

int64_t getNmeaType(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    if (a1[1] >= 6)
    {
      v3 = *a1;
      goto LABEL_9;
    }

LABEL_5:
    v4 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v3 = a1;
  if (*(a1 + 23) < 6u)
  {
    goto LABEL_5;
  }

LABEL_9:
  v5 = 0;
  result = v3[5] | (v3[4] << 8) | (((v3[2] << 8) | (v3[1] << 16) | v3[3]) << 16);
  v4 = 7;
  if (result <= 0x5044504753)
  {
    if (result > 0x5041474343)
    {
      v7 = (result - 0x5044424741) <= 0x18 && ((1 << (result - 65)) & 0x1AED17D) != 0 || result == 0x5041474344;
      v9 = 1095975748;
    }

    else
    {
      if (result <= 0x4750475340)
      {
        if (result <= 0x474C475355)
        {
          if (result <= 0x4741475340)
          {
            v7 = result == 0x4244475341;
            v8 = 0x4244475356;
            goto LABEL_69;
          }

          v7 = result == 0x4741475341;
          v14 = 1095193430;
          goto LABEL_68;
        }

        if (result <= 0x474E475340)
        {
          v7 = result == 0x474C475356;
          v14 = 1313295955;
LABEL_68:
          v8 = v14 & 0xFFFF0000FFFFFFFFLL | 0x4700000000;
          goto LABEL_69;
        }

        v7 = result == 0x474E475341;
        v13 = 18241;
LABEL_67:
        v14 = v13 & 0xFFFFFFFF0000FFFFLL | 0x50470000;
        goto LABEL_68;
      }

      if (result <= 0x4750565446)
      {
        if (result > 0x4750484453)
        {
          v7 = result == 0x4750484454;
          v14 = 1347571011;
          goto LABEL_68;
        }

        v7 = result == 0x4750475341;
        v13 = 21334;
        goto LABEL_67;
      }

      if (result <= 0x494D475340)
      {
        v7 = result == 0x4750565447;
        v14 = 1363628886;
        goto LABEL_68;
      }

      v7 = result == 0x494D475341;
      v9 = 1094796100;
    }

LABEL_28:
    v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x5000000000;
    goto LABEL_69;
  }

  if (result <= 0x5051475340)
  {
    if (result > 0x5044584942)
    {
      if (result <= 0x5044584C4BLL)
      {
        v7 = result == 0x5044584943;
        v9 = 1146637379;
      }

      else
      {
        v7 = result == 0x5044584C4CLL || result == 0x5046504558;
        v9 = 1196183378;
      }
    }

    else
    {
      if (result > 0x504450544CLL)
      {
        if (((result - 0x5044584341) > 0xB || ((1 << (result - 65)) & 0x809) == 0) && result != 0x504450544DLL)
        {
          goto LABEL_6;
        }

        goto LABEL_74;
      }

      v7 = result == 0x5044504754 || result == 0x5044504D43;
      v9 = 1146113364;
    }

    goto LABEL_28;
  }

  if (result <= 0x5051504452)
  {
    v7 = (result - 0x50514D4531) < 5 || result == 0x5051475341;
    v9 = 1363628886;
    goto LABEL_28;
  }

  if (result <= 0x5051584648)
  {
    v7 = result == 0x5051504453 || result == 0x5051504531;
    v9 = 1364215091;
    goto LABEL_28;
  }

  v7 = result == 0x5051584649 || result == 0x515A475356;
  v8 = 0x515A475341;
LABEL_69:
  if (!v7 && result != v8)
  {
    goto LABEL_6;
  }

LABEL_74:
  *a2 = 7;
  if (result == 0x5046504558)
  {
    result = 0x5046504558;
    if (*(v2 + 23) < 0)
    {
      if (v2[1] <= 0xA)
      {
        return result;
      }

      v2 = *v2;
    }

    else if (*(v2 + 23) <= 0xAu)
    {
      return result;
    }

    v5 = *(v2 + 10) | (((*(v2 + 8) << 8) | (*(v2 + 7) << 16) | *(v2 + 9)) << 8);
    v4 = 12;
    if (v5 > 1179665741)
    {
      if (v5 <= 1262899248)
      {
        if (v5 > 1262898496)
        {
          if (v5 == 1262898497)
          {
            goto LABEL_6;
          }

          v19 = 19779;
        }

        else
        {
          if (v5 == 1179665742)
          {
            goto LABEL_6;
          }

          v19 = 17477;
        }

        v18 = v19 | 0x4B460000u;
      }

      else
      {
        if (v5 <= 1262900051)
        {
          if ((v5 - 1262899249) <= 0x1E)
          {
            *(v2 + 8);
            *(v2 + 7);
            *(v2 + 9);
            if (((1 << (*(v2 + 10) - 49)) & 0x40000003) != 0)
            {
              goto LABEL_6;
            }
          }

          goto LABEL_151;
        }

        if (v5 > 1347375958)
        {
          if (v5 == 1347375959)
          {
            goto LABEL_6;
          }

          v18 = 1397705806;
        }

        else
        {
          if (v5 == 1262900052)
          {
            goto LABEL_6;
          }

          v18 = 1297044547;
        }
      }
    }

    else if (v5 <= 1095194416)
    {
      if (v5 <= 4933207)
      {
        if (v5 == 4474189)
        {
          goto LABEL_6;
        }

        v18 = 4933186;
      }

      else
      {
        if (v5 == 4933208 || v5 == 5062992)
        {
          goto LABEL_6;
        }

        v18 = 5263187;
      }
    }

    else if (v5 > 1128482910)
    {
      if (v5 == 1128482911 || v5 == 1129073495)
      {
        goto LABEL_6;
      }

      v18 = 1162891075;
    }

    else
    {
      if ((v5 - 1095194417) < 2)
      {
        goto LABEL_6;
      }

      v18 = 1128482881;
    }

    if (v5 == v18)
    {
      goto LABEL_6;
    }

LABEL_151:
    v4 = 12;
    goto LABEL_152;
  }

  if (result == 0x50474C4F52)
  {
    result = 0x50474C4F52;
    if (*(v2 + 23) < 0)
    {
      if (v2[1] > 0xC)
      {
        v2 = *v2;
LABEL_84:
        v16 = 9;
        if (*(v2 + 9) == 44)
        {
          v16 = 10;
        }

        v5 = (*(v2 + v16 + 1) << 8) | (*(v2 + v16) << 16) | *(v2 + v16 + 2);
        v4 = 13;
        if (v5 <= 5260864)
        {
          if (v5 > 4672590)
          {
            if (v5 <= 5002064)
            {
              if (v5 == 4672591)
              {
                goto LABEL_6;
              }

              v17 = 4738113;
            }

            else
            {
              if (v5 == 5002065 || v5 == 5129559)
              {
                goto LABEL_6;
              }

              v17 = 5133901;
            }
          }

          else if (v5 <= 4542019)
          {
            if (v5 == 4278083)
            {
              goto LABEL_6;
            }

            v17 = 4412504;
          }

          else
          {
            if (v5 == 4542020 || v5 == 4606286)
            {
              goto LABEL_6;
            }

            v17 = 4606296;
          }
        }

        else if (v5 <= 5456211)
        {
          if (v5 <= 5265233)
          {
            if (v5 == 5260865)
            {
              goto LABEL_6;
            }

            v17 = 5260877;
          }

          else
          {
            if (v5 == 5265234 || v5 == 5392708)
            {
              goto LABEL_6;
            }

            v17 = 5395523;
          }
        }

        else if (v5 > 5461570)
        {
          if (v5 == 5461571 || v5 == 5462350)
          {
            goto LABEL_6;
          }

          v17 = 5590595;
        }

        else
        {
          if (v5 == 5456212 || v5 == 5458255)
          {
            goto LABEL_6;
          }

          v17 = 5461057;
        }

        if (v5 != v17)
        {
          v4 = 13;
LABEL_152:
          v5 = result;
        }

LABEL_6:
        *a2 = v4;
        return v5;
      }
    }

    else if (*(v2 + 23) > 0xCu)
    {
      goto LABEL_84;
    }
  }

  return result;
}

uint64_t vendorMarkerCharacter(void)
{
  v0 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
  v1 = v0 > 4;
  v2 = (1 << v0) & 0x19;
  if (!v1 && v2 != 0)
  {
    return 102;
  }

  if ((*(GpsdPlatformInfo::instance(0) + 8) - 201) < 2)
  {
    return 107;
  }

  if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) >= 2)
  {
    return 117;
  }

  return 105;
}

void NmeaLogging::splitString(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (!v4)
  {
    return;
  }

  memset(&v41, 0, sizeof(v41));
  v40 = 0;
  *(v31 + *(v31[0] - 24)) = v7;
  v31[1] = 0;
  v8 = (v31 + *(v31[0] - 24));
  std::ios_base::init(v8, &v33);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *(&v32 + *(v32 - 3)) = v9;
  std::locale::locale(&v34);
  memset(v35, 0, sizeof(v35));
  *__p = 0u;
  v37 = 0u;
  v38 = 24;
  std::string::operator=(__p, a1);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v33);
  while (2)
  {
    std::istream::sentry::sentry();
    if (LOBYTE(v42.__first_) != 1)
    {
      goto LABEL_22;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      *v41.__r_.__value_.__l.__data_ = 0;
      v41.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v41.__r_.__value_.__s.__data_[0] = 0;
      *(&v41.__r_.__value_.__s + 23) = 0;
    }

    v10 = 0;
    while (1)
    {
      v11 = *(v35 + *(v31[0] - 24));
      v12 = v11[3];
      if (v12 != v11[4])
      {
        v11[3] = v12 + 1;
        LOBYTE(v11) = *v12;
        goto LABEL_13;
      }

      LODWORD(v11) = (*(*v11 + 80))(v11);
      if (v11 == -1)
      {
        break;
      }

LABEL_13:
      if (v11 == a2)
      {
        v13 = 0;
        goto LABEL_21;
      }

      std::string::push_back(&v41, v11);
      --v10;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0 && v41.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v13 = 4;
        goto LABEL_21;
      }
    }

    if (v10)
    {
      v13 = 2;
    }

    else
    {
      v13 = 6;
    }

LABEL_21:
    std::ios_base::clear((v31 + *(v31[0] - 24)), *(&v34.__locale_ + *(v31[0] - 24)) | v13);
LABEL_22:
    if ((*(&v34.__locale_ + *(v31[0] - 24)) & 5) == 0)
    {
      v15 = *(a3 + 8);
      v14 = *(a3 + 16);
      if (v15 >= v14)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        v18 = v17 + 1;
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v18;
        }

        v42.__end_cap_.__value_ = a3;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v20);
        }

        begin = (24 * v17);
        v42.__first_ = 0;
        v42.__begin_ = (24 * v17);
        value = 0;
        v42.__end_ = (24 * v17);
        v42.__end_cap_.__value_ = 0;
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(begin, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
          begin = v42.__begin_;
          end = v42.__end_;
          value = v42.__end_cap_.__value_;
        }

        else
        {
          v24 = *&v41.__r_.__value_.__l.__data_;
          *(24 * v17 + 0x10) = *(&v41.__r_.__value_.__l + 2);
          *&begin->__r_.__value_.__l.__data_ = v24;
          end = (24 * v17);
        }

        v21 = end + 1;
        v26 = *(a3 + 8) - *a3;
        v27 = begin - v26;
        memcpy(begin - v26, *a3, v26);
        v28 = *a3;
        *a3 = v27;
        *(a3 + 8) = v21;
        v29 = *(a3 + 16);
        *(a3 + 16) = value;
        v42.__end_ = v28;
        v42.__end_cap_.__value_ = v29;
        v42.__first_ = v28;
        v42.__begin_ = v28;
        std::__split_buffer<std::string>::~__split_buffer(&v42);
      }

      else
      {
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a3 + 8), v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
        }

        else
        {
          v16 = *&v41.__r_.__value_.__l.__data_;
          *(v15 + 16) = *(&v41.__r_.__value_.__l + 2);
          *v15 = v16;
        }

        v21 = (v15 + 24);
      }

      *(a3 + 8) = v21;
      continue;
    }

    break;
  }

  v32 = v30;
  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

  std::locale::~locale(&v34);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_10010FD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  __cxa_end_catch();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  std::ios::~ios();
  if (*(v31 - 129) < 0)
  {
    operator delete(*(v31 - 152));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t NmeaLogging::getNmeaMask(NmeaLogging *this)
{
  v1 = GpsdPreferences::instance(0);
  v2 = GpsdPreferences::nmeaMaskOverride(v1);
  if (!v2)
  {
    v5 = *(GpsdPlatformInfo::instance(0) + 8);
    v2 = 566;
    if ((v5 - 201) >= 2 && (v5 - 301) >= 2)
    {
      v6 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v6 > 4)
      {
        v2 = 0;
      }

      else
      {
        v2 = qword_1001498E8[v6];
      }
    }
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349056;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdm,configureDevice,enable NMEA,%{public}llx", &v7, 0xCu);
  }

  return v2;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void gnss::stringify(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        v3 = "kDropped";
        goto LABEL_20;
      }

      if (a1 == 1)
      {
        v3 = "kSuccess";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (a1 == 2)
    {
      v3 = "kAborted";
    }

    else
    {
      v3 = "kInUse";
    }

LABEL_20:

    std::string::basic_string[abi:ne200100]<0>(a2, v3);
    return;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      v3 = "kInvalidArgument";
    }

    else
    {
      v3 = "kPermissionDenied";
    }

    goto LABEL_20;
  }

  switch(a1)
  {
    case 6:
      v3 = "kTimeout";
      goto LABEL_20;
    case 7:
      v3 = "kUnavailable";
      goto LABEL_20;
    case 8:
      v3 = "kCompletedWithFailure";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v6, a1);
  v4 = std::string::insert(&v6, 0, "unknown ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a2 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1001103E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gnss::deviceVersionCheck(gnss *this)
{
  v1 = this;
  GnssDeviceVersion = getGnssDeviceVersion();
  v3 = GpsdLogObjectGeneral;
  v4 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 134349570;
    v18 = 0x403911EB851EB852;
    v19 = 2050;
    *v20 = GnssDeviceVersion * 0.01;
    *&v20[8] = 2080;
    *&v20[10] = getVersionString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gdd,Local device version,%{public}.2f,Dylib device version,%{public}.2f,Dylib version string,%s", buf, 0x20u);
  }

  if (v1)
  {
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v4);
    v6 = getGnssDeviceVersion();
    VersionString = getVersionString();
    printf("[%5.1f][TOOL] gnss::Device version %.2f, %s\n", ProcessUptimeSec, v6 * 0.01, VersionString);
    v8 = GpsdLogObjectGeneral;
    v9 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = gpsd::util::getProcessUptimeSec(v9);
      v11 = getGnssDeviceVersion();
      v12 = getVersionString();
      *buf = 134218498;
      v18 = *&v10;
      v19 = 2048;
      *v20 = v11 * 0.01;
      *&v20[8] = 2080;
      *&v20[10] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%5.1f][TOOL] gnss::Device version %.2f, %s", buf, 0x20u);
    }
  }

  if (GnssDeviceVersion != 2507)
  {
    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "gnss::Device version mismatch", buf, 2u);
      v13 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
      v19 = 1026;
      *v20 = 83;
      *&v20[4] = 2082;
      *&v20[6] = "deviceVersionCheck";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v15, "deviceVersionCheck");
    std::string::basic_string[abi:ne200100]<0>(&v14, "gnss::Device version mismatch");
    gpsd::util::triggerDiagnosticReport(&v16, &v15, &v14);
    std::string::~string(&v14);
    std::string::~string(&v15);
    std::string::~string(&v16);
    __assert_rtn("deviceVersionCheck", "GpsdUtil.cpp", 83, "false && gnss::Device version mismatch");
  }
}

void sub_1001106E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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

double gpsd::util::getProcessUptimeSec(gpsd::util *this)
{
  if (!gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs)
  {
    this = gpsd::util::getMachContinuousTimeNs(this);
    gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs = this;
  }

  return (gpsd::util::getMachContinuousTimeNs(this) - gpsd::util::getProcessUptimeSec(void)::sMachContTimeStartNs) * 0.000000001;
}

uint64_t calculateGcd(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  do
  {
    v2 = a2;
    a2 = a1 % a2;
    LODWORD(a1) = v2;
  }

  while (a2);
  return v2;
}

void getTickToNsInfo(void)
{
  if (!getTickToNsInfo(void)::info)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
      if (!info.numer)
      {
        v7 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "gcd result is zero", buf, 2u);
          v7 = GpsdLogObjectGeneral;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v21 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
          v22 = 1026;
          *v23 = 110;
          *&v23[4] = 2082;
          *&v23[6] = "getTickToNsInfo";
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
        }

        std::string::basic_string[abi:ne200100]<0>(&v18, "assert");
        std::string::basic_string[abi:ne200100]<0>(&v17, "getTickToNsInfo");
        std::string::basic_string[abi:ne200100]<0>(&v16, "gcd result is zero");
        gpsd::util::triggerDiagnosticReport(&v18, &v17, &v16);
        std::string::~string(&v16);
        std::string::~string(&v17);
        std::string::~string(&v18);
        __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 110, "false && gcd result is zero");
      }
    }

    getTickToNsInfo(void)::info = info.denom / v2;
    getTickToNsInfo(void)::info = info.numer / v2;
    if (v2 > info.denom)
    {
      v8 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "info.denominator is zero", buf, 2u);
        v8 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v22 = 1026;
        *v23 = 113;
        *&v23[4] = 2082;
        *&v23[6] = "getTickToNsInfo";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v15, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v14, "getTickToNsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v13, "info.denominator is zero");
      gpsd::util::triggerDiagnosticReport(&v15, &v14, &v13);
      std::string::~string(&v13);
      std::string::~string(&v14);
      std::string::~string(&v15);
      __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 113, "false && info.denominator is zero");
    }

    if (v2 > info.numer)
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "info.numerator is zero", buf, 2u);
        v9 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v22 = 1026;
        *v23 = 114;
        *&v23[4] = 2082;
        *&v23[6] = "getTickToNsInfo";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v12, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v11, "getTickToNsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v10, "info.numerator is zero");
      gpsd::util::triggerDiagnosticReport(&v12, &v11, &v10);
      std::string::~string(&v10);
      std::string::~string(&v11);
      std::string::~string(&v12);
      __assert_rtn("getTickToNsInfo", "GpsdUtil.cpp", 114, "false && info.numerator is zero");
    }

    v3 = info.numer / v2 * (info.denom / v2);
    if (v3 >= 0x17D)
    {
      getTickToNsInfo(void)::info = 1;
      v4 = GpsdLogObjectGeneral;
      if (v3 >> 10 > 0x5E)
      {
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#gpsdUtil,Cannot protect against overflow in tick to ns", buf, 2u);
        }
      }

      else if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#gpsdUtil,Reducing tick to ns precision to avoid overflow risk", buf, 2u);
      }
    }

    v5 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      if (getTickToNsInfo(void)::info)
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }

      *buf = 134349568;
      v21 = getTickToNsInfo(void)::info;
      v22 = 2050;
      *v23 = getTickToNsInfo(void)::info;
      *&v23[8] = 1026;
      *&v23[10] = v6;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#gpsdUtil,Tick to ns info,Numerator,%{public}llu,Denominator,%{public}llu,PrecisionReductionBits,%{public}d", buf, 0x1Cu);
    }
  }
}

void sub_100110D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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

void getTickToMsInfo(void)
{
  if (!getTickToMsInfo(void)::info)
  {
    {
      getTickToNsInfo();
    }

    v0 = 1000000 * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info;
    getTickToMsInfo(void)::info = v0;
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v7 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "getTickToMsInfo,denominator,%{public}llu", buf, 0xCu);
      v0 = getTickToMsInfo(void)::info;
    }

    if (!v0)
    {
      v2 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "getTickToMsInfo,Cannot get ms from this platform", buf, 2u);
        v2 = GpsdLogObjectGeneral;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v7 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdUtil.cpp";
        v8 = 1026;
        v9 = 152;
        v10 = 2082;
        v11 = "getTickToMsInfo";
        _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
      }

      std::string::basic_string[abi:ne200100]<0>(&v5, "assert");
      std::string::basic_string[abi:ne200100]<0>(&v4, "getTickToMsInfo");
      std::string::basic_string[abi:ne200100]<0>(&v3, "getTickToMsInfo,Cannot get ms from this platform");
      gpsd::util::triggerDiagnosticReport(&v5, &v4, &v3);
      std::string::~string(&v3);
      std::string::~string(&v4);
      std::string::~string(&v5);
      __assert_rtn("getTickToMsInfo", "GpsdUtil.cpp", 152, "false && getTickToMsInfo,Cannot get ms from this platform");
    }
  }
}

unint64_t gpsd::util::convertNsToMachTimeInTicks(unint64_t this)
{
  {
    getTickToNsInfo();
  }

  v2 = 8;
  if (!getTickToNsInfo(void)::info)
  {
    v2 = 0;
  }

  return ((this >> v2) * getTickToNsInfo(void)::info / getTickToNsInfo(void)::info) << v2;
}

uint64_t gpsd::util::fletcher16(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v4 += v5;
      v3 += v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    LOBYTE(v4) = 0;
    v3 = 0;
  }

  return (v4 | (v3 << 8));
}

uint64_t gpsd::util::fletcher16(gpsd::util *this, const unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *this;
      this = (this + 1);
      v3 += v4;
      v2 += v3;
      --a2;
    }

    while (a2);
  }

  else
  {
    LOBYTE(v3) = 0;
    v2 = 0;
  }

  return (v3 | (v2 << 8));
}

uint64_t gpsd::util::fletcher16(unsigned __int8 *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += v5;
      v3 += v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    LOBYTE(v4) = 0;
    v3 = 0;
  }

  return (v4 | (v3 << 8));
}

uint64_t gpsd::util::truncatedSha256(uint64_t a1)
{
  return gpsd::util::truncatedSha256(*a1, (*(a1 + 8) - *a1));
}

{
  if (*(a1 + 23) >= 0)
  {
    return gpsd::util::truncatedSha256(a1, *(a1 + 23));
  }

  else
  {
    return gpsd::util::truncatedSha256(*a1, *(a1 + 8));
  }
}

uint64_t gpsd::util::writeVectorToClassDFileWithRename(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 4);
  if (v19 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(v2 + 23) >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".tmp");
  if (!gpsd::util::writeVectorToClassDFile(a1, __p))
  {
    goto LABEL_20;
  }

  if (v19 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (*(v2 + 23) >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = *v2;
  }

  rename(v8, v9, v7);
  v10 = GpsdLogObjectGeneral;
  if (v11)
  {
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 136446722;
      v21 = v2;
      v22 = 1026;
      v23 = v14;
      v24 = 2082;
      v25 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "writeVectorToClassDFileWithRename,renameFailed,%{public}s,err,%{public}d,%{public}s", buf, 0x1Cu);
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    if (*(v2 + 23) >= 0)
    {
      v17 = v2;
    }

    else
    {
      v17 = *v2;
    }

    *buf = 136446210;
    v21 = v17;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "writeVectorToClassDFileWithRename,success,%{public}s", buf, 0xCu);
  }

  v12 = 1;
LABEL_21:
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

void sub_1001114B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL gpsd::util::writeVectorToClassDFile(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "wb+");
  if (!v4)
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      v16 = 67240192;
      v17 = v14;
      v12 = "#utilWriteVector,open failed,%{public}d";
      goto LABEL_15;
    }

    return 0;
  }

  v6 = v4;
  gpsd::util::changeFileToClassD(v4, v5);
  v7 = fwrite(*a1, *(a1 + 8) - *a1, 1uLL, v6);
  v8 = v7 == 1;
  if (v7 != 1)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      v16 = 67240192;
      v17 = v15;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#utilWriteVector,write failed,%{public}d", &v16, 8u);
    }
  }

  if (fclose(v6))
  {
    v10 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v16 = 67240192;
      v17 = v11;
      v12 = "#utilWriteVector,close failed,%{public}d";
LABEL_15:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, &v16, 8u);
      return 0;
    }

    return 0;
  }

  return v8;
}

void gpsd::util::changeFileToClassD(FILE *this, __sFILE *a2)
{
  if (this)
  {
    v2 = fileno(this);
    if (v2 == -1)
    {
      v4 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 67240192;
        v12 = v10;
        v6 = "#utilFileClass,fileno failed,%{public}d";
        goto LABEL_12;
      }
    }

    else
    {
      v3 = v2;
      if (fcntl(v2, 63) != 4)
      {
        if (fcntl(v3, 64, 4))
        {
          v4 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            v5 = *__error();
            *buf = 67240192;
            v12 = v5;
            v6 = "#utilFileClass,set class failed,%{public}d";
LABEL_12:
            v8 = v4;
            v9 = 8;
            goto LABEL_13;
          }
        }
      }
    }
  }

  else
  {
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "#utilFileClass,nullptr";
      v8 = v7;
      v9 = 2;
LABEL_13:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v6, buf, v9);
    }
  }
}

void gpsd::util::charToHex(gpsd::util *this@<X0>, const unsigned __int8 *a2@<X1>, int __c@<W2>, std::string *a4@<X8>)
{
  if (a2)
  {
    v8 = 0;
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    do
    {
      if (__c)
      {
        if (v8)
        {
          std::string::push_back(a4, __c);
        }
      }

      std::string::push_back(a4, __const__ZN4gpsd4util9charToHexEPKhmc_charmap[v8[this] >> 4]);
      std::string::push_back(a4, __const__ZN4gpsd4util9charToHexEPKhmc_charmap[(v8++)[this] & 0xF]);
    }

    while (a2 != v8);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a4, "EmptyBuffer");
  }
}

void sub_1001118C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::charToHex(gpsd::util *this@<X0>, const unsigned __int8 *a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  gpsd::util::charToHex(this, a2, a3, a4);
}

void gpsd::util::logBinaryBytes(gpsd::util *this, const unsigned __int8 *a2, uint64_t a3, const char *a4)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        if (v8 >= 0x40)
        {
          v10 = 64;
        }

        else
        {
          v10 = v8;
        }

        gpsd::util::charToHex((this + v7), v10, 0, &__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446979;
        v14 = a3;
        v15 = 2050;
        v16 = a2;
        v17 = 2050;
        v18 = v7;
        v19 = 2081;
        v20 = p_p;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s,%{public}zu,%{public}zu,%{private}s", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v7 += 64;
      v8 -= 64;
    }

    while (v7 < a2);
  }
}

id vectorToNSArray(double **a1)
{
  v2 = [NSMutableArray arrayWithCapacity:a1[1] - *a1];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [NSNumber numberWithDouble:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  return v2;
}

_DWORD *GpsdPreferences::GpsdPreferences(_DWORD *a1, int a2)
{
  *a1 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = fDefaults;
  fDefaults = v3;

  if (!a2)
  {
    [fDefaults addSuiteNamed:@"gpsd"];
  }

  [fDefaults addSuiteNamed:@"com.apple.coregps"];
  v66[0] = @"ForceDisableGpsd";
  v66[1] = @"UseLegacyLibXpc";
  v67[0] = &__kCFBooleanFalse;
  v67[1] = &__kCFBooleanFalse;
  v66[2] = @"BigPowerSwitch";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  v67[2] = v5;
  v66[3] = @"BaudRate4M8";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 201)
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  v67[3] = v6;
  v66[4] = @"UsesAsyncCommRead";
  v7 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v7 - 301) < 2 || v7 == 202 || (v8 = &__kCFBooleanFalse, v7 == 107))
  {
    v8 = &__kCFBooleanTrue;
  }

  v67[4] = v8;
  v67[5] = &stru_10017F9A8;
  v66[5] = @"ForceGnssDeviceLibraryName";
  v66[6] = @"EnableMeasurementApi";
  v67[6] = &__kCFBooleanTrue;
  v67[7] = &__kCFBooleanTrue;
  v66[7] = @"EnableXocalRequests";
  v66[8] = @"ForceEnableXocalLearning";
  v67[8] = &__kCFBooleanFalse;
  v67[9] = &off_10017FC88;
  v66[9] = @"MaxSchedulerQos";
  v66[10] = @"EnableBasebandReset";
  v9 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v9 - 301) < 2 || (v10 = &__kCFBooleanFalse, v9 == 202))
  {
    if (*(GpsdPlatformInfo::instance(0) + 8) == 202)
    {
      v10 = &__kCFBooleanTrue;
    }

    else
    {
      v10 = &__kCFBooleanFalse;
    }
  }

  v67[10] = v10;
  v66[11] = @"LogLevel";
  v11 = [NSNumber numberWithInt:0];
  v67[11] = v11;
  v66[12] = @"SecondaryLogLevel";
  v12 = [NSNumber numberWithInt:0];
  v67[12] = v12;
  v67[13] = &off_10017FCA0;
  v66[13] = @"LogMask";
  v66[14] = @"PvtmTimeOut";
  v67[14] = &off_10017FCB8;
  v67[15] = @"0x0";
  v66[15] = @"NmeaMaskOverride";
  v66[16] = @"VendorLogQA";
  v67[16] = &__kCFBooleanFalse;
  v67[17] = &__kCFBooleanFalse;
  v66[17] = @"VendorLogRestrictedCarry";
  v66[18] = @"VendorLogAllToOsLog";
  v67[18] = &__kCFBooleanFalse;
  v67[19] = &__kCFBooleanFalse;
  v66[19] = @"VendorLogForceCustomer";
  v66[20] = @"VendorLogLz4";
  v67[20] = &__kCFBooleanTrue;
  v67[21] = &__kCFBooleanFalse;
  v66[21] = @"VendorLogLzfse";
  v66[22] = @"VendorLogZlib";
  v67[22] = &__kCFBooleanFalse;
  v67[23] = @"/var/mobile/Library/Logs/gpsd";
  v66[23] = @"VendorLogDirectory";
  v66[24] = @"VendorLogPrefixWithTimestamp";
  v67[24] = &__kCFBooleanFalse;
  v67[25] = &off_10017FCD0;
  v66[25] = @"VendorLogMaxDirectorySizeMB";
  v66[26] = @"VendorLogRotationSizeMB";
  v67[26] = &off_10017FCE8;
  v67[27] = &off_10017FD00;
  v66[27] = @"VendorLogMaxNumberOfFiles";
  v66[28] = @"VendorLogRetentionDays";
  v67[28] = &off_10017FD60;
  v67[29] = &off_10017FD18;
  v66[29] = @"VendorLogBufferSizeAllowedKB";
  v66[30] = @"EnableProtobufBinaryLog";
  v67[30] = &__kCFBooleanFalse;
  v67[31] = @"/var/mobile/Library/Logs/gpsd";
  v66[31] = @"ProtobufLogDirectory";
  v66[32] = @"ProtobufLogRetentionDays";
  v67[32] = &off_10017FD70;
  v67[33] = &__kCFBooleanFalse;
  v66[33] = @"EnableInterfaceTelemetry";
  v66[34] = @"NvStoreFile";
  v67[34] = @"/var/db/gpsd/gps_nvstore.bin";
  v67[35] = @"/var/db/gpsd/longTermPredictions";
  v66[35] = @"LongTermPredictionsFile";
  v66[36] = @"ShortTermPredictionsFile";
  v67[36] = @"/var/db/gpsd/shortTermPredictions";
  v67[37] = @"/var/db/gpsd/rtistore";
  v66[37] = @"RTIFile";
  v66[38] = @"RavenOrbitFile";
  v67[38] = @"/var/db/gpsd/ravenorbitstore";
  v67[39] = &__kCFBooleanFalse;
  v66[39] = @"VerboseNvStore";
  v66[40] = @"VerboseCommDataSize";
  v67[40] = &__kCFBooleanFalse;
  v67[41] = &__kCFBooleanFalse;
  v66[41] = @"VerboseCommDataSniffer";
  v66[42] = @"PerformanceReportIntervalSeconds";
  v67[42] = &off_10017FCB8;
  v67[43] = &off_10017FCA0;
  v66[43] = @"RecoveryTestCase";
  v66[44] = @"GenericTestCase";
  v67[44] = &off_10017FCA0;
  v67[45] = &__kCFBooleanTrue;
  v66[45] = @"EnableGps";
  v66[46] = @"EnableQzss";
  v67[46] = &__kCFBooleanTrue;
  v67[47] = &__kCFBooleanTrue;
  v66[47] = @"EnableGlonass";
  v66[48] = @"EnableGalileo";
  v67[48] = &__kCFBooleanTrue;
  v66[49] = @"EnableBeidou";
  v13 = *(GpsdPlatformInfo::instance(0) + 8);
  if (v13 == 201 || v13 == 103)
  {
    v15 = &__kCFBooleanFalse;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  v67[49] = v15;
  v66[50] = @"EnableNavic";
  v16 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::supportsNavic(v16))
  {
    v17 = &__kCFBooleanTrue;
  }

  else
  {
    v17 = &__kCFBooleanFalse;
  }

  v67[50] = v17;
  v66[51] = @"EnableL5";
  if (*(GpsdPlatformInfo::instance(0) + 24))
  {
    v18 = &__kCFBooleanTrue;
  }

  else
  {
    v18 = &__kCFBooleanFalse;
  }

  v67[51] = v18;
  v66[52] = @"EnableCoexL5NotchFilter";
  v19 = GpsdPlatformInfo::instance(0);
  v20 = &__kCFBooleanFalse;
  if (*(v19 + 8) == 107)
  {
    v21 = GpsdPlatformInfo::instance(0);
    if (GpsdPlatformInfo::isPhone(v21))
    {
      v20 = &__kCFBooleanTrue;
    }

    else
    {
      v20 = &__kCFBooleanFalse;
    }
  }

  v67[52] = v20;
  v67[53] = &__kCFBooleanTrue;
  v66[53] = @"EnableCoexBitEnhancedFreqAsst";
  v66[54] = @"EnableCoexBitCdmaFineTimeAsst";
  v67[54] = &__kCFBooleanTrue;
  v67[55] = &__kCFBooleanTrue;
  v66[55] = @"EnableCoexBitBlankingGpsL1";
  v66[56] = @"EnableCoexBitBlankingGloL1";
  v67[56] = &__kCFBooleanFalse;
  v67[57] = &__kCFBooleanFalse;
  v66[57] = @"EnableCoexBitBlankingBdsB1I";
  v66[58] = @"CoexForceGpsL1Filter";
  v67[58] = &off_10017FCA0;
  v67[59] = &off_10017FCA0;
  v66[59] = @"CoexForceGloL1Filter";
  v66[60] = @"CoexForceB1IFilter";
  v67[60] = &off_10017FCA0;
  v66[61] = @"CoexUseB14LteFilterSettingsForB13";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v22 = &__kCFBooleanTrue;
  }

  else
  {
    v22 = &__kCFBooleanFalse;
  }

  v67[61] = v22;
  v67[62] = &__kCFBooleanTrue;
  v66[62] = @"EnableCoexBitStaticSpur";
  v66[63] = @"EnableCoexBitDynamicNotch";
  v66[64] = @"EnableCoexBitJammer";
  v67[63] = &__kCFBooleanFalse;
  v67[64] = &__kCFBooleanTrue;
  v66[65] = @"GroupDelayL1InCAChips";
  v23 = *(GpsdPlatformInfo::instance(0) + 8);
  v24 = 0.036;
  if (v23 != 202)
  {
    v24 = 0.0;
  }

  if (v23 == 201)
  {
    v24 = -7.149;
  }

  v25 = [NSNumber numberWithDouble:v24];
  v67[65] = v25;
  v66[66] = @"ExternalToChipL5GroupDelayMeters";
  v26 = GpsdPlatformInfo::instance(0);
  v27 = 0.0;
  if (*(v26 + 24) == 1)
  {
    v27 = *(v26 + 16);
  }

  v28 = [NSNumber numberWithDouble:v27];
  v67[66] = v28;
  v66[67] = @"GlonassPerFrequencyGroupDelayMeters";
  v29 = GpsdPlatformInfo::instance(0);
  GpsdPlatformInfo::glonassPerFrequencyGroupDelayMeters(v29, __p);
  v30 = vectorToNSArray(__p);
  v67[67] = v30;
  v66[68] = @"RavenExpected";
  v31 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::expectedToHaveRaven(v31))
  {
    v32 = &__kCFBooleanTrue;
  }

  else
  {
    v32 = &__kCFBooleanFalse;
  }

  v67[68] = v32;
  v66[69] = @"ForceFireExtensionsPlatform";
  v67[69] = &off_10017FCA0;
  v66[70] = @"UseInternalEmergencyStack";
  v33 = *(GpsdPlatformInfo::instance(0) + 8);
  if ((v33 - 301) < 2 || v33 == 107)
  {
    v35 = &__kCFBooleanTrue;
  }

  else
  {
    v35 = &__kCFBooleanFalse;
  }

  v67[70] = v35;
  v66[71] = @"UseNewGnssDeviceManager";
  v67[71] = &__kCFBooleanFalse;
  v66[72] = @"HasXtalFreqJumpRisk";
  if (*(GpsdPlatformInfo::instance(0) + 8) == 107)
  {
    v36 = &__kCFBooleanTrue;
  }

  else
  {
    v36 = &__kCFBooleanFalse;
  }

  v67[72] = v36;
  v66[73] = @"AllowAssistanceTimeTo10Milliseconds";
  if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) >= 2)
  {
    v37 = &__kCFBooleanFalse;
  }

  else
  {
    v37 = &__kCFBooleanTrue;
  }

  v67[73] = v37;
  v66[74] = @"DebugFeaturesBitmask";
  v67[74] = &off_10017FCA0;
  v66[75] = @"DebugSettingsString";
  v67[75] = &stru_10017F9A8;
  v66[76] = @"EnableReceivingFTA";
  v38 = GpsdPlatformInfo::instance(0);
  if (GpsdPlatformInfo::isEnableReceivingFineTimeAssistance(v38))
  {
    v39 = &__kCFBooleanTrue;
  }

  else
  {
    v39 = &__kCFBooleanFalse;
  }

  v67[76] = v39;
  v40 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:77];

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  [fDefaults registerDefaults:v40];
  v41 = [NSDictionary dictionaryWithContentsOfFile:@"Library/Managed Preferences/mobile/gpsd.plist"];
  v42 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543618;
    *&__p[4] = @"Library/Managed Preferences/mobile/gpsd.plist";
    *&__p[12] = 2114;
    *&__p[14] = v41;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "gpsd_plistpath: %{public}@ defaults %{public}@", __p, 0x16u);
  }

  if (v41)
  {
    v43 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "gpsd.plist exists", __p, 2u);
    }

    [fDefaults registerDefaults:v41];
  }

  has_internal_diagnostics = [fDefaults BOOLForKey:@"VendorLogForceCustomer"];
  if ((has_internal_diagnostics & 1) == 0)
  {
    if (*a1)
    {
      v63[0] = @"LogLevel";
      v45 = [NSNumber numberWithInt:8];
      v63[1] = @"VendorLogMaxDirectorySizeMB";
      v63[2] = @"VendorLogRotationSizeMB";
      v64[0] = v45;
      v64[1] = &off_10017FC58;
      v64[2] = &off_10017FC58;
      v64[3] = &off_10017FC70;
      v63[3] = @"VendorLogMaxNumberOfFiles";
      v63[4] = @"VendorLogAllToOsLog";
      if (*a1 == 1)
      {
        v46 = &__kCFBooleanFalse;
      }

      else
      {
        v46 = &__kCFBooleanTrue;
      }

      v64[4] = v46;
      v64[5] = &__kCFBooleanFalse;
      v63[5] = @"VendorLogLz4";
      v63[6] = @"VendorLogLzfse";
      v64[6] = &__kCFBooleanFalse;
      v64[7] = &__kCFBooleanFalse;
      v63[7] = @"VendorLogZlib";
      v63[8] = @"VerboseCommDataSize";
      v64[8] = &__kCFBooleanTrue;
      v47 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:9];

      [fDefaults registerDefaults:v47];
    }

    else if (([fDefaults BOOLForKey:@"VendorLogQA"] & 1) != 0 || objc_msgSend(fDefaults, "BOOLForKey:", @"VendorLogAllToOsLog"))
    {
      v48 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v48 > 4)
      {
        v49 = 6;
      }

      else
      {
        v49 = dword_100149970[v48];
      }

      v61[0] = @"LogLevel";
      v50 = [NSNumber numberWithInt:v49];
      v62[0] = v50;
      v62[1] = &off_10017FC58;
      v61[1] = @"VendorLogMaxDirectorySizeMB";
      v61[2] = @"VendorLogRotationSizeMB";
      v62[2] = &off_10017FC58;
      v62[3] = &off_10017FC70;
      v61[3] = @"VendorLogMaxNumberOfFiles";
      v61[4] = @"EnableProtobufBinaryLog";
      v62[4] = &__kCFBooleanTrue;
      v62[5] = &off_10017FD60;
      v61[5] = @"ProtobufLogRetentionDays";
      v61[6] = @"EnableInterfaceTelemetry";
      v62[6] = &__kCFBooleanTrue;
      v47 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:7];

      [fDefaults registerDefaults:v47];
    }

    else if ([fDefaults BOOLForKey:@"VendorLogRestrictedCarry"])
    {
      v52 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
      if (v52 >= 5)
      {
        v53 = 6;
      }

      else
      {
        v53 = dword_100149970[v52];
      }

      v59[0] = @"LogLevel";
      v55 = [NSNumber numberWithInt:v53];
      v60[0] = v55;
      v60[1] = &__kCFBooleanTrue;
      v59[1] = @"EnableInterfaceTelemetry";
      v59[2] = @"EnableProtobufBinaryLog";
      v60[2] = &__kCFBooleanTrue;
      v60[3] = &off_10017FD30;
      v59[3] = @"VendorLogMaxDirectorySizeMB";
      v59[4] = @"VendorLogMaxNumberOfFiles";
      v60[4] = &off_10017FD48;
      v47 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:5];

      [fDefaults registerDefaults:v47];
    }

    else
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (!has_internal_diagnostics)
      {
        goto LABEL_82;
      }

      v57[0] = @"LogLevel";
      v54 = [NSNumber numberWithInt:5];
      v58[0] = v54;
      v58[1] = &__kCFBooleanTrue;
      v57[1] = @"EnableInterfaceTelemetry";
      v57[2] = @"EnableProtobufBinaryLog";
      v58[2] = &__kCFBooleanTrue;
      v47 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];

      [fDefaults registerDefaults:v47];
    }
  }

LABEL_82:
  GpsdPreferences::dumpSettingsToLog(has_internal_diagnostics);

  return a1;
}

_DWORD *GpsdPreferences::setMode(int a1)
{
  result = GpsdPreferences::instance(a1);
  if (result)
  {
    return (*result == a1);
  }

  return result;
}

void GpsdPreferences::vendorLogDirectory(GpsdPreferences *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if (*this > 2)
  {
    if (v3 == 3)
    {
      v4 = "/var/root/gps_unittest_logs";
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      v4 = "/private/var/logs/BurnIn/gps";
      goto LABEL_13;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = "/var/root/gpstool_logs";
      goto LABEL_13;
    }

    if (v3 == 2)
    {
      v4 = "/var/root/gpsfactorytest_logs";
LABEL_13:

      std::string::basic_string[abi:ne200100]<0>(a2, v4);
      return;
    }
  }

  v5 = [fDefaults stringForKey:@"VendorLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a2, [v5 UTF8String]);
}

void GpsdPreferences::vendorLogDirectoryAssumingGpsd(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"VendorLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

id GpsdPreferences::vendorLogPrefixWithTimestamp(GpsdPreferences *this)
{
  if (*this == 3)
  {
    return 0;
  }

  else
  {
    return [fDefaults BOOLForKey:@"VendorLogPrefixWithTimestamp"];
  }
}

id GpsdPreferences::vendorLogMaxDirectorySizeMB(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"VendorLogMaxDirectorySizeMB"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&off_10017FC58 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t GpsdPreferences::vendorLogRotationSizeMB(GpsdPreferences *this)
{
  if (*this == 3)
  {
    return 2000;
  }

  v1 = [fDefaults integerForKey:@"VendorLogRotationSizeMB"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&off_10017FC58 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

id GpsdPreferences::vendorLogMaxNumberOfFiles(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"VendorLogMaxNumberOfFiles"];
  if (![fDefaults BOOLForKey:@"VendorLogQA"])
  {
    return v1;
  }

  LODWORD(result) = [&off_10017FC70 intValue];
  if (result <= v1)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

void GpsdPreferences::forceGnssDeviceLibraryName(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"ForceGnssDeviceLibraryName"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

uint64_t integerToHalLogLevel(unsigned int a1)
{
  if (a1 < 9)
  {
    return dword_100149984[a1 & 0xF];
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid LogLevel preference %{public}d", v4, 8u);
  }

  return 3;
}

uint64_t GpsdPreferences::getLogLevel(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"LogLevel"];

  return integerToHalLogLevel(v1);
}

uint64_t GpsdPreferences::getSecondaryLogLevel(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"SecondaryLogLevel"];

  return integerToHalLogLevel(v1);
}

uint64_t GpsdPreferences::nmeaMaskOverride(GpsdPreferences *this)
{
  v1 = [fDefaults stringForKey:@"NmeaMaskOverride"];
  v6 = 0;
  v2 = [NSScanner scannerWithString:v1];
  [v2 scanHexLongLong:&v6];
  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Pref: kNmeaMaskOverride = 0x%{public}llx", buf, 0xCu);
  }

  v4 = v6;

  return v4;
}

uint64_t GpsdPreferences::maxSchedulerQos(GpsdPreferences *this)
{
  v1 = [fDefaults integerForKey:@"MaxSchedulerQos"];
  v2 = GpsdLogObjectGeneral;
  v3 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO);
  if (v1 == 2)
  {
    if (v3)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,UserInteractive", v6, 2u);
    }

    return 33;
  }

  else if (v1 == 1)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,UserInitiated", buf, 2u);
    }

    return 25;
  }

  else
  {
    if (v3)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Pref,maxSchedulerQos,Default", v5, 2u);
    }

    return 21;
  }
}

void GpsdPreferences::protobufLogDirectory(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"ProtobufLogDirectory"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

void GpsdPreferences::nvStorePath(GpsdPreferences *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = [fDefaults stringForKey:@"DatabasePath"];
  v5 = v4;
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, [v4 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, (&off_10017BC68)[*this]);
  }
}

void GpsdPreferences::nvStoreFile(GpsdPreferences *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if ((*this - 1) < 2)
  {
    v4 = "/var/root/gpstool_nvstore.bin";
    goto LABEL_7;
  }

  if (v3 == 4)
  {
    v4 = "/private/var/logs/BurnIn/gps/nvstore.bin";
    goto LABEL_7;
  }

  if (v3 == 3)
  {
    v4 = "/var/mobile/CoreGPS_UnitTests_nvstore.bin";
LABEL_7:

    std::string::basic_string[abi:ne200100]<0>(a2, v4);
    return;
  }

  v5 = [fDefaults stringForKey:@"NvStoreFile"];
  std::string::basic_string[abi:ne200100]<0>(a2, [v5 UTF8String]);
}

void GpsdPreferences::recoveryTestCase(GpsdPreferences *this)
{
  v1 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined", buf, 2u);
    v1 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v6 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdPreferences.mm";
    v7 = 1026;
    v8 = 685;
    v9 = 2082;
    v10 = "recoveryTestCase";
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(&v4, "assert");
  std::string::basic_string[abi:ne200100]<0>(&v3, "recoveryTestCase");
  std::string::basic_string[abi:ne200100]<0>(&v2, "Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined");
  gpsd::util::triggerDiagnosticReport(&v4, &v3, &v2);
  std::string::~string(&v2);
  std::string::~string(&v3);
  std::string::~string(&v4);
  __assert_rtn("recoveryTestCase", "GpsdPreferences.mm", 685, "false && Checking recoveryTestCase value is not permitted unless GPSD_DEBUGONLY_PERMIT_TEST_CASES is defined");
}

void sub_100113624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

unint64_t GpsdPreferences::determineLibindusFinalCoExConfig(GpsdPreferences *this, uint64_t a2, int a3)
{
  v5 = GpsdPlatformInfo::instance(0);
  LibindusPlatformCo = GpsdPlatformInfo::getLibindusPlatformCoExConfigDefault(v5);
  v7 = LibindusPlatformCo;
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = LibindusPlatformCo;
  }

  v9 = [fDefaults objectForKey:@"CREnableCoexBlanking2G"];

  if (v9)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexBlanking2G"])
    {
      v8 |= 1uLL;
    }

    else
    {
      v8 &= ~1uLL;
    }
  }

  v10 = [fDefaults objectForKey:@"CREnableCoexBlankingNR"];

  if (v10)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexBlankingNR"])
    {
      v8 |= 2uLL;
    }

    else
    {
      v8 &= ~2uLL;
    }
  }

  v11 = [fDefaults objectForKey:@"CREnableCoexLTEB13"];

  if (v11)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexLTEB13"])
    {
      v8 |= 4uLL;
    }

    else
    {
      v8 &= ~4uLL;
    }
  }

  v12 = [fDefaults objectForKey:@"CREnableCoexLTEB14"];

  if (v12)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexLTEB14"])
    {
      v8 |= 8uLL;
    }

    else
    {
      v8 &= ~8uLL;
    }
  }

  v13 = [fDefaults objectForKey:@"CREnableCoexEnhancedAssistance"];

  if (v13)
  {
    if ([fDefaults BOOLForKey:@"CREnableCoexEnhancedAssistance"])
    {
      v8 |= 0x10uLL;
    }

    else
    {
      v8 &= ~0x10uLL;
    }
  }

  v14 = [fDefaults objectForKey:@"CREnableSTWMitigation"];

  if (v14 && ![fDefaults BOOLForKey:@"CREnableSTWMitigation"])
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFDFLL;
  }

  else
  {
    v15 = v8 | 0x20;
  }

  v16 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    v17 = "No";
    v19 = 134349826;
    v20 = v15;
    v21 = 2050;
    if (a3)
    {
      v17 = "Yes";
    }

    v22 = v7;
    v23 = 2082;
    v24 = v17;
    v25 = 2050;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#gdm,decodeCoexConfig,coexConfigPostOverride,0x%{public}llx,coexConfigDefault,0x%{public}llx,isCLOverride,%{public}s,coexConfigCLOverride,0x%{public}llx", &v19, 0x2Au);
  }

  return v15;
}

unint64_t GpsdPreferences::libolafCoexFlagsBitfield(GpsdPreferences *this)
{
  v1 = [fDefaults BOOLForKey:@"EnableCoexBitEnhancedFreqAsst"];
  v23 = [fDefaults BOOLForKey:@"EnableCoexBitCdmaFineTimeAsst"];
  v24 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingGpsL1"];
  v2 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingGloL1"];
  v3 = [fDefaults BOOLForKey:@"EnableCoexBitBlankingBdsB1I"];
  v4 = [fDefaults BOOLForKey:@"EnableCoexBitStaticSpur"];
  v5 = [fDefaults BOOLForKey:@"EnableCoexBitDynamicNotch"];
  v6 = [fDefaults BOOLForKey:@"EnableCoexBitJammer"];
  v7 = [fDefaults integerForKey:@"CoexForceGpsL1Filter"];
  v8 = [fDefaults integerForKey:@"CoexForceGloL1Filter"];
  v9 = [fDefaults integerForKey:@"CoexForceB1IFilter"];
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 67242752;
    v26 = v1;
    v27 = 1026;
    v28 = v23;
    v29 = 1026;
    v30 = v24;
    v31 = 1026;
    v32 = v2;
    v33 = 1026;
    v34 = v3;
    v35 = 1026;
    v36 = v7;
    v37 = 1026;
    v38 = v8;
    v39 = 1026;
    v40 = v9;
    v41 = 1026;
    v42 = v4;
    v43 = 1026;
    v44 = v5;
    v45 = 1026;
    v46 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#coex,eFA,%{public}d,FTA,%{public}d,blankingGPS/GLO/B1I,%{public}d,%{public}d,%{public}d,forceFilterGPS/GLO/B1I,%{public}d,%{public}d,%{public}d,enableSpurStatic,%{public}d,enableSpurDynamic,%{public}d,enableJammer,%{public}d", buf, 0x44u);
  }

  if (v7 - 1 > 3)
  {
    v11 = 30720;
  }

  else
  {
    v11 = qword_1001499A8[v7 - 1];
  }

  if (v9 - 1 > 2)
  {
    v12 = 917504;
  }

  else
  {
    v12 = qword_1001499C8[v9 - 1];
  }

  v13 = 98304;
  if (v8 == 2)
  {
    v13 = 0x10000;
  }

  if (v8 == 1)
  {
    v13 = 0x8000;
  }

  v14 = 0x100000;
  if (!(v7 | v8))
  {
    v14 = (v9 != 0) << 20;
  }

  v15 = 4;
  if (!v1)
  {
    v15 = 0;
  }

  v16 = 8;
  if (!v4)
  {
    v16 = 0;
  }

  v17 = 16;
  if (!v5)
  {
    v17 = 0;
  }

  v18 = 32;
  if (!v6)
  {
    v18 = 0;
  }

  v19 = 256;
  if (!v24)
  {
    v19 = 0;
  }

  v20 = 512;
  if (!v2)
  {
    v20 = 0;
  }

  v21 = 1024;
  if (!v3)
  {
    v21 = 0;
  }

  return v15 | v23 | v19 | v20 | v21 | v16 | v17 | v18 | v13 | v14 | v11 | v12;
}

void GpsdPreferences::debugSettingsString(_BYTE *a1@<X8>)
{
  v3 = [fDefaults stringForKey:@"DebugSettingsString"];
  std::string::basic_string[abi:ne200100]<0>(a1, [v3 UTF8String]);
}

uint64_t GpsdPlatformInfoHardware::detectHardware(GpsdPlatformInfoHardware *this)
{
  v3 = xmmword_1001499E0;
  v4 = 710807826;
  if (MGIsDeviceOfType())
  {
    return 10401;
  }

  v4 = 470738981;
  v3 = xmmword_1001499F4;
  if (MGIsDeviceOfType())
  {
    return 10401;
  }

  v4 = -2085056298;
  v3 = xmmword_100149A08;
  if (MGIsDeviceOfType())
  {
    return 10403;
  }

  v4 = 1860682089;
  v3 = xmmword_100149A1C;
  if (MGIsDeviceOfType())
  {
    return 10403;
  }

  v4 = -338255497;
  v3 = xmmword_100149A30;
  if (MGIsDeviceOfType())
  {
    return 10509;
  }

  v4 = 152704997;
  v3 = xmmword_100149A44;
  if (MGIsDeviceOfType())
  {
    return 10509;
  }

  v4 = 283967174;
  v3 = xmmword_100149A58;
  if (MGIsDeviceOfType())
  {
    return 10511;
  }

  v4 = -1040127899;
  v3 = xmmword_100149A6C;
  if (MGIsDeviceOfType())
  {
    return 10511;
  }

  v4 = -1742178852;
  v3 = xmmword_100149A80;
  if (MGIsDeviceOfType())
  {
    return 10501;
  }

  v4 = 2146530832;
  v3 = xmmword_100149A94;
  if (MGIsDeviceOfType())
  {
    return 10501;
  }

  v4 = 1330813729;
  v3 = xmmword_100149AA8;
  if (MGIsDeviceOfType())
  {
    return 10503;
  }

  v4 = 617174804;
  v3 = xmmword_100149ABC;
  if (MGIsDeviceOfType())
  {
    return 10503;
  }

  v4 = -871113647;
  v3 = xmmword_100149AD0;
  if (MGIsDeviceOfType())
  {
    return 10601;
  }

  v4 = 1530707451;
  v3 = xmmword_100149AE4;
  if (MGIsDeviceOfType())
  {
    return 10601;
  }

  v4 = 1472775220;
  v3 = xmmword_100149AF8;
  if (MGIsDeviceOfType())
  {
    return 10603;
  }

  v4 = 483476120;
  v3 = xmmword_100149B0C;
  if (MGIsDeviceOfType())
  {
    return 10603;
  }

  v4 = 282158961;
  v3 = xmmword_100149B20;
  if (MGIsDeviceOfType())
  {
    return 10606;
  }

  v4 = 56502976;
  v3 = xmmword_100149B34;
  if (MGIsDeviceOfType())
  {
    return 10606;
  }

  v4 = -961843768;
  v3 = xmmword_100149B48;
  if (MGIsDeviceOfType())
  {
    return 10608;
  }

  v4 = 1282132887;
  v3 = xmmword_100149B5C;
  if (MGIsDeviceOfType())
  {
    return 10608;
  }

  v4 = -441172408;
  v3 = xmmword_100149B70;
  if (MGIsDeviceOfType())
  {
    return 10610;
  }

  v4 = 1326690998;
  v3 = xmmword_100149B84;
  if (MGIsDeviceOfType())
  {
    return 10610;
  }

  v4 = 1756484512;
  v3 = xmmword_100149B98;
  if (MGIsDeviceOfType())
  {
    return 10612;
  }

  v4 = -126099363;
  v3 = xmmword_100149BAC;
  if (MGIsDeviceOfType())
  {
    return 10612;
  }

  v4 = -1092155788;
  v3 = xmmword_100149BC0;
  if (MGIsDeviceOfType())
  {
    return 10614;
  }

  v4 = 763775061;
  v3 = xmmword_100149BD4;
  if (MGIsDeviceOfType())
  {
    return 10614;
  }

  v4 = -63049871;
  v3 = xmmword_100149BE8;
  if (MGIsDeviceOfType())
  {
    return 10616;
  }

  v4 = -557458837;
  v3 = xmmword_100149BFC;
  if (MGIsDeviceOfType())
  {
    return 10616;
  }

  v4 = 1730000236;
  v3 = xmmword_100149C10;
  if (MGIsDeviceOfType())
  {
    return 10618;
  }

  v4 = 1530338216;
  v3 = xmmword_100149C24;
  if (MGIsDeviceOfType())
  {
    return 10701;
  }

  v4 = 406601745;
  v3 = xmmword_100149C38;
  if (MGIsDeviceOfType())
  {
    return 10701;
  }

  v4 = 1654218604;
  v3 = xmmword_100149C4C;
  if (MGIsDeviceOfType())
  {
    return 10703;
  }

  v4 = -1930811061;
  v3 = xmmword_100149C60;
  if (MGIsDeviceOfType())
  {
    return 10703;
  }

  v4 = -182498503;
  v3 = xmmword_100149C74;
  if (MGIsDeviceOfType())
  {
    return 10705;
  }

  v4 = 841005628;
  v3 = xmmword_100149C88;
  if (MGIsDeviceOfType())
  {
    return 10708;
  }

  v4 = -2030489149;
  v3 = xmmword_100149C9C;
  if (MGIsDeviceOfType())
  {
    return 10708;
  }

  v4 = 1219348060;
  v3 = xmmword_100149CB0;
  if (MGIsDeviceOfType())
  {
    return 10710;
  }

  v4 = 223445260;
  v3 = xmmword_100149CC4;
  if (MGIsDeviceOfType())
  {
    return 10710;
  }

  v4 = -1921398171;
  v3 = xmmword_100149CD8;
  if (MGIsDeviceOfType())
  {
    return 10717;
  }

  v4 = 373548423;
  v3 = xmmword_100149CEC;
  if (MGIsDeviceOfType())
  {
    return 10717;
  }

  v4 = -936391310;
  v3 = xmmword_100149D00;
  if (MGIsDeviceOfType())
  {
    return 10719;
  }

  v4 = 2140507472;
  v3 = xmmword_100149D14;
  if (MGIsDeviceOfType())
  {
    return 10719;
  }

  v4 = -1384522500;
  v3 = xmmword_100149D28;
  if (MGIsDeviceOfType())
  {
    return 10712;
  }

  v4 = 1815762806;
  v3 = xmmword_100149D3C;
  if (MGIsDeviceOfType())
  {
    return 10713;
  }

  v4 = -782763850;
  v3 = xmmword_100149D50;
  if (MGIsDeviceOfType())
  {
    return 10713;
  }

  v4 = -652049476;
  v3 = xmmword_100149D64;
  if (MGIsDeviceOfType())
  {
    return 10715;
  }

  v4 = -1897771119;
  v3 = xmmword_100149D78;
  if (MGIsDeviceOfType())
  {
    return 10715;
  }

  v4 = -232427879;
  v3 = xmmword_100149D8C;
  if (MGIsDeviceOfType())
  {
    return 21102;
  }

  v4 = -427474227;
  v3 = xmmword_100149DA0;
  if (MGIsDeviceOfType())
  {
    return 21106;
  }

  v4 = 1477534141;
  v3 = xmmword_100149DB4;
  if (MGIsDeviceOfType())
  {
    return 21106;
  }

  v4 = -1843102369;
  v3 = xmmword_100149DC8;
  if (MGIsDeviceOfType())
  {
    return 21108;
  }

  v4 = -61007701;
  v3 = xmmword_100149DDC;
  if (MGIsDeviceOfType())
  {
    return 21203;
  }

  v4 = -235416490;
  v3 = xmmword_100149DF0;
  if (MGIsDeviceOfType())
  {
    return 21205;
  }

  v4 = -820493242;
  v3 = xmmword_100149E04;
  if (MGIsDeviceOfType())
  {
    return 21201;
  }

  v4 = -121925081;
  v3 = xmmword_100149E18;
  if (MGIsDeviceOfType())
  {
    return 21210;
  }

  v4 = -1820426635;
  v3 = xmmword_100149E2C;
  if (MGIsDeviceOfType())
  {
    return 21502;
  }

  v4 = -937652876;
  v3 = xmmword_100149E40;
  if (MGIsDeviceOfType())
  {
    return 21503;
  }

  v4 = 169342588;
  v3 = xmmword_100149E54;
  if (MGIsDeviceOfType())
  {
    return 21705;
  }

  v4 = 1874287171;
  v3 = xmmword_100149E68;
  if (MGIsDeviceOfType())
  {
    return 21603;
  }

  v4 = -781324731;
  v3 = xmmword_100149E7C;
  if (MGIsDeviceOfType())
  {
    return 21602;
  }

  v4 = 431774303;
  v3 = xmmword_100149E90;
  if (MGIsDeviceOfType())
  {
    return 21603;
  }

  v4 = 1214880059;
  v3 = xmmword_100149EA4;
  if (MGIsDeviceOfType())
  {
    return 21701;
  }

  v4 = 426359977;
  v3 = xmmword_100149EB8;
  if (MGIsDeviceOfType())
  {
    return 21702;
  }

  v4 = -1354433901;
  v3 = xmmword_100149ECC;
  if (MGIsDeviceOfType())
  {
    return 21801;
  }

  v4 = 1021543808;
  v3 = xmmword_100149EE0;
  if (MGIsDeviceOfType())
  {
    return 21802;
  }

  v4 = 1459208360;
  v3 = xmmword_100149EF4;
  if (MGIsDeviceOfType())
  {
    return 21804;
  }

  v4 = -1841712216;
  v3 = xmmword_100149F08;
  if (MGIsDeviceOfType())
  {
    return 31102;
  }

  v4 = 213746202;
  v3 = xmmword_100149F1C;
  if (MGIsDeviceOfType())
  {
    return 31104;
  }

  v4 = 300442574;
  v3 = xmmword_100149F30;
  if (MGIsDeviceOfType())
  {
    return 30808;
  }

  v4 = 440949464;
  v3 = xmmword_100149F44;
  if (MGIsDeviceOfType())
  {
    return 31302;
  }

  v4 = -762483149;
  v3 = xmmword_100149F58;
  if (MGIsDeviceOfType())
  {
    return 30804;
  }

  v4 = -1294188889;
  v3 = xmmword_100149F6C;
  if (MGIsDeviceOfType())
  {
    return 30808;
  }

  v4 = -1926937532;
  v3 = xmmword_100149F80;
  if (MGIsDeviceOfType())
  {
    return 30804;
  }

  v4 = -2132668294;
  v3 = xmmword_100149F94;
  if (MGIsDeviceOfType())
  {
    return 30712;
  }

  v4 = -858079590;
  v3 = xmmword_100149FA8;
  if (MGIsDeviceOfType())
  {
    return 31107;
  }

  v4 = -1675932945;
  v3 = xmmword_100149FBC;
  if (MGIsDeviceOfType())
  {
    return 30812;
  }

  v4 = 300130091;
  v3 = xmmword_100149FD0;
  if (MGIsDeviceOfType())
  {
    return 30810;
  }

  v4 = 646100384;
  v3 = xmmword_100149FE4;
  if (MGIsDeviceOfType())
  {
    return 31202;
  }

  v4 = -2071977621;
  v3 = xmmword_100149FF8;
  if (MGIsDeviceOfType())
  {
    return 31702;
  }

  v4 = -1597604211;
  v3 = xmmword_10014A00C;
  if (MGIsDeviceOfType())
  {
    return 31704;
  }

  v2 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LODWORD(v3) = 67109120;
    DWORD1(v3) = MGGetProductType();
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,Unknown or unsupported hardware,%x", &v3, 8u);
    return 0;
  }

  return result;
}

uint64_t GpsdHardwareConfig::GpsdHardwareConfig(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2 > 21200)
  {
    if (a2 <= 30711)
    {
      if (a2 <= 21700)
      {
        if ((a2 - 21201) <= 9 && ((1 << (a2 + 47)) & 0x215) != 0)
        {
          goto LABEL_45;
        }

        if ((a2 - 21502) < 2)
        {
          *(a1 + 16) = 1;
          v8 = 0x401799999999999ALL;
LABEL_66:
          *(a1 + 8) = v8;
          goto LABEL_67;
        }

        if ((a2 - 21602) >= 2)
        {
          return a1;
        }

LABEL_49:
        *(a1 + 16) = 1;
        *(a1 + 8) = 0x401799999999999ALL;
        *(a1 + 32) = 1;
        *(a1 + 24) = 0x4039000000000000;
        goto LABEL_67;
      }

      if (a2 > 21800)
      {
        if ((a2 - 21801) < 2)
        {
          goto LABEL_49;
        }

        if ((a2 - 21804) >= 2)
        {
          return a1;
        }
      }

      else
      {
        if ((a2 - 21701) < 2)
        {
          goto LABEL_49;
        }

        if (a2 != 21705)
        {
          if (a2 != 21706)
          {
            return a1;
          }

          *(a1 + 16) = 1;
          *(a1 + 8) = 0;
          v5 = 302;
LABEL_72:
          *a1 = v5;
          return a1;
        }
      }

LABEL_60:
      *(a1 + 16) = 1;
      *(a1 + 8) = 0;
      v5 = 301;
      goto LABEL_72;
    }

    if (a2 <= 31201)
    {
      if (a2 <= 30809)
      {
        if (a2 != 30712 && a2 != 30804 && a2 != 30808)
        {
          return a1;
        }

        goto LABEL_56;
      }

      if ((a2 - 31102) <= 5 && ((1 << (a2 - 126)) & 0x25) != 0)
      {
LABEL_56:
        v5 = 201;
        goto LABEL_72;
      }

      if (a2 != 30810 && a2 != 30812)
      {
        return a1;
      }

LABEL_45:
      v5 = 202;
      goto LABEL_72;
    }

    if (a2 <= 31610)
    {
      if (a2 == 31202)
      {
        goto LABEL_56;
      }

      if (a2 == 31302)
      {
        goto LABEL_45;
      }

      v6 = 31609;
    }

    else if (a2 > 31703)
    {
      if (a2 == 31704)
      {
        goto LABEL_60;
      }

      v6 = 31802;
    }

    else
    {
      if (a2 == 31611)
      {
        goto LABEL_60;
      }

      v6 = 31702;
    }

    if (a2 != v6)
    {
      return a1;
    }

    goto LABEL_60;
  }

  if (a2 > 10700)
  {
    if ((a2 - 10701) <= 0x12)
    {
      v3 = 1 << (a2 + 51);
      if ((v3 & 0x552E5) != 0)
      {
        goto LABEL_67;
      }

      if ((v3 & 0x810) != 0)
      {
LABEL_65:
        *(a1 + 16) = 1;
        v8 = 0x3FF3333333333333;
        goto LABEL_66;
      }
    }

    if ((a2 - 21102) > 6 || ((1 << (a2 - 110)) & 0x51) == 0)
    {
      return a1;
    }

    goto LABEL_56;
  }

  if (a2 > 10600)
  {
    v4 = a2 - 110;
    if ((a2 - 10606) > 0xC)
    {
      goto LABEL_68;
    }

    if (((1 << v4) & 0x550) == 0)
    {
      if (((1 << v4) & 5) != 0)
      {
        v5 = 106;
        goto LABEL_72;
      }

      if (a2 == 10618)
      {
        goto LABEL_65;
      }

LABEL_68:
      if (a2 != 10601)
      {
        v7 = 10603;
LABEL_70:
        if (a2 != v7)
        {
          return a1;
        }
      }

LABEL_71:
      v5 = 103;
      goto LABEL_72;
    }

LABEL_67:
    v5 = 107;
    goto LABEL_72;
  }

  if (a2 > 10500)
  {
    if ((a2 - 10501) > 0xA || ((1 << (a2 - 5)) & 0x505) == 0)
    {
      return a1;
    }

    goto LABEL_71;
  }

  if (a2)
  {
    if (a2 != 10401)
    {
      v7 = 10403;
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v9 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v11[0] = 67240192;
    v11[1] = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,device,%{public}d,unknown/unsupported", v11, 8u);
  }

  return a1;
}

unint64_t GpsdHardwareConfig::getEarliestBornYear(GpsdHardwareConfig *this)
{
  v1 = *this;
  v2 = &_mh_execute_header;
  v3 = 2017;
  v4 = 2018;
  v5 = 2023;
  v6 = 2026;
  if (*this != 302)
  {
    v6 = 2017;
  }

  if (v1 != 301)
  {
    v5 = v6;
  }

  if (v1 != 202)
  {
    v4 = v5;
  }

  if (v1 == 107)
  {
    v2 = &_mh_execute_header;
    v3 = 2021;
  }

  if (v1 == 106)
  {
    v2 = &_mh_execute_header;
    v3 = 2020;
  }

  if (!v1)
  {
    v2 = 0;
    v3 = 1792;
  }

  v7 = v1 <= 201;
  if (v1 <= 201)
  {
    v8 = v2;
  }

  else
  {
    v8 = &_mh_execute_header;
  }

  if (v7)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  return v9 | v8;
}

BOOL GpsdPlatformInfo::isGpsdSupported(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  if ((v1 - 201) < 2)
  {
    return 1;
  }

  v3 = v1 - 103;
  v4 = (v1 - 301) < 2;
  v5 = v3 >= 4;
  v7 = v3 == 4;
  v6 = (1 << v3) & 0x19;
  v7 = !v7 && v5 || v6 == 0;
  return !v7 || v4;
}

uint64_t GpsdPlatformInfo::isPhone(GpsdPlatformInfo *this)
{
  if (qword_100180FF8 != -1)
  {
    dispatch_once(&qword_100180FF8, &__block_literal_global_4);
  }

  return _MergedGlobals_5;
}

void ___ZN16GpsdPlatformInfo7isPhoneEv_block_invoke(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPhone"))
    {
      _MergedGlobals_5 = 1;
    }

    CFRelease(v2);
  }
}

void GpsdPlatformInfo::vendorDylibFullPathName(GpsdPlatformInfo *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if ((v3 - 201) <= 1)
  {
    v4 = "/usr/lib/libolaf.dylib";
LABEL_11:

    std::string::basic_string[abi:ne200100]<0>(a2, v4);
    return;
  }

  if (v3 == 107)
  {
    v4 = "/usr/lib/libfire7.dylib";
    goto LABEL_11;
  }

  if (GpsdPlatformInfo::isLibgll6(this))
  {
    v4 = "/usr/lib/libfire6.dylib";
    goto LABEL_11;
  }

  if (GpsdPlatformInfo::isLibgll3(this))
  {
    v4 = "/usr/lib/libfire3.dylib";
    goto LABEL_11;
  }

  if ((*(this + 2) - 301) <= 1)
  {
    v4 = "/usr/lib/libindus.dylib";
    goto LABEL_11;
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "PlatformInfo,unknown vendorDylibFullPathName", v7, 2u);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

BOOL GpsdPlatformInfo::isLibgll6(GpsdPlatformInfo *this)
{
  if (*(this + 2) == 106)
  {
    return 1;
  }

  v3 = GpsdPreferences::instance(0);
  v4 = GpsdPreferences::isRavenExpected(v3);
  result = 0;
  if (v4)
  {
    return *(this + 2) == 103;
  }

  return result;
}

uint64_t GpsdPlatformInfo::isLibgll3(GpsdPlatformInfo *this)
{
  if (*(this + 2) != 103)
  {
    return 0;
  }

  v1 = GpsdPreferences::instance(0);
  return GpsdPreferences::isRavenExpected(v1) ^ 1;
}

BOOL GpsdPlatformInfo::isEnableReceivingFineTimeAssistance(GpsdPlatformInfo *this)
{
  if (*(this + 2) != 301)
  {
    return 0;
  }

  if (qword_100180FF8 != -1)
  {
    dispatch_once(&qword_100180FF8, &__block_literal_global_4);
  }

  return (_MergedGlobals_5 & 1) != 0;
}

uint64_t GpsdPlatformInfo::expectedToHaveRaven(GpsdPlatformInfo *this)
{
  v2 = *(this + 2);
  if ((v2 - 301) < 2 || (v2 - 201) <= 1)
  {
    if (qword_100180FF8 != -1)
    {
      dispatch_once(&qword_100180FF8, &__block_literal_global_4);
    }

    if (_MergedGlobals_5)
    {
      return 1;
    }

    v2 = *(this + 2);
  }

  v3 = v2 - 103;
  v4 = v3 > 4;
  v5 = (1 << v3) & 0x19;
  if (!v4 && v5 != 0)
  {
    if (qword_100180FF8 != -1)
    {
      dispatch_once(&qword_100180FF8, &__block_literal_global_4);
    }

    if (_MergedGlobals_5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t GpsdPlatformInfo::supportsNavic(GpsdPlatformInfo *this)
{
  if (qword_100180FF8 != -1)
  {
    dispatch_once(&qword_100180FF8, &__block_literal_global_4);
  }

  if (_MergedGlobals_5 != 1)
  {
    return 0;
  }

  v2 = *(this + 2);
  result = 1;
  if ((v2 - 301) >= 2 && v2 != 107)
  {
    return 0;
  }

  return result;
}

double GpsdPlatformInfo::groupDelayL1InCAChips(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  result = 0.036;
  if (v1 != 202)
  {
    result = 0.0;
  }

  if (v1 == 201)
  {
    return -7.149;
  }

  return result;
}

double GpsdPlatformInfo::externalToChipL5GroupDelayMeters(GpsdPlatformInfo *this)
{
  result = 0.0;
  if (*(this + 24) == 1)
  {
    return *(this + 2);
  }

  return result;
}

void GpsdPlatformInfo::glonassPerFrequencyGroupDelayMeters(GpsdPlatformInfo *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 == 107)
  {
    v4 = 15.0;
    if (*(this + 40) == 1)
    {
      v4 = *(this + 4);
    }

    v5 = vdupq_lane_s64(COERCE__INT64(v4 + -520.569214), 0);
    v14 = vaddq_f64(v5, xmmword_10014A060);
    v15 = vaddq_f64(v5, xmmword_10014A070);
    v16 = vaddq_f64(v5, xmmword_10014A080);
    v17 = vaddq_f64(v5, xmmword_10014A090);
    v18 = vaddq_f64(v5, xmmword_10014A0A0);
    *&v19 = v4 + -520.569214;
    *(&v19 + 1) = v4 + -520.569214 + 0.1;
    *&v20 = *(&v19 + 1);
    *(&v20 + 1) = *(&v19 + 1);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>();
  }

  if ((v3 - 301) > 1)
  {
    goto LABEL_23;
  }

  v6 = *this;
  if (*this <= 31610)
  {
    if (v6 == 21705 || v6 == 21804)
    {
      v9 = &xmmword_10014A0B0;
      goto LABEL_20;
    }

    v7 = 31609;
    goto LABEL_18;
  }

  if (v6 > 31703)
  {
    if (v6 != 31704)
    {
      v7 = 31802;
      goto LABEL_18;
    }

LABEL_19:
    v9 = &xmmword_10014A120;
LABEL_20:
    v10 = v9[5];
    v18 = v9[4];
    v19 = v10;
    v20 = v9[6];
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v12 = v9[3];
    v16 = v9[2];
    v17 = v12;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>();
  }

  if (v6 == 31611)
  {
    goto LABEL_19;
  }

  v7 = 31702;
LABEL_18:
  if (v6 == v7)
  {
    goto LABEL_19;
  }

  v13 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v14.f64[0]) = 67240192;
    HIDWORD(v14.f64[0]) = v6;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "glonassPerFrequencyGroupDelayMeters,Unexpected hardware,%{public}d", &v14, 8u);
  }

LABEL_23:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

double GpsdPlatformInfo::getNonAsicPowerParameters(GpsdPlatformInfo *this)
{
  v1 = *this;
  result = 0.0;
  if (*this > 31610)
  {
    if (v1 > 31703)
    {
      v3 = v1 == 31704;
      v4 = 31802;
    }

    else
    {
      v3 = v1 == 31611;
      v4 = 31702;
    }

    if (v3 || v1 == v4)
    {
      return 1.9;
    }
  }

  else if (v1 > 21804)
  {
    if (v1 == 21805 || v1 == 31609)
    {
      return 1.9;
    }
  }

  else if (v1 == 21705 || v1 == 21804)
  {
    return 1.9;
  }

  return result;
}

BOOL GpsdPlatformInfo::usesPcie(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 202;
  return v2 < 2 || v3;
}

BOOL GpsdPlatformInfo::usesResetGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

BOOL GpsdPlatformInfo::usesTimeMarkGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

BOOL GpsdPlatformInfo::usesAsyncCommRead(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 107 || v1 == 202;
  return v2 < 2 || v3;
}

BOOL GpsdPlatformInfo::usesTimeMarkPciDoorbell(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 - 301;
  v3 = v1 == 107 || v1 == 202;
  return v2 < 2 || v3;
}

BOOL GpsdPlatformInfo::usesGpio(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v2 = v1 == 201;
  if (v1 == 106)
  {
    v2 = 1;
  }

  return v1 == 103 || v2;
}

uint64_t GpsdPlatformInfo::getLibindusPlatformCoExConfigDefault(GpsdPlatformInfo *this)
{
  v1 = *this;
  result = 61;
  if (v1 <= 31701)
  {
    v4 = (v1 - 21705) >= 2;
    v3 = v1 - 21804;
    v4 = v4 && v3 >= 2;
    if (!v4)
    {
      return result;
    }

    return 32;
  }

  if (v1 != 31702 && v1 != 31704)
  {
    return 32;
  }

  return result;
}

void ___ZN16GpsdPlatformInfo8instanceEN24GpsdPlatformInfoHardware8HardwareE_block_invoke(GpsdPlatformInfoHardware *a1)
{
  if (!*(a1 + 8))
  {
    v1 = GpsdPlatformInfoHardware::detectHardware(a1);
    v2 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 67240448;
      v3[1] = v1;
      v4 = 1026;
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PlatformInfo,Product type detected,%{public}d,isInternal,%{public}d", v3, 0xEu);
    }
  }

  operator new();
}

GpsdPlatformInfo *GpsdPlatformInfo::GpsdPlatformInfo(GpsdPlatformInfo *a1, int a2)
{
  *a1 = a2;
  GpsdHardwareConfig::GpsdHardwareConfig(a1 + 8, a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  GpsdPlatformInfo::checkVendorLibs(a1);
  GpsdPlatformInfo::readMlbBornOnYww(a1);
  return a1;
}

void GpsdPlatformInfo::checkVendorLibs(GpsdPlatformInfo *this)
{
  v1 = *(this + 2);
  v3 = (v1 - 103) <= 4 && ((1 << (v1 - 103)) & 0x19) != 0 || (v1 - 201) < 2;
  if ((v1 - 301) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v4 >= 2)
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,conflicting vendor libs", buf, 2u);
      v8 = GpsdLogObjectGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Util/GpsdPlatformInfo.mm";
      v14 = 1026;
      v15 = 605;
      v16 = 2082;
      v17 = "checkVendorLibs";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", buf, 0x1Cu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v11, "assert");
    std::string::basic_string[abi:ne200100]<0>(&v10, "checkVendorLibs");
    std::string::basic_string[abi:ne200100]<0>(&v9, "GpsdPlatformInfo,conflicting vendor libs");
    gpsd::util::triggerDiagnosticReport(&v11, &v10, &v9);
    std::string::~string(&v9);
    std::string::~string(&v10);
    std::string::~string(&v11);
    __assert_rtn("checkVendorLibs", "GpsdPlatformInfo.mm", 605, "false && GpsdPlatformInfo,conflicting vendor libs");
  }

  v6 = GpsdLogObjectGeneral;
  if (!v4 && os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "GpsdPlatformInfo,invoked on platform that does not have a supported vendor lib", buf, 2u);
    v6 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *this;
    *buf = 67240192;
    LODWORD(v13) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GpsdPlatformInfo,hardware,%{public}d", buf, 8u);
  }
}

void sub_100115FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void GpsdPlatformInfo::readMlbBornOnYww(GpsdPlatformInfo *this)
{
  GpsdPlatformInfo::readMlbSerialNumber(&__p);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_)
    {
LABEL_3:
      if (size < 0x12)
      {
        GpsdPlatformInfo::parseWeekFromYwwMlbSerialNumber(this, &__p);
      }

      else
      {
        GpsdPlatformInfo::parseWeekFromDomMlbSerialNumber(this, &__p);
      }

      goto LABEL_9;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_3;
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MlbSn,aborted,empty", v4, 2u);
  }

LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1001160E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t GpsdPlatformInfo::getNoiseFigure(uint64_t a1, int a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67240192;
    v10[1] = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "GpsdPlatformInfo,getNoiseFigure,band,%{public}d", v10, 8u);
  }

  v5 = *(a1 + 8);
  if ((v5 - 201) >= 2)
  {
    v8 = v5 - 103;
    if ((v5 - 103) > 4)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = qword_10014A190[v8];
      v7 = qword_10014A1B8[v8];
    }
  }

  else
  {
    v6 = &_mh_execute_header;
    v7 = 1078355558;
  }

  return v7 | v6;
}

void GpsdPlatformInfo::readMlbSerialNumber(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    std::string::assign(a1, CStringPtr);
    CFRelease(v4);
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
    {
      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = a1->__r_.__value_.__r.__words[0];
      }

      v9 = 136380675;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MlbSn,%{private}s", &v9, 0xCu);
    }
  }

  else
  {
    v8 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MlbSn,readSN,failed", &v9, 2u);
    }
  }
}

void sub_10011634C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void GpsdPlatformInfo::parseWeekFromDomMlbSerialNumber(uint64_t a1, const std::string *a2)
{
  v4 = 0;
  v5 = 0;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  v7 = v6->__r_.__value_.__r.__words + 3;
  do
  {
    v8 = *(v7 + v5);
    v9 = charToIntBase34(v8);
    if (v9 < 0)
    {
      v14 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      LODWORD(v24.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v24.__r_.__value_.__r.__words[0]) = v8;
      v15 = "MlbSn,dom,unexpectedCh,%{public}c";
      v16 = v14;
      v17 = 8;
      goto LABEL_18;
    }

    v4 = v9 + 34 * v4;
    ++v5;
  }

  while (v5 != 3);
  v10 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string(&v24, a2, 3uLL, 3uLL, &v23);
    v11 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
    *buf = 136446466;
    v26 = v11;
    v27 = 1026;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,%{public}s,%{public}d", buf, 0x12u);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  EarliestBornYear = GpsdHardwareConfig::getEarliestBornYear((a1 + 8));
  if (!HIDWORD(EarliestBornYear))
  {
    v13 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,EarliestBornYear,unknown", &v24, 2u);
    }

    return;
  }

  v18 = ((EarliestBornYear - 1980) * 365.25 / 7.0);
  v19 = (v4 - 3657) / 7;
  if (v19 < v18)
  {
    v20 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LODWORD(v24.__r_.__value_.__l.__data_) = 67240448;
    HIDWORD(v24.__r_.__value_.__r.__words[0]) = (v4 - 3657) / 7;
    LOWORD(v24.__r_.__value_.__r.__words[1]) = 1026;
    *(&v24.__r_.__value_.__r.__words[1] + 2) = v18;
    v15 = "MlbSn,dom,weekOutOfRange,mlb,%{public}d,earliest,%{public}d";
    v16 = v20;
    v17 = 14;
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, &v24, v17);
    return;
  }

  *(a1 + 56) = v19;
  *(a1 + 60) = 1;
  v21 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *(a1 + 56);
    LODWORD(v24.__r_.__value_.__l.__data_) = 67240192;
    HIDWORD(v24.__r_.__value_.__r.__words[0]) = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MlbSn,dom,bornOnGpsWeek,%{public}d", &v24, 8u);
  }
}

void GpsdPlatformInfo::parseWeekFromYwwMlbSerialNumber(uint64_t a1, std::string::size_type a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v29 = *a2;
    if (v4 >= 0)
    {
      v29 = a2;
    }

    LODWORD(v31.__r_.__value_.__l.__data_) = 136380931;
    *(v31.__r_.__value_.__r.__words + 4) = v29;
    WORD2(v31.__r_.__value_.__r.__words[1]) = 2050;
    *(&v31.__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MlbSn,parse,%{private}s,sz,%{public}zu", &v31, 0x16u);
  }

  if (v5 == 11 || v5 == 13)
  {
    v8 = 2;
  }

  else
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x10)
    {
      v26 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v31.__r_.__value_.__l.__data_) = 134349056;
        *(v31.__r_.__value_.__r.__words + 4) = v5;
        v18 = "MlbSn,unexpectedSize,%{public}zu";
        v19 = v26;
        v20 = 12;
        goto LABEL_35;
      }

      return;
    }

    v8 = 3;
  }

  std::string::basic_string(&v31, a2, v8, 3uLL, &v30);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v31.__r_.__value_.__r.__words[0];
    *(a1 + 48) = atoi(v31.__r_.__value_.__l.__data_);
    v9 = (a1 + 48);
    *(a1 + 52) = 1;
    v10 = (a1 + 52);
    operator delete(v11);
  }

  else
  {
    *(a1 + 48) = atoi(&v31);
    v9 = (a1 + 48);
    *(a1 + 52) = 1;
    v10 = (a1 + 52);
  }

  v12 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ((*v10 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v13 = *v9;
    LODWORD(v31.__r_.__value_.__l.__data_) = 134349312;
    *(v31.__r_.__value_.__r.__words + 4) = v5;
    WORD2(v31.__r_.__value_.__r.__words[1]) = 1026;
    *(&v31.__r_.__value_.__r.__words[1] + 6) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MlbSn,sz,%{public}zu,yww,%{public}d", &v31, 0x12u);
  }

  if ((*v10 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = *v9;
  v15 = *v9 / 100;
  v16 = v14 - 100 * v15;
  if ((v16 - 54) > 0xFFFFFFCA)
  {
    EarliestBornYear = GpsdHardwareConfig::getEarliestBornYear((a1 + 8));
    if ((EarliestBornYear & 0x100000000) != 0)
    {
      v23 = v15 + 10 * (EarliestBornYear / 10);
      if (v23 >= EarliestBornYear)
      {
        v24 = v15 + 10 * (EarliestBornYear / 10);
      }

      else
      {
        v24 = v23 + 10;
      }

      v25 = v16 + ((v24 - 1980) * 365.25 / 7.0);
      if (v25 <= gpsd::util::getGpsWeekFromBuildDate(EarliestBornYear))
      {
        *(a1 + 56) = v25;
        *(a1 + 60) = 1;
        v27 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(a1 + 60) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v28 = *(a1 + 56);
          LODWORD(v31.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v31.__r_.__value_.__r.__words[0]) = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "MlbSn,bornOnGpsWeek,%{public}d", &v31, 8u);
        }
      }

      else
      {
        v17 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v31.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v31.__r_.__value_.__r.__words[0]) = v25;
          v18 = "MlbSn,weekOutOfRange,mlb,%{public}d";
          goto LABEL_23;
        }
      }
    }

    else
    {
      v22 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v31.__r_.__value_.__l.__data_) = 0;
        v18 = "MlbSn,EarliestBornYear,unknown";
        v19 = v22;
        v20 = 2;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v17 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v31.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v31.__r_.__value_.__r.__words[0]) = v16;
      v18 = "MlbSn,invalid,ww,%{public}d";
LABEL_23:
      v19 = v17;
      v20 = 8;
LABEL_35:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, &v31, v20);
    }
  }
}

uint64_t charToIntBase34(int a1)
{
  if ((a1 - 97) >= 0x1A)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 - 32;
  }

  v2 = v1;
  v3 = (v1 - 48);
  if ((v2 - 80) >= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v2 - 57;
  }

  if ((v2 - 74) <= 4)
  {
    v5 = v2 - 56;
  }

  else
  {
    v5 = v4;
  }

  if ((v2 - 65) <= 7u)
  {
    v6 = v2 - 55;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 - 48;
  if (v3 <= 9)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void sub_100116B90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::triggerDiagnosticReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a1, *(a1 + 8));
  }

  else
  {
    v5 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v8 = 0;
  gpsd::util::triggerDiagnosticReport(&v5, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_100116C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void gpsd::util::triggerDiagnosticReport(gpsd::util *this, const gpsd::util::DiagnosticReportParameters *a2)
{
  if (objc_opt_class())
  {
    v3 = objc_alloc_init(SDRDiagnosticReporter);
    if (*(this + 23) >= 0)
    {
      v4 = this;
    }

    else
    {
      v4 = *this;
    }

    v5 = [NSString stringWithUTF8String:v4];
    v6 = *(this + 3);
    if (*(this + 47) >= 0)
    {
      v7 = this + 24;
    }

    else
    {
      v7 = *(this + 3);
    }

    v8 = [NSString stringWithUTF8String:v7];
    v9 = *(this + 6);
    if (*(this + 71) >= 0)
    {
      v10 = this + 48;
    }

    else
    {
      v10 = *(this + 6);
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [v3 signatureWithDomain:@"GPSDaemon" type:v5 subType:v8 subtypeContext:v11 detectedProcess:@"com.apple.gpsd" triggerThresholdValues:0];

    v13 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 23) >= 0)
      {
        v14 = this;
      }

      else
      {
        v14 = *this;
      }

      if (*(this + 47) >= 0)
      {
        v15 = this + 24;
      }

      else
      {
        v15 = *(this + 3);
      }

      if (*(this + 71) >= 0)
      {
        v16 = this + 48;
      }

      else
      {
        v16 = *(this + 6);
      }

      LODWORD(buf.__m_.__sig) = 136315650;
      *(&buf.__m_.__sig + 4) = v14;
      *&buf.__m_.__opaque[4] = 2080;
      *&buf.__m_.__opaque[6] = v15;
      *&buf.__m_.__opaque[14] = 2080;
      *&buf.__m_.__opaque[16] = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#gsdr,type,%s,subtype,%s,context,%s", &buf, 0x20u);
    }

    memset(v36.__cv_.__opaque, 0, sizeof(v36.__cv_.__opaque));
    v36.__cv_.__sig = 1018212795;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3812000000;
    v31 = __Block_byref_object_copy__2;
    v32 = __Block_byref_object_dispose__2;
    v33 = &unk_100166303;
    v34 = 0;
    if (*(this + 72) == 1)
    {
      operator new();
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = ___ZN4gpsd4util23triggerDiagnosticReportERKNS0_26DiagnosticReportParametersE_block_invoke;
    v27[3] = &unk_10017BD00;
    v27[4] = &v28;
    if ([v3 snapshotWithSignature:v12 duration:0 events:0 payload:0 actions:v27 reply:0.0])
    {
      if (*(this + 72) == 1)
      {
        memset(buf.__m_.__opaque, 0, sizeof(buf.__m_.__opaque));
        buf.__m_.__sig = 850045863;
        __lk.__m_ = &buf;
        __lk.__owns_ = 1;
        std::mutex::lock(&buf);
        v17 = v29[6];
        v18.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v19.__d_.__rep_)
        {
          if (v19.__d_.__rep_ < 1)
          {
            if (v19.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              v20.__d_.__rep_ = 1000 * v19.__d_.__rep_ + 5000000000;
            }

            else
            {
              v20.__d_.__rep_ = 0x800000012A05F200;
            }
          }

          else if (v19.__d_.__rep_ < 0x20C49BA59708B8)
          {
            v20.__d_.__rep_ = 1000 * v19.__d_.__rep_ + 5000000000;
          }

          else
          {
            v20.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v20.__d_.__rep_ = 5000000000;
        }

        std::condition_variable::__do_timed_wait(v17, &__lk, v20);
        if (std::chrono::steady_clock::now().__d_.__rep_ - v18.__d_.__rep_ > 0x12A05F1FFLL)
        {
          v22 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *v25 = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#gsdr,wait timeout", v25, 2u);
          }
        }

        if (__lk.__owns_)
        {
          std::mutex::unlock(__lk.__m_);
        }

        std::mutex::~mutex(&buf);
      }
    }

    else
    {
      v21 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__m_.__sig) = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#gsdr,return failure", &buf, 2u);
      }
    }

    v23 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__m_.__sig) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#gsdr,exit", &buf, 2u);
    }

    _Block_object_dispose(&v28, 8);
    v24 = v34;
    v34 = 0;
    if (v24)
    {
      std::condition_variable::~condition_variable(v24);
      operator delete();
    }

    std::condition_variable::~condition_variable(&v36);
  }
}

void sub_1001171DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::mutex::~mutex(&a25);
  _Block_object_dispose(&a18, 8);
  std::unique_ptr<std::condition_variable>::reset[abi:ne200100]((v27 + 48), 0);
  std::condition_variable::~condition_variable((v28 - 136));

  _Unwind_Resume(a1);
}

void ___ZN4gpsd4util23triggerDiagnosticReportERKNS0_26DiagnosticReportParametersE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
    v7 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = 136315138;
    v13 = [v6 UTF8String];
    v8 = "#gsdr,accepted,%s";
    v9 = v7;
    v10 = 12;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];
    v7 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = 67109120;
    LODWORD(v13) = [v6 intValue];
    v8 = "#gsdr,rejected,reason,%d";
    v9 = v7;
    v10 = 8;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
LABEL_7:

  v11 = *(*(*(a1 + 32) + 8) + 48);
  if (v11)
  {
    std::condition_variable::notify_one(v11);
  }
}

id gpsd::util::copyFile(gpsd::util *this, const char *a2, const char *a3)
{
  v4 = [NSString stringWithUTF8String:this];
  v5 = [NSString stringWithUTF8String:a2];
  v6 = +[NSFileManager defaultManager];
  v14 = 0;
  v7 = [v6 copyItemAtPath:v4 toPath:v5 error:&v14];
  v8 = v14;
  if ((v7 & 1) == 0)
  {
    v9 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 localizedDescription];
      v12 = v11;
      v13 = [v11 UTF8String];
      *buf = 136446210;
      v16 = v13;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "VendorLogger,copyFile,error:%{public}s", buf, 0xCu);
    }
  }

  return v7;
}

void gpsd::util::enumerateFiles(uint64_t a1, const void **a2, uint64_t a3)
{
  v36 = +[NSFileManager defaultManager];
  v6 = [NSString stringWithUTF8String:a1];
  v7 = [v36 contentsOfDirectoryAtPath:v6 error:0];

  std::vector<std::string>::clear[abi:ne200100](a3);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = *v44;
    v37 = v7;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v43 + 1) + 8 * i) UTF8String];
        if (v12)
        {
          std::string::basic_string[abi:ne200100]<0>(&v40, v12);
          v13 = *(a2 + 23);
          if (v13 >= 0)
          {
            v14 = *(a2 + 23);
          }

          else
          {
            v14 = a2[1];
          }

          v15 = v42;
          if ((v42 & 0x8000000000000000) != 0)
          {
            if (v14 == -1)
            {
LABEL_48:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v17 = v40;
            if (v41 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v41;
            }
          }

          else
          {
            if (v14 == -1)
            {
              goto LABEL_48;
            }

            if (v42 >= v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v42;
            }

            v17 = &v40;
          }

          if (v13 >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          v20 = !memcmp(v17, v19, v16) && v16 == v14;
          v7 = v37;
          if (v20)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v12);
            v22 = *(a3 + 8);
            v21 = *(a3 + 16);
            if (v22 >= v21)
            {
              v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *a3) >> 3);
              v25 = v24 + 1;
              if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
              }

              v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a3) >> 3);
              if (2 * v26 > v25)
              {
                v25 = 2 * v26;
              }

              if (v26 >= 0x555555555555555)
              {
                v27 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v27 = v25;
              }

              buf.__end_cap_.__value_ = a3;
              if (v27)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v27);
              }

              v28 = 24 * v24;
              v29 = *__p;
              *(v28 + 16) = v39;
              *v28 = v29;
              __p[1] = 0;
              v39 = 0;
              __p[0] = 0;
              v30 = 24 * v24 + 24;
              v31 = *(a3 + 8) - *a3;
              v32 = (24 * v24 - v31);
              memcpy(v32, *a3, v31);
              v33 = *a3;
              *a3 = v32;
              *(a3 + 8) = v30;
              v34 = *(a3 + 16);
              *(a3 + 16) = 0;
              buf.__end_ = v33;
              buf.__end_cap_.__value_ = v34;
              buf.__first_ = v33;
              buf.__begin_ = v33;
              std::__split_buffer<std::string>::~__split_buffer(&buf);
              v35 = SHIBYTE(v39);
              *(a3 + 8) = v30;
              if (v35 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v23 = *__p;
              *(v22 + 16) = v39;
              *v22 = v23;
              *(a3 + 8) = v22 + 24;
            }

            v15 = v42;
          }

          if (v15 < 0)
          {
            operator delete(v40);
          }
        }

        else
        {
          v18 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.__first_) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "VendorLogger,pruneLogFiles,null filename from reverseEnumerateFiles", &buf, 2u);
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v9);
  }
}

void gpsd::util::DispatchSource::~DispatchSource(gpsd::util::DispatchSource *this)
{
  *this = off_10017BD30;
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 1);
    v5 = 134349056;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DispatchSource,dtor,%{public}p", &v5, 0xCu);
  }

  dispatch_source_cancel(*(this + 1));
  v4 = *(this + 1);
  *(this + 1) = 0;
}

{
  gpsd::util::DispatchSource::~DispatchSource(this);

  operator delete();
}

void gpsd::util::GnssTimer::setTimer(gpsd::util::GnssTimer *this, double a2, double a3, int a4)
{
  v5 = (a2 * 1000000000.0);
  v6 = (a3 * 1000000000.0);
  v7 = *(this + 1);
  v8 = dispatch_time(0, v5);
  if (a4)
  {
    v9 = v5;
  }

  else
  {
    v9 = -1;
  }

  dispatch_source_set_timer(v7, v8, v9, v6);
}

void gpsd::util::OsTransaction::~OsTransaction(id *this)
{
  v2 = *this;
  *this = 0;
}

{
  v2 = *this;
  *this = 0;
}

std::condition_variable *std::unique_ptr<std::condition_variable>::reset[abi:ne200100](std::condition_variable **a1, std::condition_variable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::condition_variable::~condition_variable(result);

    operator delete();
  }

  return result;
}

double ReceiverClockConversion::notifyOfSessionStart(ReceiverClockConversion *this)
{
  *(this + 32) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double ReceiverClockConversion::clear(ReceiverClockConversion *this)
{
  *(this + 32) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void checkForHomeDirectory(void)
{
  if (access("/var/db/gpsd", 0))
  {
    v0 = __error();
    v1 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_FAULT))
    {
      v2 = *v0;
      v4[0] = 67240450;
      v4[1] = v2;
      v5 = 2082;
      v6 = strerror(v2);
      _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "#gpsdMain,home check failure,%{public}d,%{public}s", v4, 0x12u);
    }
  }

  else
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#gpsdMain,home check success", v4, 2u);
    }
  }
}

NSObject **GpsdDaemonManager::GpsdDaemonManager(NSObject **a1, uint64_t a2, dispatch_queue_t queue)
{
  v3 = queue;
  a1[4] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  *a1 = queue;
  if (!queue)
  {
    v6 = GpsdRuntime::instance(a1);
    v3 = *v6;
    *a1 = *v6;
    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GpsdDaemonManager,deviceQueue,null,create", buf, 2u);
      v3 = *a1;
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZN17GpsdDaemonManagerC2ERKNSt3__18functionIFvONS0_6vectorIhNS0_9allocatorIhEEEEEEEP16dispatch_queue_s_block_invoke;
  v9[3] = &__block_descriptor_tmp_10;
  v9[4] = a1;
  v9[5] = a2;
  dispatch_sync(v3, v9);
  return a1;
}

void GpsdDaemonManager::init(uint64_t a1, uint64_t a2)
{
  v3 = GpsdPreferences::instance(0);
  if (GpsdPreferences::useLegacyLibXpc(v3))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "GpsdDaemonManager,fIndicationCallback,nullptr", &buf, 2u);
    v4 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    buf = 136446722;
    buf_4 = "/Library/Caches/com.apple.xbs/Sources/CoreGPS/Sources/Daemon/GpsdDaemonManager.cpp";
    v10 = 1026;
    v11 = 72;
    v12 = 2082;
    v13 = "init";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &buf, 0x1Cu);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "assert");
  std::string::basic_string[abi:ne200100]<0>(&v6, "init");
  std::string::basic_string[abi:ne200100]<0>(&v5, "GpsdDaemonManager,fIndicationCallback,nullptr");
  gpsd::util::triggerDiagnosticReport(&v7, &v6, &v5);
  std::string::~string(&v5);
  std::string::~string(&v6);
  std::string::~string(&v7);
  __assert_rtn("init", "GpsdDaemonManager.cpp", 72, "false && GpsdDaemonManager,fIndicationCallback,nullptr");
}

void sub_1001183C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](&a45);
  std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v45 - 112);
  operator delete();
}

void GpsdDaemonManager::clientsCountUpdate(NSObject **this, int a2)
{
  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GpsdDaemonManager,clientStateUpdate,connected,%{public}d", buf, 8u);
  }

  v5 = *this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN17GpsdDaemonManager18clientsCountUpdateEj_block_invoke;
  v6[3] = &__block_descriptor_tmp_9_0;
  v6[4] = this;
  v7 = a2;
  dispatch_async(v5, v6);
}

void GpsdDaemonManager::clientsCountUpdateImpl(GpsdDaemonManager *this, int a2)
{
  v4 = GpsdLogObjectGeneral;
  v5 = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GpsdDaemonManager,clientStateUpdate,connected", buf, 2u);
    }

    v6 = 32;
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GpsdDaemonManager,clientStateUpdate,noClient", v7, 2u);
    }

    v6 = 36;
  }

  GpsdProtobufRouter::handleHelperRequest(*(this + 9), v6);
}

void GpsdDaemonManager::handleSignal(NSObject **this, int a2)
{
  if (a2 == 2)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "#GpsdDaemonManager,received SIGINT";
      goto LABEL_7;
    }
  }

  else
  {
    if (a2 != 15)
    {
      return;
    }

    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "#GpsdDaemonManager,received SIGTERM";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    }
  }

  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#GpsdDaemonManager,handleTerminationSignal,receipt", buf, 2u);
  }

  v6 = *this;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN17GpsdDaemonManager12handleSignalEi_block_invoke;
  block[3] = &__block_descriptor_tmp_11_0;
  block[4] = this;
  dispatch_async(v6, block);
}

void ___ZN17GpsdDaemonManager12handleSignalEi_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#GpsdDaemonManager,handleTerminationSignal,processing", v3, 2u);
  }

  GpsdProtobufRouter::handleHelperRequest(*(v1 + 72), 0x24);
}

void handleSignal(int a1)
{
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#GpsdDaemonManager,handleSignal,%{public}d", v4, 8u);
  }

  if (fDaemonManger)
  {
    GpsdDaemonManager::handleSignal(fDaemonManger, a1);
  }

  else
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v4[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#GpsdDaemonManager,handleSignal,fDaemonManger,nullptr", v4, 2u);
    }
  }
}

void instanceDaemon(void)
{
  if (!GpsdLogObjectGeneral)
  {
    GpsdLogObjectGeneral = os_log_create("com.apple.gpsd", "general");
  }

  if (!GpsdLogObjectWarning)
  {
    GpsdLogObjectWarning = os_log_create("com.apple.gpsd", "Warning");
  }

  if (!GpsdLogObjectDevice)
  {
    GpsdLogObjectDevice = os_log_create("com.apple.gpsd", "device");
  }

  if (!GpsdLogObjectNmea)
  {
    GpsdLogObjectNmea = os_log_create("com.apple.gpsd", "NMEA");
  }

  if (!GpsdLogObjectGem)
  {
    GpsdLogObjectGem = os_log_create("com.apple.gpsd", "gem");
  }

  v0 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Logging init, check if the level is enabled", v8, 2u);
    v0 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Logging init, check if the level is enabled", v8, 2u);
    v0 = GpsdLogObjectGeneral;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Logging init, check if the level is enabled", v8, 2u);
    v0 = GpsdLogObjectGeneral;
  }

  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    ProcessUptimeSec = gpsd::util::getProcessUptimeSec(v1);
    v8[0] = 134217984;
    *&v8[1] = ProcessUptimeSec;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Record process start time, %.1f", v8, 0xCu);
  }

  v3 = GpsdPreferences::instance(0);
  if (!GpsdPreferences::forceDisableGpsd(v3))
  {
    v5 = *(GpsdPlatformInfo::instance(0) + 8);
    if ((v5 - 201) >= 2)
    {
      if ((v5 - 103) > 4 || (v6 = 1, ((1 << (v5 - 103)) & 0x19) == 0))
      {
        v6 = (v5 - 301) < 2;
      }
    }

    else
    {
      v6 = 1;
    }

    v7 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "isDaemonEnabled,%{publicd}d", v8, 8u);
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }

    checkForHomeDirectory();
    operator new();
  }

  v4 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "isDaemonEnabled,forceDisabled", v8, 2u);
  }
}

void GpsdDaemonProxy::GpsdDaemonProxy(GpsdDaemonProxy *this)
{
  if (GpsdDaemonProxy::GpsdDaemonProxy(void)::pred != -1)
  {
    dispatch_once(&GpsdDaemonProxy::GpsdDaemonProxy(void)::pred, &__block_literal_global_5);
  }
}

{
  if (GpsdDaemonProxy::GpsdDaemonProxy(void)::pred != -1)
  {
    dispatch_once(&GpsdDaemonProxy::GpsdDaemonProxy(void)::pred, &__block_literal_global_5);
  }
}

id GpsdDaemonProxy::useLegacyLibXpc(GpsdDaemonProxy *this)
{
  v1 = GpsdPreferences::instance(0);

  return GpsdPreferences::useLegacyLibXpc(v1);
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void **std::unique_ptr<GpsdProtobufRouter>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[29];
    v2[29] = 0;
    if (v3)
    {
      GnssQueueWatchdog::~GnssQueueWatchdog(v3);
      operator delete();
    }

    v4 = v2[28];
    v2[28] = 0;
    if (v4)
    {
      std::default_delete<GpsdResourceWatcher>::operator()[abi:ne200100]((v2 + 28), v4);
    }

    v5 = v2[27];
    v2[27] = 0;
    if (v5)
    {
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v7)
      {
        v8 = *v7;
        *v7 = 0;

        operator delete();
      }

      operator delete();
    }

    v9 = v2[26];
    v2[26] = 0;
    if (v9)
    {
      GpsdInterfaceTelemeter::~GpsdInterfaceTelemeter(v9);
      operator delete();
    }

    v10 = v2[25];
    v2[25] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100]((v2 + 21));
    std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100]((v2 + 17));
    v11 = v2[16];
    v2[16] = 0;
    if (v11)
    {
      std::__function::__value_func<void ()(proto::gpsd::Request &&)>::~__value_func[abi:ne200100](v11);
      operator delete();
    }

    v12 = v2[14];
    v2[14] = 0;
    if (v12)
    {
      std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v12 + 32);
      std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v12);
      operator delete();
    }

    v13 = v2[13];
    v2[13] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v2[12];
    v2[12] = 0;
    if (v14)
    {
      v15 = *(v14 + 104);
      *(v14 + 104) = 0;
      if (v15)
      {
        GnssWatchdog::~GnssWatchdog(v15);
        operator delete();
      }

      std::__function::__value_func<proto::gpsd::Request_Type ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](v14 + 72);
      std::deque<std::vector<unsigned char>>::~deque[abi:ne200100]((v14 + 24));
      operator delete();
    }

    std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100]((v2 + 8));
    std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100]((v2 + 4));
    std::__function::__value_func<void ()(std::vector<unsigned char> &&,proto::gpsd::Request_Type)>::~__value_func[abi:ne200100](v2);

    operator delete();
  }

  return result;
}

void GnssQueueWatchdog::~GnssQueueWatchdog(GnssQueueWatchdog *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void std::default_delete<GpsdResourceWatcher>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }
}

void GpsdInterfaceTelemeter::~GpsdInterfaceTelemeter(GpsdInterfaceTelemeter *this)
{
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::mutex::~mutex((this + 120));
  for (i = 80; i != -40; i -= 40)
  {
    std::__hash_table<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::__unordered_map_hasher<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>>>::~__hash_table(this + i);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::__unordered_map_hasher<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(proto::gpsd::Request &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<proto::gpsd::Request_Type ()(std::vector<unsigned char> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::deque<std::vector<unsigned char>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 170;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<std::vector<unsigned char> *,std::allocator<std::vector<unsigned char> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::vector<unsigned char> *,std::allocator<std::vector<unsigned char> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_2,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017BE28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_2,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_2,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_3,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017BEA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_3,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_3,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_4,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017BF28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_4,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_5,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017BFA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_5,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_0,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C038;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_0,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_100119D58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_1,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10017C0B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<GpsdDaemonManager::init(std::function<void ()(std::vector<unsigned char> &&)> const&)::$_1,std::allocator<std::function<void ()(std::vector<unsigned char> &&)> const&>,std::vector<unsigned char> &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<unsigned char> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<instanceDaemon(void)::$_0,std::allocator<instanceDaemon(void)::$_0>,void ()(std::vector<unsigned char> &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void GpsdGnssDeviceHelper::handleRequest(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  switch(v3)
  {
    case 5:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a3);
      GpsdGnssDeviceHelper::deleteGnssData(a1, a2, v17);
      v6 = v17;
      goto LABEL_26;
    case 6:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a3);
      GpsdGnssDeviceHelper::setPvtmReport(a1, a2, v16);
      v6 = v16;
      goto LABEL_26;
    case 7:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
      GpsdGnssDeviceHelper::setNmeaHandler(a1, a2, v15);
      v6 = v15;
      goto LABEL_26;
    case 8:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a3);
      GpsdGnssDeviceHelper::injectAssistancePosition(a1, a2, v30);
      v6 = v30;
      goto LABEL_26;
    case 9:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a3);
      GpsdGnssDeviceHelper::injectAssistanceTime(a1, a2, v29);
      v6 = v29;
      goto LABEL_26;
    case 10:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a3);
      GpsdGnssDeviceHelper::injectAssistanceFile(a1, a2, v19);
      v6 = v19;
      goto LABEL_26;
    case 11:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a3);
      GpsdGnssDeviceHelper::injectRtiFile(a1, a2, v18);
      v6 = v18;
      goto LABEL_26;
    case 14:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a3);
      GpsdGnssDeviceHelper::setAssistanceAccel(a1, a2, v28);
      v6 = v28;
      goto LABEL_26;
    case 15:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a3);
      GpsdGnssDeviceHelper::setAssistanceGyro(a1, a2, v27);
      v6 = v27;
      goto LABEL_26;
    case 16:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a3);
      GpsdGnssDeviceHelper::setAssistanceDem(a1, a2, v26);
      v6 = v26;
      goto LABEL_26;
    case 17:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, a3);
      GpsdGnssDeviceHelper::setAssistanceMapVector(a1, a2, v25);
      v6 = v25;
      goto LABEL_26;
    case 18:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a3);
      GpsdGnssDeviceHelper::setAssistanceMotionActivityContext(a1, a2, v24);
      v6 = v24;
      goto LABEL_26;
    case 19:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a3);
      GpsdGnssDeviceHelper::setAssistanceMountState(a1, a2, v23);
      v6 = v23;
      goto LABEL_26;
    case 20:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a3);
      GpsdGnssDeviceHelper::setAssistanceSignalEnvironment(a1, a2, v22);
      v6 = v22;
      goto LABEL_26;
    case 21:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a3);
      GpsdGnssDeviceHelper::setAssistanceSpeedConstraint(a1, a2, v21);
      v6 = v21;
      goto LABEL_26;
    case 22:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a3);
      GpsdGnssDeviceHelper::setAssistanceAlongTrackVelocity(a1, a2, v20);
      v6 = v20;
      goto LABEL_26;
    case 24:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
      GpsdGnssDeviceHelper::setConfigSimulatorMode(a1, a2, v14);
      v6 = v14;
      goto LABEL_26;
    case 25:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a3);
      GpsdGnssDeviceHelper::setConfigEnableGnssConstellations(a1, a2, v13);
      v6 = v13;
      goto LABEL_26;
    case 26:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
      GpsdGnssDeviceHelper::setConfigDutyCycling(a1, a2, v12);
      v6 = v12;
      goto LABEL_26;
    case 31:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a3);
      GpsdGnssDeviceHelper::setThermalRiskState(a1, a2, v11);
      v6 = v11;
      goto LABEL_26;
    case 38:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
      GpsdGnssDeviceHelper::setConfigRfBandEnable(a1, a2, v10);
      v6 = v10;
      goto LABEL_26;
    case 39:
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
      GpsdGnssDeviceHelper::injectRavenOrbitFile(a1, a2, v9);
      v6 = v9;
LABEL_26:
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
      break;
    default:
      std::function<void ()(gnss::Result)>::operator()(a3, 7);
      v7 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67240192;
        v8[1] = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#gdm,handleRequest,helper,type,%{public}d,notSupported", v8, 8u);
      }

      break;
  }
}

void sub_10011A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceHelper::injectAssistancePosition(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 396) & 8) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = 0u;
    HIDWORD(v8) = 8;
    v6 = *(a2 + 24);
    if (!v6)
    {
      v6 = *(proto::gpsd::Request::default_instance_ + 24);
    }

    ProtobufUtil::convert::cpbInjectAssistancePosition(v6, v9);
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

uint64_t GpsdGnssDeviceHelper::injectAssistanceTime(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 396) & 0x10) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 9;
    v4 = *(a2 + 32);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 32);
    }

    v5 = *(v4 + 36);
    if (v5)
    {
      *&v8 = *(v4 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_9:
        if ((v5 & 4) == 0)
        {
LABEL_11:
          v6 = **a1;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
          GnssDeviceManager::pushRequest(v6, &v7, v15);
          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
        }

LABEL_10:
        *&v9 = *(v4 + 24);
        goto LABEL_11;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(&v8 + 1) = *(v4 + 16);
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

uint64_t GpsdGnssDeviceHelper::setAssistanceAccel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 396) & 0x40) != 0)
  {
    operator new();
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void sub_10011A8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10 - 72);
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](&a10, v12);
  }

  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceHelper::setAssistanceGyro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 396) & 0x80) != 0)
  {
    operator new();
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void sub_10011AA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10 - 72);
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    std::default_delete<cproto::gpsd::SetAssistanceGyro>::operator()[abi:ne200100](&a10, v12);
  }

  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceHelper::setAssistanceDem(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 397))
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 16;
    v4 = *(a2 + 64);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 64);
    }

    v5 = *(v4 + 36);
    if (v5)
    {
      *&v8 = *(v4 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_9:
        if ((v5 & 4) == 0)
        {
LABEL_11:
          v6 = **a1;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
          GnssDeviceManager::pushRequest(v6, &v7, v15);
          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
        }

LABEL_10:
        *&v9 = *(v4 + 24);
        goto LABEL_11;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(&v8 + 1) = *(v4 + 16);
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

uint64_t GpsdGnssDeviceHelper::setAssistanceMapVector(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 397) & 2) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = 0u;
    HIDWORD(v8) = 17;
    v6 = *(a2 + 72);
    if (!v6)
    {
      v6 = *(proto::gpsd::Request::default_instance_ + 72);
    }

    ProtobufUtil::convert::cpbSetAssistanceMapVector(v6, v9);
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

uint64_t GpsdGnssDeviceHelper::setAssistanceMotionActivityContext(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 397) & 4) != 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = 0u;
    HIDWORD(v8) = 18;
    v6 = *(a2 + 80);
    if (!v6)
    {
      v6 = *(proto::gpsd::Request::default_instance_ + 80);
    }

    ProtobufUtil::convert::cpbSetAssistanceMotionActivityContext(v6, v9);
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

uint64_t GpsdGnssDeviceHelper::setAssistanceMountState(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 397) & 8) != 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    HIDWORD(v9) = 19;
    v4 = *(a2 + 88);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 88);
    }

    v5 = *(v4 + 24);
    if (v5)
    {
      *&v10 = *(v4 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v6 = *(v4 + 16);
      if (v6 == 3)
      {
        v7 = 2;
      }

      else
      {
        v7 = v6 == 2;
      }

      DWORD2(v10) = v7;
    }

    v8 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a3);
    GnssDeviceManager::pushRequest(v8, &v9, v17);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setAssistanceSignalEnvironment(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 397) & 0x10) != 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    HIDWORD(v8) = 20;
    v6 = *(a2 + 96);
    if (!v6)
    {
      v6 = *(proto::gpsd::Request::default_instance_ + 96);
    }

    if (*(v6 + 16))
    {
      LODWORD(v9) = ProtobufUtil::convert::cpbSignalEnvironmentType(*(v6 + 8));
    }

    v7 = **a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a3);
    GnssDeviceManager::pushRequest(v7, &v8, v16);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  }

  else
  {

    return std::function<void ()(gnss::Result)>::operator()(a3, 4);
  }
}

uint64_t GpsdGnssDeviceHelper::setAssistanceSpeedConstraint(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 397) & 0x20) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 21;
    v4 = *(a2 + 104);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 104);
    }

    v5 = *(v4 + 44);
    if (v5)
    {
      *&v8 = *(v4 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_9:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(&v8 + 1) = *(v4 + 16);
    if ((v5 & 4) == 0)
    {
LABEL_10:
      if ((v5 & 8) == 0)
      {
LABEL_12:
        v6 = **a1;
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
        GnssDeviceManager::pushRequest(v6, &v7, v15);
        return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
      }

LABEL_11:
      *(&v9 + 1) = *(v4 + 32);
      goto LABEL_12;
    }

LABEL_15:
    *&v9 = *(v4 + 24);
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

uint64_t GpsdGnssDeviceHelper::setAssistanceAlongTrackVelocity(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 397) & 0x40) != 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    HIDWORD(v7) = 22;
    v4 = *(a2 + 112);
    if (!v4)
    {
      v4 = *(proto::gpsd::Request::default_instance_ + 112);
    }

    v5 = *(v4 + 36);
    if (v5)
    {
      *&v8 = *(v4 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_9:
        if ((v5 & 4) == 0)
        {
LABEL_11:
          v6 = **a1;
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a3);
          GnssDeviceManager::pushRequest(v6, &v7, v15);
          return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
        }

LABEL_10:
        *&v9 = *(v4 + 24);
        goto LABEL_11;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(&v8 + 1) = *(v4 + 16);
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

uint64_t GpsdGnssDeviceHelper::injectAssistanceFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 397) & 0x80) != 0)
  {
    operator new();
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

void sub_10011B4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10 - 72);
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    std::default_delete<cproto::gpsd::InjectAssistanceFile>::operator()[abi:ne200100](&a10, v12);
  }

  _Unwind_Resume(a1);
}

uint64_t GpsdGnssDeviceHelper::injectRtiFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 398))
  {
    operator new();
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}