@interface NIServerGRResponderRangingServiceClient
- (BOOL)removeInterestedDevice:(id)a3 ticketId:(unsigned __int16)a4;
- (NIServerGRResponderRangingServiceClient)initWithClientIdentifier:(id)a3 clientQueue:(id)a4 delegate:(id)a5;
- (basic_string<char,)get_client_identifier;
- (id).cxx_construct;
- (void)addInterestedDevice:(id)a3 withThrottleRate:(float)a4;
@end

@implementation NIServerGRResponderRangingServiceClient

- (NIServerGRResponderRangingServiceClient)initWithClientIdentifier:(id)a3 clientQueue:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NIServerGRResponderRangingServiceClient;
  v11 = [(NIServerGRResponderRangingServiceClient *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(NIServerGRResponderRangingServiceClient *)v11 setDelegate:v10];
    [(NIServerGRResponderRangingServiceClient *)v12 setClientId:v8];
    [(NIServerGRResponderRangingServiceClient *)v12 setQueue:v9];
    std::string::assign(&v12->_clientIdAsStdString, [v8 UTF8String]);
  }

  return v12;
}

- (void)addInterestedDevice:(id)a3 withThrottleRate:(float)a4
{
  v6 = a3;
  v10 = [v6 gr_session_ticket_id];
  sub_100022098(&self->_interestedDeviceList.__table_.__bucket_list_.__ptr_, &v10);
  if (*(&self->_clientIdAsStdString.__rep_.__l + 23) < 0)
  {
    sub_1000056BC(__p, self->_clientIdAsStdString.__rep_.__l.__data_, self->_clientIdAsStdString.__rep_.__l.__size_);
  }

  else
  {
    v7 = *self->_clientIdAsStdString.__rep_.__s.__data_;
    *__p = v7;
    v9 = *(&self->_clientIdAsStdString.__rep_.__l + 2);
  }

  *&v7 = a4;
  [v6 setRate:__p forClient:1 shouldReplace:*&v7];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

- (BOOL)removeInterestedDevice:(id)a3 ticketId:(unsigned __int16)a4
{
  v6 = a3;
  v11 = a4;
  if (sub_1000222CC(&self->_interestedDeviceList.__table_.__bucket_list_.__ptr_, &v11))
  {
    sub_100022384(&self->_interestedDeviceList.__table_.__bucket_list_.__ptr_, &v11);
  }

  if (*(&self->_clientIdAsStdString.__rep_.__l + 23) < 0)
  {
    sub_1000056BC(__p, self->_clientIdAsStdString.__rep_.__l.__data_, self->_clientIdAsStdString.__rep_.__l.__size_);
  }

  else
  {
    *__p = *self->_clientIdAsStdString.__rep_.__s.__data_;
    v10 = *(&self->_clientIdAsStdString.__rep_.__l + 2);
  }

  v7 = [v6 removeRateForClient:__p];
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

- (basic_string<char,)get_client_identifier
{
  if (*(&result[2].__rep_.__l + 23) < 0)
  {
    return sub_1000056BC(retstr, result[2].__rep_.__l.__data_, result[2].__rep_.__l.__size_);
  }

  *retstr = result[2];
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 56) = 0uLL;
  *(self + 6) = 0;
  return self;
}

@end