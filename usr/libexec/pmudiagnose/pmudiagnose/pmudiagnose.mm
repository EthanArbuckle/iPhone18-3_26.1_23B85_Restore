uint64_t PTDConnection::get_ptd_connection(PTDConnection *this)
{
  if (!*this)
  {
    v2 = IOServiceNameMatching("ApplePTD");
    if (v2)
    {
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
      *(this + 1) = MatchingService;
      if (MatchingService)
      {
        v4 = IOServiceOpen(MatchingService, mach_task_self_, 0, this);
        if (v4)
        {
          v5 = v4;
          getprogname();
          mach_error_string(v5);
          printf("%s: cannot open service: %s\n");
        }
      }

      else
      {
        getprogname();
        printf("%s: could not find device %s\n");
      }
    }

    else
    {
      puts("no matching service 'ApplePTD'");
    }
  }

  return *this;
}

void PTDConnection::~PTDConnection(io_connect_t *this)
{
  v2 = *this;
  if (v2)
  {
    IOServiceClose(v2);
    IOObjectRelease(this[1]);
    *this = 0;
  }
}

uint64_t PTDObject::PTDLookUp(PTDConnection **a1, unsigned int a2, void *a3)
{
  if (!PTDConnection::get_ptd_connection(*a1))
  {
    return 1;
  }

  v8 = 12;
  ptd_connection = PTDConnection::get_ptd_connection(*a1);
  input[1] = 0;
  input[2] = 0;
  input[0] = a2;
  return 2 * (IOConnectCallMethod(ptd_connection, 2u, input, 3u, 0, 0, 0, 0, a3, &v8) != 0);
}

uint64_t PTDObject::PTDRead(PTDConnection **this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, int a6)
{
  if (!PTDConnection::get_ptd_connection(*this))
  {
    return 1;
  }

  v15 = 16 * a4;
  if (a6)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  ptd_connection = PTDConnection::get_ptd_connection(*this);
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  return 2 * (IOConnectCallMethod(ptd_connection, v12, input, 3u, 0, 0, 0, 0, a5, &v15) != 0);
}

int main(int argc, const char **argv, const char **envp)
{
  memset(name, 0, sizeof(name));
  *v27 = 0;
  memset(&__p, 0, sizeof(__p));
  v25 = 0;
  v24 = 0;
  memset(&v23, 0, sizeof(v23));
  verbosity = 0;
  if (parse_args(argc, argv) == -1)
  {
    v5 = -6;
  }

  else
  {
    time(&v25);
    v3 = ctime(&v25);
    printf("Start Time: %s\n", v3);
    v4 = IOServiceMatching("AppleARMSPMIDevice");
    if (IOServiceGetMatchingServices(kIOMainPortDefault, v4, &iter))
    {
      v5 = -3;
      v6 = "\nerror: could not get available spmi services names";
LABEL_4:
      puts(v6);
    }

    else
    {
      while (1)
      {
        while (1)
        {
          v8 = IOIteratorNext(iter);
          v9 = v8;
          if (!v8)
          {
            putchar(10);
            IOObjectRelease(iter);
            time(&v25);
            v19 = ctime(&v25);
            printf("End Time: %s\n", v19);
            v5 = 0;
            v6 = "Done";
            goto LABEL_4;
          }

          v10 = IORegistryEntryGetName(v8, name);
          if (v10)
          {
            v20 = mach_error_string(v10);
            printf("ERROR: could not get name for object %d: %s\n", v9, v20);
            IOObjectRelease(v9);
            IOObjectRelease(iter);
            v5 = -5;
            goto LABEL_6;
          }

          if (!get_property_data(@"has-fw", &v24, v9) && v24 != 0)
          {
            break;
          }

          print_verbose("\n\tskipping %s\n", name);
          IOObjectRelease(v9);
        }

        printf("\n%s:", name);
        if (pmu_spmi_init(name))
        {
          break;
        }

        get_ptmu_regions(@"ptmu-", @"-data", v9, &v21);
        std::vector<region>::__vdeallocate(&v23);
        v23 = v21;
        memset(&v21, 0, sizeof(v21));
        v28 = &v21;
        std::vector<region>::__destroy_vector::operator()[abi:ne200100](&v28);
        size = v23.__r_.__value_.__l.__size_;
        for (i = v23.__r_.__value_.__r.__words[0]; i != size; i += 32)
        {
          if (*(i + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v21, *i, *(i + 8));
          }

          else
          {
            v15 = *i;
            v21.__r_.__value_.__r.__words[2] = *(i + 16);
            *&v21.__r_.__value_.__l.__data_ = v15;
          }

          *v22 = *(i + 24);
          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v21;
          }

          else
          {
            v16 = v21.__r_.__value_.__r.__words[0];
          }

          printf("\n\t%s:", v16);
          read_and_print_ptmu_region(v22[0], v22[2]);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }
        }

        std::string::assign(&__p, "general-config");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v18 = CFStringCreateWithCString(kCFAllocatorDefault, p_p, 0x600u);
        if (!get_ptmu_region_data(v18, &v27[1], v27, v9))
        {
          parse_general_config_buffer_and_read_ptd(LOWORD(v27[1]));
        }

        CFRelease(v18);
        IOObjectRelease(v9);
        putchar(10);
      }

      IOObjectRelease(v9);
      IOObjectRelease(iter);
      v5 = -2;
    }
  }

