@interface SessionBTDevice
- (BOOL)removeRateForClient:()basic_string<char;
- (SessionBTDevice)initWithUWBAddr:(unint64_t)addr ticketID:(unsigned __int16)d clientId:()basic_string<char throttleRate:()std:(std::allocator<char>> *)std :char_traits<char>;
- (float)currentHighestThrottleRate;
- (id).cxx_construct;
- (void)setRate:(float)rate forClient:()basic_string<char shouldReplace:()std:(std::allocator<char>> *)std :char_traits<char>;
@end

@implementation SessionBTDevice

- (SessionBTDevice)initWithUWBAddr:(unint64_t)addr ticketID:(unsigned __int16)d clientId:()basic_string<char throttleRate:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v6 = v5;
  v12.receiver = self;
  v12.super_class = SessionBTDevice;
  v13[0] = addr;
  v9 = [(SessionBTDevice *)&v12 init];
  if (v9)
  {
    v11 = sub_100005288();
    stdCopy = v13;
    v13[1] = &v11;
    sub_100020BD0(&v9->uwbAddrs.__table_.__bucket_list_.__ptr_, v13);
    stdCopy = std;
    *(sub_10002106C(&v9->ratePerClient.__table_.__bucket_list_.__ptr_, std) + 10) = v6;
    v9->ticketId = d;
    v9->_isRunning = 0;
  }

  return v9;
}

- (void)setRate:(float)rate forClient:()basic_string<char shouldReplace:()std:(std::allocator<char>> *)std :char_traits<char>
{
  if (v4 || !sub_100021574(&self->ratePerClient.__table_.__bucket_list_.__ptr_, std))
  {
    *(sub_10002106C(&self->ratePerClient.__table_.__bucket_list_.__ptr_, std) + 10) = rate;
  }
}

- (float)currentHighestThrottleRate
{
  next = self->ratePerClient.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0.0;
  }

  v3 = 0.0;
  do
  {
    if (next[39] < 0)
    {
      sub_1000056BC(__p, *(next + 2), *(next + 3));
    }

    else
    {
      *__p = *(next + 1);
      v7 = *(next + 4);
    }

    v4 = *(next + 10);
    v8 = v4;
    if (v4 > v3)
    {
      v3 = v4;
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    next = *next;
  }

  while (next);
  return v3;
}

- (BOOL)removeRateForClient:()basic_string<char
{
  if (sub_100021574(&self->ratePerClient.__table_.__bucket_list_.__ptr_, a3))
  {
    sub_100021960(&self->ratePerClient.__table_.__bucket_list_.__ptr_, a3);
  }

  return self->ratePerClient.__table_.__size_ == 0;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end