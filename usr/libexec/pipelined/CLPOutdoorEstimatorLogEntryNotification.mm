@interface CLPOutdoorEstimatorLogEntryNotification
- (CLPOutdoorEstimatorLogEntryNotification)init;
- (CLPOutdoorEstimatorLogEntryNotification)initWithCoder:(id)coder;
- (CLPOutdoorEstimatorLogEntryNotification)initWithSerializedOutdoorEstimatorLogEntry:()basic_string<char;
- (basic_string<char,)serializedOutdoorEstimatorLogEntry;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLPOutdoorEstimatorLogEntryNotification

- (CLPOutdoorEstimatorLogEntryNotification)init
{
  [(CLPOutdoorEstimatorLogEntryNotification *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLPOutdoorEstimatorLogEntryNotification)initWithSerializedOutdoorEstimatorLogEntry:()basic_string<char
{
  v8.receiver = self;
  v8.super_class = CLPOutdoorEstimatorLogEntryNotification;
  v4 = [(CLPOutdoorEstimatorLogEntryNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=((v4 + 8), a3);
    v6 = v5;
  }

  return v5;
}

- (CLPOutdoorEstimatorLogEntryNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CLPOutdoorEstimatorLogEntryNotification;
  v5 = [(CLPOutdoorEstimatorLogEntryNotification *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outdoorEstimatorLogEntry"];
    bytes = [v6 bytes];
    v8 = [v6 length];
    v9 = v8;
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v13) = v8;
    if (v8)
    {
      memmove(&__dst, bytes, v8);
      *(&__dst + v9) = 0;
      if ((*(&v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(&v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 23) & 0x80000000) == 0)
      {
LABEL_6:
        *v5->_serializedOutdoorEstimatorLogEntry.__rep_.__s.__data_ = __dst;
        *(&v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 2) = v13;
        v10 = v5;

        goto LABEL_7;
      }
    }

    operator delete(v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l.__data_);
    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  size = *(&self->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 23);
  if ((size & 0x8000000000000000) != 0)
  {
    data = self->_serializedOutdoorEstimatorLogEntry.__rep_.__l.__data_;
    size = self->_serializedOutdoorEstimatorLogEntry.__rep_.__l.__size_;
  }

  else
  {
    data = &self->_serializedOutdoorEstimatorLogEntry;
  }

  v6 = [NSData dataWithBytes:data length:size];
  [coderCopy encodeObject:v6 forKey:@"outdoorEstimatorLogEntry"];
}

- (basic_string<char,)serializedOutdoorEstimatorLogEntry
{
  if (result[1].__rep_.__s.__data_[7] < 0)
  {
    return sub_100003228(retstr, result->__rep_.__l.__size_, *(&result->__rep_.__l + 2));
  }

  *retstr = *(result + 8);
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  return self;
}

@end