LABEL_6:
  v21.__r_.__value_.__r.__words[0] = &v23;
  std::vector<region>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_100000E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  a11 = &a18;
  std::vector<region>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (a28 < 0)
  {
    operator delete(__p);
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::vector<region>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<region>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<region>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<region>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<region>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

const char *print_verbose(const char *result, ...)
{
  va_start(va, result);
  if (verbosity)
  {
    return vprintf(result, va);
  }

  return result;
}

uint64_t read_and_print_ptmu_region(size_t *a1, unsigned int a2)
{
  v3 = a1;
  if (!pmu_spmi_read(a1, outputStruct, 8uLL) && a2)
  {
    LOWORD(v4) = 0;
    do
    {
      printf("\n\t\t0x%4x:  %2x %2x %2x %2x %2x %2x %2x %2x   rc=%d", v3, outputStruct[0], outputStruct[1], outputStruct[2], outputStruct[3], outputStruct[4], outputStruct[5], outputStruct[6], outputStruct[7], 0);
      v3 += 8;
      if (pmu_spmi_read(v3, outputStruct, 8uLL))
      {
        break;
      }

      v4 = (v4 + 8);
    }

    while (v4 < a2);
  }

  return putchar(10);
}

uint64_t parse_args(int a1, char **a2)
{
  result = 0;
  v7 = 0;
  memset(&v8, 0, sizeof(v8));
  if (a1 >= 2)
  {
    v4 = getopt_long(a1, a2, ":hv", &v8, &v7);
    if (v4 > 57)
    {
      if (v4 == 58)
      {
        v6 = "option needs a value\n";
        goto LABEL_12;
      }

      if (v4 == 104)
      {
        puts("USAGE:");
        v5 = getprogname();
        printf("    %s [options]\n", v5);
        puts("\n[options]:");
        v6 = "    -h : print this usage";
LABEL_12:
        puts(v6);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v4 == -1)
      {
        return 0;
      }

      if (!v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v6 = "unsupported option\n";
    goto LABEL_12;
  }

  return result;
}

void get_ptmu_regions(const __CFString *a1@<X1>, const __CFString *a2@<X2>, io_registry_entry_t a3@<W0>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  properties = 0;
  memset(v46, 0, 7);
  v7 = IORegistryEntryCreateCFProperties(a3, &properties, kCFAllocatorDefault, 0);
  if (v7)
  {
    fprintf(__stderrp, "ERROR: IORegistryEntryCreateCFProperties failed, rc=0x%x\n", v7);
    return;
  }

  Count = CFDictionaryGetCount(properties);
  v9 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  v10 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  if (v9 && (v11 = v10) != 0)
  {
    CFDictionaryGetKeysAndValues(properties, v9, v10);
    v38 = v9;
    v39 = a4;
    v37 = v11;
    if (Count)
    {
      __p = 0;
      LOBYTE(v12) = 0;
      v13 = v9;
      v14 = v11;
      while (1)
      {
        v15 = *v13;
        if (!CFStringHasPrefix(*v13, a1) || !CFStringHasSuffix(v15, a2))
        {
          goto LABEL_31;
        }

        Length = CFStringGetLength(a1);
        v17 = CFStringGetLength(v15);
        v18 = CFStringGetLength(a1);
        v51.length = v17 - (v18 + CFStringGetLength(a2));
        v51.location = Length;
        v19 = CFStringCreateWithSubstring(kCFAllocatorDefault, v15, v51);
        v20 = CFStringGetLength(v19);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v20, 0x8000100u);
        v22 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
        if (v22)
        {
          if (CFStringGetCString(v19, v22, MaximumSizeForEncoding, 0x8000100u))
          {
            std::string::basic_string[abi:ne200100]<0>(&v41, v22);
            v49[0] = v41.__r_.__value_.__l.__size_;
            v23 = v41.__r_.__value_.__r.__words[0];
            *(v49 + 7) = *(&v41.__r_.__value_.__r.__words[1] + 7);
            v24 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
            free(v22);
            v43 = v23;
            *v44 = v49[0];
            *&v44[7] = *(v49 + 7);
            v45 = v24;
            goto LABEL_15;
          }

          v25 = __stderrp;
          v26 = "ERROR: out of memory\n";
          v27 = 21;
        }

        else
        {
          v25 = __stderrp;
          v26 = "ERROR: string conversion failed\n";
          v27 = 32;
        }

        fwrite(v26, v27, 1uLL, v25);
        std::string::basic_string[abi:ne200100]<0>(&v43, &unk_100003ECE);
LABEL_15:
        if ((v12 & 0x80) != 0)
        {
          operator delete(__p);
        }

        v28 = *v44;
        __p = v43;
        v46[0] = *&v44[8];
        *(v46 + 3) = *&v44[11];
        v12 = v45;
        v29 = *v14;
        if (v45 < 0)
        {
          if (*v44)
          {
LABEL_21:
            if (v29 && CFDataGetLength(*v14) == 8)
            {
              v50.location = 0;
              v50.length = 8;
              CFDataGetBytes(v29, v50, buffer);
              if (v12 < 0)
              {
                std::string::__init_copy_ctor_external(&v41, __p, v28);
              }

              else
              {
                v41.__r_.__value_.__r.__words[0] = __p;
                v41.__r_.__value_.__l.__size_ = v28;
                LODWORD(v41.__r_.__value_.__r.__words[2]) = v46[0];
                *(&v41.__r_.__value_.__r.__words[2] + 3) = *(v46 + 3);
                *(&v41.__r_.__value_.__s + 23) = v12;
              }

              v42 = *buffer;
              v30 = *(v39 + 8);
              if (v30 >= *(v39 + 16))
              {
                v32 = std::vector<region>::__emplace_back_slow_path<region>(v39, &v41);
                v33 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
                *(v39 + 8) = v32;
                if (v33 < 0)
                {
                  operator delete(v41.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v31 = *&v41.__r_.__value_.__l.__data_;
                *(v30 + 16) = *(&v41.__r_.__value_.__l + 2);
                *v30 = v31;
                memset(&v41, 0, sizeof(v41));
                *(v30 + 24) = v42;
                *(v39 + 8) = v30 + 32;
              }

              CFRelease(v19);
            }
          }
        }

        else if (v45)
        {
          goto LABEL_21;
        }

LABEL_31:
        ++v14;
        ++v13;
        if (!--Count)
        {
          goto LABEL_35;
        }
      }
    }

    __p = 0;
    LOBYTE(v12) = 0;
LABEL_35:
    free(v38);
    free(v37);
    CFRelease(properties);
    v34 = *(v39 + 8);
    v35 = 126 - 2 * __clz((v34 - *v39) >> 5);
    if (v34 == *v39)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    std::__introsort<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,false>(*v39, v34, v36, 1);
    if ((v12 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    fwrite("ERROR: malloc failed\n", 0x15uLL, 1uLL, __stderrp);
    CFRelease(properties);
  }
}

void sub_100001758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (v22 < 0)
  {
    operator delete(__p);
  }

  a22 = a12;
  std::vector<region>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t get_property_data(CFStringRef key, unsigned int *a2, io_registry_entry_t entry)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = CFProperty;
  *a2 = *CFDataGetBytePtr(CFProperty);
  CFRelease(v5);
  return 0;
}

uint64_t get_ptmu_region_data(CFStringRef key, unsigned int *a2, unsigned int *a3, io_registry_entry_t entry)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, key, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = CFProperty;
  if (CFDataGetLength(CFProperty) == 8)
  {
    BytePtr = CFDataGetBytePtr(v7);
    *a2 = *BytePtr;
    *a3 = BytePtr[1];
  }

  CFRelease(v7);
  return 0;
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t std::vector<region>::__emplace_back_slow_path<region>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<region>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<region>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<region>,region*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<region>::~__split_buffer(&v16);
  return v15;
}

void sub_100001A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<region>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<region>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<region>,region*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<region>,region*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<region>,region*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<region>,region*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<region>,region*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<region>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<region>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<region>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,false>(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v159 = a2;
  v160 = a1;
  while (1)
  {
    v8 = (v6 - v7) >> 5;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          v159 = (v6 - 32);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(v7, (v7 + 4), v6 - 32);
          return;
        case 4:
          v159 = (v6 - 32);
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(v7, (v7 + 4), (v7 + 8), v6 - 32);
          return;
        case 5:
          v159 = (v6 - 32);
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(v7, (v7 + 4), (v7 + 8), (v7 + 12), v6 - 32);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v159 = (v6 - 32);
        if (*(v6 - 9) >= 0)
        {
          v61 = (v6 - 32);
        }

        else
        {
          v61 = *(v6 - 32);
        }

        if (*(v7 + 23) >= 0)
        {
          v62 = v7;
        }

        else
        {
          v62 = *v7;
        }

        if (strcmp(v61, v62) < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v160, &v159);
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v155 = v6;
        v78 = v9 >> 1;
        v79 = v9 >> 1;
        do
        {
          v80 = v79;
          if (v78 >= v79)
          {
            v157 = v79;
            v81 = (2 * v79) | 1;
            v82 = &v7[4 * v81];
            v83 = 2 * v79 + 2;
            if (v83 >= v8)
            {
              v89 = *v82;
            }

            else
            {
              v84 = *v82;
              if (*(v82 + 23) >= 0)
              {
                v85 = &v7[4 * v81];
              }

              else
              {
                v85 = *v82;
              }

              v86 = v82[4];
              if (*(v82 + 55) >= 0)
              {
                v87 = (v82 + 4);
              }

              else
              {
                v87 = v82[4];
              }

              v88 = strcmp(v85, v87);
              if (v88 >= 0)
              {
                v89 = v84;
              }

              else
              {
                v89 = v86;
              }

              if (v88 < 0)
              {
                v82 += 4;
                v81 = v83;
              }
            }

            v80 = v157;
            v90 = &v7[4 * v157];
            if (*(v82 + 23) >= 0)
            {
              v91 = v82;
            }

            else
            {
              v91 = v89;
            }

            if (*(v90 + 23) >= 0)
            {
              v92 = &v7[4 * v157];
            }

            else
            {
              v92 = *v90;
            }

            if ((strcmp(v91, v92) & 0x80000000) == 0)
            {
              v93 = *v90;
              v164 = v90[2];
              v163 = v93;
              v90[1] = 0;
              v90[2] = 0;
              *v90 = 0;
              v165 = v90[3];
              do
              {
                v94 = v82;
                if (*(v90 + 23) < 0)
                {
                  operator delete(*v90);
                }

                v95 = *v82;
                v90[2] = v82[2];
                *v90 = v95;
                *(v82 + 23) = 0;
                *v82 = 0;
                v90[3] = v82[3];
                if (v78 < v81)
                {
                  break;
                }

                v96 = (2 * v81) | 1;
                v82 = &v7[4 * v96];
                v81 = 2 * v81 + 2;
                if (v81 >= v8)
                {
                  v103 = *v82;
                  v81 = v96;
                }

                else
                {
                  v97 = *v82;
                  v98 = *(v82 + 23) >= 0 ? &v7[4 * v96] : *v82;
                  v99 = v78;
                  v100 = v82[4];
                  v101 = *(v82 + 55) >= 0 ? (v82 + 4) : v82[4];
                  v102 = strcmp(v98, v101);
                  v103 = v102 >= 0 ? v97 : v100;
                  v78 = v99;
                  if (v102 >= 0)
                  {
                    v81 = v96;
                  }

                  else
                  {
                    v82 += 4;
                  }
                }

                v104 = *(v82 + 23) >= 0 ? v82 : v103;
                v105 = v164 >= 0 ? &v163 : v163;
                v90 = v94;
              }

              while ((strcmp(v104, v105) & 0x80000000) == 0);
              if (*(v94 + 23) < 0)
              {
                operator delete(*v94);
              }

              v106 = v163;
              v94[2] = v164;
              *v94 = v106;
              v94[3] = v165;
              v80 = v157;
            }
          }

          v79 = v80 - 1;
        }

        while (v80);
        v107 = v155;
        do
        {
          v108 = 0;
          v109 = v107;
          v156 = *v7;
          *v162 = v7[1];
          *&v162[7] = *(v7 + 15);
          v158 = *(v7 + 23);
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v110 = v7[3];
          v111 = v7;
          do
          {
            v112 = &v111[4 * v108];
            v113 = v112 + 4;
            v114 = (2 * v108) | 1;
            v108 = 2 * v108 + 2;
            if (v108 >= v8)
            {
              v108 = v114;
            }

            else
            {
              v117 = v112[8];
              v116 = v112 + 8;
              v115 = v117;
              if (*(v116 - 9) >= 0)
              {
                v118 = v113;
              }

              else
              {
                v118 = *(v116 - 4);
              }

              if (*(v116 + 23) >= 0)
              {
                v119 = v116;
              }

              else
              {
                v119 = v115;
              }

              if (strcmp(v118, v119) >= 0)
              {
                v108 = v114;
              }

              else
              {
                v113 = v116;
              }
            }

            if (*(v111 + 23) < 0)
            {
              operator delete(*v111);
            }

            v120 = *v113;
            v111[2] = v113[2];
            *v111 = v120;
            *(v113 + 23) = 0;
            *v113 = 0;
            v111[3] = v113[3];
            v111 = v113;
          }

          while (v108 <= ((v8 - 2) >> 1));
          v107 -= 4;
          v121 = *(v113 + 23);
          if (v113 == (v109 - 4))
          {
            if (v121 < 0)
            {
              operator delete(*v113);
            }

            *v113 = v156;
            v137 = *&v162[7];
            v113[1] = *v162;
            *(v113 + 15) = v137;
            *(v113 + 23) = v158;
            v113[3] = v110;
          }

          else
          {
            if (v121 < 0)
            {
              operator delete(*v113);
            }

            v122 = *v107;
            v113[2] = *(v109 - 2);
            *v113 = v122;
            *(v109 - 9) = 0;
            *(v109 - 32) = 0;
            v113[3] = *(v109 - 1);
            if (*(v109 - 9) < 0)
            {
              operator delete(*v107);
            }

            *(v109 - 4) = v156;
            *(v109 - 3) = *v162;
            *(v109 - 17) = *&v162[7];
            *(v109 - 9) = v158;
            *(v109 - 1) = v110;
            v123 = ((v113 + 4) - v7) >> 5;
            v124 = v123 < 2;
            v125 = v123 - 2;
            if (!v124)
            {
              v126 = v125 >> 1;
              v127 = &v7[4 * (v125 >> 1)];
              v128 = *(v127 + 23) >= 0 ? &v7[4 * (v125 >> 1)] : *v127;
              v129 = *(v113 + 23) >= 0 ? v113 : *v113;
              if (strcmp(v128, v129) < 0)
              {
                v130 = *v113;
                v131 = v113[3];
                v164 = v113[2];
                v163 = v130;
                v113[1] = 0;
                v113[2] = 0;
                *v113 = 0;
                v165 = v131;
                if (v164 >= 0)
                {
                  v132 = &v163;
                }

                else
                {
                  v132 = v163;
                }

                do
                {
                  v133 = v127;
                  if (*(v113 + 23) < 0)
                  {
                    operator delete(*v113);
                  }

                  v134 = *v127;
                  v113[2] = v127[2];
                  *v113 = v134;
                  *(v127 + 23) = 0;
                  *v127 = 0;
                  v113[3] = v127[3];
                  if (!v126)
                  {
                    break;
                  }

                  v126 = (v126 - 1) >> 1;
                  v127 = &v7[4 * v126];
                  v135 = *(v127 + 23) >= 0 ? &v7[4 * v126] : *v127;
                  v113 = v133;
                }

                while (strcmp(v135, v132) < 0);
                if (*(v133 + 23) < 0)
                {
                  operator delete(*v133);
                }

                v136 = v163;
                v133[2] = v164;
                *v133 = v136;
                v133[3] = v165;
              }
            }
          }

          v124 = v8-- <= 2;
        }

        while (!v124);
      }

      return;
    }

    v10 = v8 >> 1;
    v11 = v6 - 32;
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(&v7[4 * (v8 >> 1)], v7, v11);
      v12 = v160;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(v7, &v7[4 * (v8 >> 1)], v11);
      v12 = v160;
      v13 = &v160[4 * v10];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>((v160 + 4), (v13 - 4), (v159 - 8));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>((v160 + 8), (v13 + 4), (v159 - 12));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>((v13 - 4), v13, (v13 + 4));
      v14 = *v160;
      *&v163 = v160[1];
      *(&v163 + 7) = *(v160 + 15);
      v15 = *(v160 + 23);
      v160[1] = 0;
      v12[2] = 0;
      *v12 = 0;
      v16 = v12[3];
      v17 = v13[2];
      v18 = v13[3];
      *v12 = *v13;
      v12[2] = v17;
      v12[3] = v18;
      v19 = v163;
      *v13 = v14;
      v13[1] = v19;
      *(v13 + 15) = *(&v163 + 7);
      *(v13 + 23) = v15;
      v13[3] = v16;
    }

    --a3;
    if (a4)
    {
      v20 = v159;
    }

    else
    {
      if (*(v12 - 9) >= 0)
      {
        v21 = (v12 - 4);
      }

      else
      {
        v21 = *(v12 - 4);
      }

      if (*(v12 + 23) >= 0)
      {
        v22 = v12;
      }

      else
      {
        v22 = *v12;
      }

      v20 = v159;
      if ((strcmp(v21, v22) & 0x80000000) == 0)
      {
        v161 = v159;
        v163 = *v12;
        v42 = v12[2];
        v43 = v12[3];
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
        v164 = v42;
        v165 = v43;
        if (v42 >= 0)
        {
          v44 = &v163;
        }

        else
        {
          v44 = v163;
        }

        if (*(v20 - 9) >= 0)
        {
          v45 = (v20 - 32);
        }

        else
        {
          v45 = *(v20 - 32);
        }

        if (strcmp(v44, v45) < 0)
        {
          v46 = v12 + 4;
          do
          {
            *v162 = v46;
            if (*(v46 + 23) >= 0)
            {
              v47 = v46;
            }

            else
            {
              v47 = *v46;
            }

            v46 += 4;
          }

          while ((strcmp(v44, v47) & 0x80000000) == 0);
          v48 = (v46 - 4);
        }

        else
        {
          v49 = v12 + 4;
          do
          {
            v48 = v49;
            *v162 = v49;
            if (v49 >= v20)
            {
              break;
            }

            v50 = *(v49 + 23) >= 0 ? v49 : *v49;
            v51 = strcmp(v44, v50);
            v49 = (v48 + 32);
          }

          while ((v51 & 0x80000000) == 0);
        }

        if (v48 < v20)
        {
          v52 = v20 - 32;
          do
          {
            v161 = v52;
            if (*(v52 + 23) >= 0)
            {
              v53 = v52;
            }

            else
            {
              v53 = *v52;
            }

            v52 -= 32;
          }

          while (strcmp(v44, v53) < 0);
          v20 = v52 + 32;
        }

        if (v48 < v20)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(v162, &v161);
            v54 = *v162 + 32;
            do
            {
              *v162 = v54;
              if (*(v54 + 23) >= 0)
              {
                v55 = v54;
              }

              else
              {
                v55 = *v54;
              }

              v54 += 32;
            }

            while ((strcmp(v44, v55) & 0x80000000) == 0);
            v48 = v54 - 32;
            v56 = (v161 - 4);
            do
            {
              v161 = v56;
              if (*(v56 + 23) >= 0)
              {
                v57 = v56;
              }

              else
              {
                v57 = *v56;
              }

              v56 -= 32;
            }

            while (strcmp(v44, v57) < 0);
          }

          while (v48 < v56 + 32);
        }

        v58 = (v48 - 32);
        if ((v48 - 32) != v12)
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          v59 = *v58;
          v12[2] = *(v48 - 16);
          *v12 = v59;
          *(v48 - 9) = 0;
          *(v48 - 32) = 0;
          v12[3] = *(v48 - 8);
        }

        if (*(v48 - 9) < 0)
        {
          operator delete(*v58);
        }

        a4 = 0;
        v60 = v163;
        *(v48 - 16) = v164;
        *v58 = v60;
        *(v48 - 8) = v43;
        v7 = *v162;
        goto LABEL_114;
      }
    }

    v23 = 0;
    v161 = v20;
    v163 = *v12;
    v24 = v12[2];
    v25 = v12[3];
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    v164 = v24;
    v165 = v25;
    if (v24 >= 0)
    {
      v26 = &v163;
    }

    else
    {
      v26 = v163;
    }

    do
    {
      *v162 = &v12[v23 + 4];
      v27 = **v162;
      if (v12[v23 + 6] >= 0)
      {
        v28 = &v12[v23 + 4];
      }

      else
      {
        v28 = v12[v23 + 4];
      }

      v23 += 4;
    }

    while (strcmp(v28, v26) < 0);
    v29 = &v12[v23];
    if (v23 == 4)
    {
      v30 = v20 - 32;
      while (1)
      {
        v32 = v30 + 32;
        if (v29 >= v30 + 32)
        {
          break;
        }

        v161 = v30;
        if (*(v30 + 23) >= 0)
        {
          v33 = v30;
        }

        else
        {
          v33 = *v30;
        }

        v30 -= 32;
        if (strcmp(v33, v26) < 0)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v30 = v20 - 32;
      do
      {
        v161 = v30;
        if (*(v30 + 23) >= 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *v30;
        }

        v30 -= 32;
      }

      while ((strcmp(v31, v26) & 0x80000000) == 0);
LABEL_43:
      v32 = v30 + 32;
    }

    v7 = v29;
    if (v29 < v32)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(v162, &v161);
        v34 = *v162 + 32;
        do
        {
          *v162 = v34;
          if (*(v34 + 23) >= 0)
          {
            v35 = v34;
          }

          else
          {
            v35 = *v34;
          }

          v34 += 32;
        }

        while (strcmp(v35, v26) < 0);
        v7 = (v34 - 32);
        v36 = (v161 - 4);
        do
        {
          v161 = v36;
          if (*(v36 + 23) >= 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = *v36;
          }

          v36 -= 32;
        }

        while ((strcmp(v37, v26) & 0x80000000) == 0);
      }

      while (v7 < v36 + 32);
    }

    v38 = (v7 - 4);
    if (v7 - 4 != v12)
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v39 = *v38;
      v12[2] = *(v7 - 2);
      *v12 = v39;
      *(v7 - 9) = 0;
      *(v7 - 32) = 0;
      v12[3] = *(v7 - 1);
    }

    if (*(v7 - 9) < 0)
    {
      operator delete(*v38);
    }

    v40 = v163;
    *(v7 - 2) = v164;
    *v38 = v40;
    *(v7 - 1) = v25;
    if (v29 < v32)
    {
      goto LABEL_63;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *>(v160, (v7 - 4));
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *>(v7, v159))
    {
      if (!v41)
      {
LABEL_63:
        std::__introsort<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,false>(v160, v7 - 4, a3, a4 & 1);
        a4 = 0;
      }

LABEL_114:
      v160 = v7;
      goto LABEL_115;
    }

    if (v41)
    {
      return;
    }

    v159 = v7 - 4;
    v7 = v160;
