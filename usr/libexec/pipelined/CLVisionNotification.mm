@interface CLVisionNotification
- (CLVisionNotification)init;
- (CLVisionNotification)initWithARSessionState:(unint64_t)state;
- (CLVisionNotification)initWithCoder:(id)coder;
- (CLVisionNotification)initWithSerializedVIOEstimation:()basic_string<char;
- (CLVisionNotification)initWithSerializedVLLocalizationResult:()basic_string<char;
- (basic_string<char,)serializedVIOEstimation;
- (basic_string<char,)serializedVLLocalizationResult;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVisionNotification

- (CLVisionNotification)init
{
  [(CLVisionNotification *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLVisionNotification)initWithARSessionState:(unint64_t)state
{
  v8.receiver = self;
  v8.super_class = CLVisionNotification;
  v4 = [(CLVisionNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_arSessionState = state;
    v4->_notificationType = 0;
    v6 = v4;
  }

  return v5;
}

- (CLVisionNotification)initWithSerializedVIOEstimation:()basic_string<char
{
  v8.receiver = self;
  v8.super_class = CLVisionNotification;
  v4 = [(CLVisionNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=(v4 + 1, a3);
    v5->_notificationType = 1;
    v6 = v5;
  }

  return v5;
}

- (CLVisionNotification)initWithSerializedVLLocalizationResult:()basic_string<char
{
  v8.receiver = self;
  v8.super_class = CLVisionNotification;
  v4 = [(CLVisionNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=(v4 + 2, a3);
    v5->_notificationType = 2;
    v6 = v5;
  }

  return v5;
}

- (CLVisionNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CLVisionNotification;
  v5 = [(CLVisionNotification *)&v19 init];
  if (v5)
  {
    v5->_arSessionState = [coderCopy decodeIntForKey:@"arSessionState"];
    v5->_notificationType = [coderCopy decodeIntForKey:@"notificationType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vioEstimation"];
    bytes = [v6 bytes];
    v8 = [v6 length];
    v9 = v8;
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v18) = v8;
    if (v8)
    {
      memmove(&__dst, bytes, v8);
      *(&__dst + v9) = 0;
      if ((*(&v5->_serializedVIOEstimation.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(&v5->_serializedVIOEstimation.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(v5->_serializedVIOEstimation.__rep_.__l.__data_);
LABEL_6:
    *v5->_serializedVIOEstimation.__rep_.__s.__data_ = __dst;
    *(&v5->_serializedVIOEstimation.__rep_.__l + 2) = v18;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vlLocalizationResult"];

    v11 = v10;
    bytes2 = [v10 bytes];
    v13 = [v10 length];
    v14 = v13;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v18) = v13;
    if (v13)
    {
      memmove(&__dst, bytes2, v13);
      *(&__dst + v14) = 0;
      if ((*(&v5->_serializedVLLocalizationResult.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(&v5->_serializedVLLocalizationResult.__rep_.__l + 23) & 0x80000000) == 0)
      {
LABEL_10:
        *v5->_serializedVLLocalizationResult.__rep_.__s.__data_ = __dst;
        *(&v5->_serializedVLLocalizationResult.__rep_.__l + 2) = v18;
        v15 = v5;

        goto LABEL_11;
      }
    }

    operator delete(v5->_serializedVLLocalizationResult.__rep_.__l.__data_);
    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:LODWORD(self->_arSessionState) forKey:@"arSessionState"];
  [coderCopy encodeInt:self->_notificationType forKey:@"notificationType"];
  size = *(&self->_serializedVIOEstimation.__rep_.__l + 23);
  if ((size & 0x8000000000000000) != 0)
  {
    data = self->_serializedVIOEstimation.__rep_.__l.__data_;
    size = self->_serializedVIOEstimation.__rep_.__l.__size_;
  }

  else
  {
    data = &self->_serializedVIOEstimation;
  }

  v6 = [NSData dataWithBytes:data length:size];
  [coderCopy encodeObject:v6 forKey:@"vioEstimation"];

  v7 = *(&self->_serializedVLLocalizationResult.__rep_.__l + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    p_serializedVLLocalizationResult = self->_serializedVLLocalizationResult.__rep_.__l.__data_;
    v7 = self->_serializedVLLocalizationResult.__rep_.__l.__size_;
  }

  else
  {
    p_serializedVLLocalizationResult = &self->_serializedVLLocalizationResult;
  }

  v9 = [NSData dataWithBytes:p_serializedVLLocalizationResult length:v7];
  [coderCopy encodeObject:v9 forKey:@"vlLocalizationResult"];
}

- (basic_string<char,)serializedVIOEstimation
{
  if (*(&result[1].__rep_.__l + 23) < 0)
  {
    return sub_100003228(retstr, result[1].__rep_.__l.__data_, result[1].__rep_.__l.__size_);
  }

  *retstr = result[1];
  return result;
}

- (basic_string<char,)serializedVLLocalizationResult
{
  if (*(&result[2].__rep_.__l + 23) < 0)
  {
    return sub_100003228(retstr, result[2].__rep_.__l.__data_, result[2].__rep_.__l.__size_);
  }

  *retstr = result[2];
  return result;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end