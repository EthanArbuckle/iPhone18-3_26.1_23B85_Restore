@interface SRMemoryMapping
+ (void)initialize;
- (void)dealloc;
@end

@implementation SRMemoryMapping

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071B58 = os_log_create("com.apple.SensorKit", "SRMemoryMapping");
  }
}

- (void)dealloc
{
  if (self)
  {
    mappedAddress = self->_mappedAddress;
    if (mappedAddress + 1 >= 2)
    {
      v4 = qword_100071B58;
      if (os_log_type_enabled(qword_100071B58, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v11 = mappedAddress;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unmapping %{public}p", buf, 0xCu);
      }

      pageAlignedSize = self->_pageAlignedSize;
      if (munmap(mappedAddress, pageAlignedSize))
      {
        v6 = qword_100071B58;
        if (os_log_type_enabled(qword_100071B58, OS_LOG_TYPE_INFO))
        {
          v7 = *__error();
          *buf = 134349568;
          v11 = mappedAddress;
          v12 = 2048;
          v13 = pageAlignedSize;
          v14 = 1026;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Unable to unmap %{public}p size %zu because %{public, darwin.errno}d", buf, 0x1Cu);
          v6 = qword_100071B58;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          v8 = *__error();
          *buf = 134349568;
          v11 = mappedAddress;
          v12 = 2048;
          v13 = pageAlignedSize;
          v14 = 1026;
          v15 = v8;
          _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Unable to unmap %{public}p size %zu because %{public, darwin.errno}d", buf, 0x1Cu);
        }

        abort();
      }

      self->_mappedAddress = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = SRMemoryMapping;
  [(SRMemoryMapping *)&v9 dealloc];
}

@end