LABEL_115:
    v6 = v159;
  }

  if (a4)
  {
    if (v7 != v6)
    {
      v63 = (v7 + 4);
      if (v7 + 4 != v6)
      {
        v64 = 0;
        v65 = v7;
        do
        {
          v66 = v63;
          if (*(v65 + 55) >= 0)
          {
            v67 = v63;
          }

          else
          {
            v67 = v65[4];
          }

          if (*(v65 + 23) >= 0)
          {
            v68 = v65;
          }

          else
          {
            v68 = *v65;
          }

          if (strcmp(v67, v68) < 0)
          {
            v69 = *v66;
            v164 = *(v66 + 2);
            v163 = v69;
            *(v66 + 1) = 0;
            *(v66 + 2) = 0;
            *v66 = 0;
            v165 = v65[7];
            if (v164 >= 0)
            {
              v70 = &v163;
            }

            else
            {
              v70 = v163;
            }

            v71 = v64;
            while (1)
            {
              v72 = (v7 + v71);
              if (*(v7 + v71 + 55) < 0)
              {
                operator delete(v72[4]);
              }

              *(v72 + 2) = *v72;
              v73 = v72[2];
              v74 = v72[3];
              *(v72 + 23) = 0;
              *v72 = 0;
              v72[6] = v73;
              v72[7] = v74;
              if (!v71)
              {
                break;
              }

              if (*(v7 + v71 - 9) >= 0)
              {
                v75 = v7 + v71 - 32;
              }

              else
              {
                v75 = *(v7 + v71 - 32);
              }

              v71 -= 32;
              if ((strcmp(v70, v75) & 0x80000000) == 0)
              {
                v76 = v7 + v71 + 32;
                goto LABEL_151;
              }
            }

            v76 = v7;
LABEL_151:
            if (*(v76 + 23) < 0)
            {
              operator delete(*v76);
            }

            v77 = v163;
            *(v76 + 16) = v164;
            *v76 = v77;
            *(v76 + 24) = v165;
          }

          v63 = v66 + 32;
          v64 += 32;
          v65 = v66;
        }

        while (v66 + 32 != v6);
      }
    }
  }

  else if (v7 != v6)
  {
    v138 = (v7 + 4);
    if (v7 + 4 != v6)
    {
      v139 = v7 + 7;
      do
      {
        v140 = v138;
        if (*(v7 + 55) >= 0)
        {
          v141 = v138;
        }

        else
        {
          v141 = v7[4];
        }

        if (*(v7 + 23) >= 0)
        {
          v142 = v7;
        }

        else
        {
          v142 = *v7;
        }

        if (strcmp(v141, v142) < 0)
        {
          v143 = *v140;
          v164 = v140[2];
          v163 = v143;
          v140[1] = 0;
          v140[2] = 0;
          *v140 = 0;
          v165 = v7[7];
          if (v164 >= 0)
          {
            v144 = &v163;
          }

          else
          {
            v144 = v163;
          }

          v145 = v139;
          do
          {
            v146 = (v145 - 3);
            if (*(v145 - 1) < 0)
            {
              operator delete(*v146);
            }

            *v146 = *(v145 - 7);
            *(v145 - 1) = *(v145 - 5);
            *(v145 - 33) = 0;
            *(v145 - 56) = 0;
            v147 = v145 - 4;
            *v145 = *(v145 - 4);
            v148 = *(v145 - 65);
            v151 = *(v145 - 11);
            v150 = (v145 - 11);
            v149 = v151;
            if (v148 >= 0)
            {
              v152 = v150;
            }

            else
            {
              v152 = v149;
            }

            v145 = v147;
          }

          while (strcmp(v144, v152) < 0);
          v153 = (v147 - 3);
          if (*(v147 - 1) < 0)
          {
            operator delete(*v153);
          }

          v154 = v163;
          *(v147 - 1) = v164;
          *v153 = v154;
          HIBYTE(v164) = 0;
          LOBYTE(v163) = 0;
          *v147 = v165;
        }

        v138 = (v140 + 4);
        v139 += 4;
        v7 = v140;
      }

      while (v140 + 4 != v6);
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v8 = (*a1)[1];
  *&v8[7] = *(*a1 + 15);
  v5 = *(*a1 + 23);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v6 = v2[3];
  v7 = *(v3 + 16);
  *v2 = *v3;
  v2[2] = v7;
  *(v3 + 23) = 0;
  *v3 = 0;
  v2[3] = *(v3 + 24);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v4;
  *(v3 + 8) = *v8;
  *(v3 + 15) = *&v8[7];
  *(v3 + 23) = v5;
  *(v3 + 24) = v6;
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a1;
  v15 = a3;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = strcmp(v4, v5);
  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = strcmp(v7, v4);
  if (v6 < 0)
  {
    if (v8 < 0)
    {
      v9 = &v17;
LABEL_30:
      v12 = &v15;
      goto LABEL_31;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v17, &v16);
    if (*(v15 + 23) >= 0)
    {
      v13 = v15;
    }

    else
    {
      v13 = *v15;
    }

    if (*(v16 + 23) >= 0)
    {
      v14 = v16;
    }

    else
    {
      v14 = *v16;
    }

    if (strcmp(v13, v14) < 0)
    {
      v9 = &v16;
      goto LABEL_30;
    }
  }

  else if (v8 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v16, &v15);
    v10 = *(v16 + 23) >= 0 ? v16 : *v16;
    v11 = *(v17 + 23) >= 0 ? v17 : *v17;
    if (strcmp(v10, v11) < 0)
    {
      v9 = &v17;
      v12 = &v16;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(v9, v12);
    }
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(a1, a2, a3);
  if (*(a4 + 23) >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (strcmp(v8, v9) < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v15, &v14);
    v10 = *(v15 + 23) >= 0 ? v15 : *v15;
    v11 = *(a2 + 23) >= 0 ? a2 : *a2;
    if (strcmp(v10, v11) < 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v16, &v15);
      if (*(v16 + 23) >= 0)
      {
        v12 = v16;
      }

      else
      {
        v12 = *v16;
      }

      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (strcmp(v12, v13) < 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v17, &v16);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a1;
  v19 = a4;
  v20 = a3;
  v18 = a5;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(a1, a2, a3, a4);
  if (*(a5 + 23) >= 0)
  {
    v10 = a5;
  }

  else
  {
    v10 = *a5;
  }

  if (*(a4 + 23) >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (strcmp(v10, v11) < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v19, &v18);
    v12 = *(v19 + 23) >= 0 ? v19 : *v19;
    v13 = *(a3 + 23) >= 0 ? a3 : *a3;
    if (strcmp(v12, v13) < 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v20, &v19);
      v14 = *(v20 + 23) >= 0 ? v20 : *v20;
      v15 = *(a2 + 23) >= 0 ? a2 : *a2;
      if (strcmp(v14, v15) < 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v21, &v20);
        if (*(v21 + 23) >= 0)
        {
          v16 = v21;
        }

        else
        {
          v16 = *v21;
        }

        if (*(a1 + 23) >= 0)
        {
          v17 = a1;
        }

        else
        {
          v17 = *a1;
        }

        if (strcmp(v16, v17) < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v22, &v21);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v26 = a2;
  v27 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 32);
        v26 = a2 - 32;
        if (*(a2 - 9) >= 0)
        {
          v6 = (a2 - 32);
        }

        else
        {
          v6 = v5;
        }

        if (*(a1 + 23) >= 0)
        {
          v7 = a1;
        }

        else
        {
          v7 = *a1;
        }

        if (strcmp(v6, v7) < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<region *&,region *&>(&v27, &v26);
        }

        return 1;
      }

      goto LABEL_17;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(a1, a1 + 32, a2 - 32);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(a1, a1 + 32, a1 + 64, a2 - 32);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
      return 1;
  }

LABEL_17:
  v8 = a1 + 64;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,get_ptmu_regions(unsigned int,__CFString const*,__CFString const*)::$_0 &,region *,0>(a1, a1 + 32, a1 + 64);
  v9 = a1 + 96;
  if (v9 == v2)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    if (*(v9 + 23) >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = *v9;
    }

    if (*(v8 + 23) >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    if ((strcmp(v11, v12) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v23 = *v9;
    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 0;
    v24 = v13;
    v25 = v14;
    do
    {
      v15 = v8;
      if (*(v8 + 55) < 0)
      {
        operator delete(*(v8 + 32));
      }

      *(v8 + 32) = *v8;
      v16 = *(v8 + 16);
      v17 = *(v8 + 24);
      *(v8 + 23) = 0;
      *v8 = 0;
      *(v8 + 48) = v16;
      *(v8 + 56) = v17;
      if (v8 == v27)
      {
        break;
      }

      v8 -= 32;
      v18 = *(v15 - 32);
      v19 = v24 >= 0 ? &v23 : v23;
      v20 = *(v15 - 9) >= 0 ? (v15 - 32) : *(v15 - 32);
    }

    while (strcmp(v19, v20) < 0);
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    v21 = v23;
    *(v15 + 16) = v24;
    *v15 = v21;
    HIBYTE(v24) = 0;
    LOBYTE(v23) = 0;
    *(v15 + 24) = v25;
    if (++v10 == 8)
    {
      return v9 + 32 == v26;
    }

    v2 = v26;
LABEL_41:
    v8 = v9;
    v9 += 32;
    if (v9 == v2)
    {
      return 1;
    }
  }
}

uint64_t pmu_spmi_init(char *a1)
{
  v2 = IOServiceNameMatching(a1);
  CFDictionarySetValue(v2, @"IOProviderClass", @"AppleARMSPMIDevice");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    result = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = __stderrp;
    v7 = getprogname();
    v8 = mach_error_string(v5);
    fprintf(v6, "%s: cannot open service: %s\n", v7, v8);
    getprogname();
    mach_error_string(v5);
    printf("%s: cannot open service: %s\n");
  }

  else
  {
    v9 = __stderrp;
    v10 = getprogname();
    fprintf(v9, "%s: could not find device %s\n", v10, a1);
    getprogname();
    printf("%s: could not find device %s\n");
  }

  return 0xFFFFFFFFLL;
}

uint64_t pmu_spmi_read(size_t *outputStructCnt, unsigned __int8 *outputStruct, unint64_t a3)
{
  v5 = outputStructCnt;
  v12 = 128;
  if (spmi_verbose)
  {
    printf("%s: start: addr 0x%x size %td\n", "pmu_spmi_read", outputStructCnt, a3);
  }

  if (a3 >= 0x80)
  {
    v7 = 1;
    while (1)
    {
      input = v5;
      v14 = transferOptions;
      v8 = IOConnectCallMethod(connect, 5u, &input, 2u, 0, 0, 0, 0, outputStruct, &v12);
      v6 = v8;
      if (spmi_verbose)
      {
        printf("%s: addr 0x%x size %td rc = 0x%x\n", "pmu_spmi_read", v5, v12, v8);
      }

      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      outputStruct += 128;
      v5 += 128;
      if (a3 >> 7 <= v7++)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
LABEL_10:
    v12 = a3 & 0x7F;
    if ((a3 & 0x7F) != 0)
    {
      input = v5;
      v14 = transferOptions;
      v10 = IOConnectCallMethod(connect, 5u, &input, 2u, 0, 0, 0, 0, outputStruct, &v12);
      v6 = v10;
      if (spmi_verbose)
      {
        printf("%s: addr 0x%x size %td rc = 0x%x\n", "pmu_spmi_read", v5, v12, v10);
      }
    }
  }

  return v6;
}

void number_to_ascii_string(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 0;
  *a2 = 0;
  if (a1)
  {
    v3 = a1;
    v4 = *a2;
    do
    {
      *(&__p.__r_.__value_.__s + 23) = 1;
      LOWORD(__p.__r_.__value_.__l.__data_) = v3;
      v5 = *(a2 + 23);
      if (v5 >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = v4;
      }

      if (v5 >= 0)
      {
        v7 = *(a2 + 23);
      }

      else
      {
        v7 = *(a2 + 8);
      }

      v8 = std::string::append(&__p, v6, v7);
      v4 = v8->__r_.__value_.__r.__words[0];
      v12[0] = v8->__r_.__value_.__l.__size_;
      *(v12 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
      v9 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v4;
      *(a2 + 8) = v12[0];
      *(a2 + 15) = *(v12 + 7);
      *(a2 + 23) = v9;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v4 = *a2;
      }

      v10 = v3 >= 0x100;
      v3 >>= 8;
    }

    while (v10);
  }
}

void sub_1000033DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

uint64_t parse_general_config_buffer_and_read_ptd(PTDConnection *a1)
{
  Instance = PTDConnection::get_Instance(a1);
  putchar(10);
  result = config_buffer_get_feature_config(a1, 1, 0, &size, 0);
  if (!result)
  {
    v3 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v3)
    {
      v4 = v3;
      feature_config = config_buffer_get_feature_config(a1, 0, v3, &size, size);
      if (feature_config)
      {
        v6 = feature_config;
        free(v4);
        if (v6 == 1)
        {
          return 0;
        }

        else
        {
          return v6;
        }
      }

      if (size < 0xCu)
      {
LABEL_20:
        free(v4);
        return 0;
      }

      v7 = 0;
      while (1)
      {
        v8 = &v4[12 * v7];
        number_to_ascii_string(*v8, __p);
        if (v15 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        printf("\n\t'%s'", v9);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = malloc_type_malloc(16 * v8[8], 0x100004077774924uLL);
        if (!v10)
        {
          break;
        }

        v11 = v10;
        if (PTDObject::PTDRead(&Instance, *v8, 0, v8[8], v10, 1))
        {
          puts("\t\tFailed to read from AON PTD");
          free(v11);
          return 4294967287;
        }

        LOBYTE(v12) = v8[8];
        if (v12)
        {
          v13 = 0;
          do
          {
            printf("\n\t\tentry %d, data : 0x%16llX\ttimestamp:0x%16llX", v13, *&v11[8 * v13], *&v11[8 * v13 + 8 * v12]);
            ++v13;
            v12 = v8[8];
          }

          while (v13 < v12);
        }

        free(v11);
        if (++v7 >= (size / 0xCu))
        {
          goto LABEL_20;
        }
      }
    }

    puts("\t\tMemory allocation failed");
    return 4294967289;
  }

  return result;
}

uint64_t config_buffer_get_feature_config(size_t *outputStructCnt, char a2, void *a3, void *a4, unsigned int a5)
{
  if (!a4)
  {
    v10 = "\t\tInvalid header pointer argument";
    goto LABEL_23;
  }

  if (!a3 && (a2 & 1) == 0)
  {
    v10 = "\t\tInvalid result pointer argument";
LABEL_23:
    puts(v10);
    return 0xFFFFFFFFLL;
  }

  if (!outputStructCnt)
  {
    v10 = "\t\tNo config buffer address defined for this PMU";
    goto LABEL_23;
  }

  if ((pmu_spmi_read(outputStructCnt, size, 8uLL) & 0x80000000) != 0)
  {
    puts("\t\tspmi error");
    return 4294967292;
  }

  else if (size[0] && size[1] != 8 && size_4)
  {
    v11 = malloc_type_malloc(size[0], 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      if ((pmu_spmi_read(outputStructCnt, v11, size[0]) & 0x80000000) != 0)
      {
        puts("\t\tspmi error");
        v17 = 4294967292;
      }

      else
      {
        v13 = size_4;
        if (size_4)
        {
          v14 = v12 + 4;
          while (1)
          {
            v15 = *v14;
            if (*(v14 + 2) == 6 && v15 != 0)
            {
              break;
            }

            v14 = (v14 + v15 + 8);
            if (!--v13)
            {
              goto LABEL_21;
            }
          }

          *a4 = *v14;
          if ((a2 & 1) == 0)
          {
            v21 = *v14;
            v19 = v14 + 4;
            v20 = v21;
            if (v21 >= a5)
            {
              v22 = a5;
            }

            else
            {
              v22 = v20;
            }

            memcpy(a3, v19, v22);
          }

          v17 = 0;
        }

        else
        {
LABEL_21:
          puts("\t\tfeature configuration not found");
          v17 = 1;
        }
      }

      free(v12);
    }

    else
    {
      puts("\t\tMemory allocation failed");
      return 4294967289;
    }
  }

  else
  {
    puts("\t\tNo valid configuration buffer found");
    return 4294967288;
  }

  return v17;
}

void *PTDConnection::get_Instance(PTDConnection *this)
{
  {
    PTDConnection::get_Instance();
  }

  return &PTDConnection::get_Instance(void)::instance;
}

void PTDConnection::get_Instance()
{
  {
    __cxa_atexit(PTDConnection::~PTDConnection, &PTDConnection::get_Instance(void)::instance, &_mh_execute_header);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}