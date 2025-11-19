@interface HASPresetRecord
- (void)printHASPresetRecord;
@end

@implementation HASPresetRecord

- (void)printHASPresetRecord
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HAS Preset Record description:", &v14, 2u);
  }

  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    index = self->_index;
    v14 = 67109120;
    LODWORD(v15) = index;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " index : %u", &v14, 8u);
  }

  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    writable = self->_writable;
    v14 = 67109120;
    LODWORD(v15) = writable;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " writable : %u", &v14, 8u);
  }

  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    isAvailable = self->_isAvailable;
    v14 = 67109120;
    LODWORD(v15) = isAvailable;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " isAvailable : %d", &v14, 8u);
  }

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    v14 = 138412290;
    v15 = name;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " name : %@", &v14, 0xCu);
  }

  v12 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    isLast = self->_isLast;
    v14 = 67109120;
    LODWORD(v15) = isLast;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " isLast : %d", &v14, 8u);
  }
}

@end