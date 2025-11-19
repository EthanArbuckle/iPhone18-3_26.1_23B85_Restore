@interface CLLocationGroup
+ (vector<std::string,)stringVectorFromNSArray:(id)a2;
+ (void)storeAverage:(id)a3 ofVertices:(id)a4;
- (BOOL)allowCellularDownload:(unint64_t)a3;
- (CLLocationGroup)init;
- (CLLocationGroup)initWithGroupId:(id)a3 locationIds:(id)a4 center:(id)a5 wifiOnlyDownloadLocIdxs:(const void *)a6 locationContext:(int64_t)a7 andTolerance:(double)a8;
- (basic_string<char,)getGroupId;
- (double)distance:(id)a3;
- (id).cxx_construct;
@end

@implementation CLLocationGroup

+ (vector<std::string,)stringVectorFromNSArray:(id)a2
{
  v5 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v22 = v5;
  v6 = [v5 count];
  if (0xAAAAAAAAAAAAAAABLL * ((retstr->__cap_ - retstr->__begin_) >> 3) < v6)
  {
    if (v6 < 0xAAAAAAAAAAAAAABLL)
    {
      end = retstr->__end_;
      operator new();
    }

    sub_10000FC84();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v22;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      v11 = 0;
      v23 = v9;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = v12;
        v15 = [v12 UTF8String];
        v16 = v15;
        v24 = v15;
        v17 = retstr->__end_;
        if (v17 >= retstr->__cap_)
        {
          v20 = sub_10016D27C(retstr, &v24);
        }

        else
        {
          v18 = strlen(v15);
          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_10000D39C();
          }

          v19 = v18;
          if (v18 >= 0x17)
          {
            operator new();
          }

          v17[23] = v18;
          if (v18)
          {
            memmove(v17, v16, v18);
          }

          v17[v19] = 0;
          v20 = v17 + 24;
          v9 = v23;
        }

        retstr->__end_ = v20;
        objc_autoreleasePoolPop(v13);

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return result;
}

- (basic_string<char,)getGroupId
{
  v3 = [*(v1 + 16) UTF8String];
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(&retstr->__rep_.__l + 23) = result;
  if (result)
  {
    result = memmove(retstr, v3, result);
    v5->__rep_.__s.__data_[retstr] = 0;
  }

  else
  {
    retstr->__rep_.__s.__data_[0] = 0;
  }

  return result;
}

+ (void)storeAverage:(id)a3 ofVertices:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = *v22;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          [v15 x];
          v17 = v16;
          [v15 y];
          v19 = v18;
          [v15 z];
          v11 = v11 + v17;
          v12 = v12 + v19;
          v13 = v13 + v20;
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
    }

    [v5 setFromX:v11 / v7 y:v12 / v7 z:v13 / v7];
  }
}

- (CLLocationGroup)initWithGroupId:(id)a3 locationIds:(id)a4 center:(id)a5 wifiOnlyDownloadLocIdxs:(const void *)a6 locationContext:(int64_t)a7 andTolerance:(double)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v39.receiver = self;
  v39.super_class = CLLocationGroup;
  v18 = [(CLLocationGroup *)&v39 init];
  v19 = v18;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_groupId, a3);
    [CLLocationGroup stringVectorFromNSArray:v16];
    p_begin = &v20->_locationIds.__begin_;
    begin = v20->_locationIds.__begin_;
    if (begin)
    {
      end = v20->_locationIds.__end_;
      v24 = v20->_locationIds.__begin_;
      if (end != begin)
      {
        do
        {
          v25 = *(end - 1);
          end -= 3;
          if (v25 < 0)
          {
            operator delete(*end);
          }
        }

        while (end != begin);
        v24 = *p_begin;
      }

      v20->_locationIds.__end_ = begin;
      operator delete(v24);
      *p_begin = 0;
      v20->_locationIds.__end_ = 0;
      v20->_locationIds.__cap_ = 0;
    }

    *&v20->_locationIds.__begin_ = v37;
    v20->_locationIds.__cap_ = v38;
    v26 = [ECEFCoordinate alloc];
    [v17 x];
    v28 = v27;
    [v17 y];
    v30 = v29;
    [v17 z];
    v32 = [(ECEFCoordinate *)v26 initWithX:v28 y:v30 z:v31];
    centerECEF = v20->_centerECEF;
    v20->_centerECEF = v32;

    v34 = [[GeographicCoordinate alloc] initFromECEFCoordinate:v20->_centerECEF];
    centerLatLon = v20->_centerLatLon;
    v20->_centerLatLon = v34;

    v20->_tolerance = a8;
    if (&v19->_wifiOnlyDownloadLocIdxs != a6)
    {
      sub_10016CF48(&v19->_wifiOnlyDownloadLocIdxs.__tree_.__begin_node_, *a6, a6 + 1);
    }

    v20->_locationContext = a7;
    operator new();
  }

  return 0;
}

- (CLLocationGroup)init
{
  v3 = objc_alloc_init(NSArray);
  v4 = objc_alloc_init(ECEFCoordinate);
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v5 = [(CLLocationGroup *)self initWithGroupId:&stru_10044D120 locationIds:v3 center:v4 wifiOnlyDownloadLocIdxs:&v7 locationContext:0 andTolerance:0.0];
  sub_1000275F4(&v7, v8[0]);

  return v5;
}

- (double)distance:(id)a3
{
  v4 = a3;
  v5 = [ENUCoordinate fromLatLonOrigin:self->_centerLatLon andEcefOrigin:self->_centerECEF andEcefPoint:v4];
  [v5 east];
  v7 = v6;
  [v5 north];
  v14[0] = v7;
  v14[1] = v8;
  ptr = self->vertices.__ptr_;
  if (*ptr == ptr[1])
  {
    v12 = ptr[3];
    v13 = ptr[4];
    if (v12 == v13)
    {
LABEL_6:
      v17 = &off_10043FEC8;
      v15.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
      v15.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>]";
      v16 = 54;
      sub_10016B3C8(&v17, &v15);
    }

    while (*v12 == *(v12 + 1))
    {
      v12 += 3;
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = sub_10016BBBC(v14, ptr);

  return v10;
}

- (BOOL)allowCellularDownload:(unint64_t)a3
{
  left = self->_wifiOnlyDownloadLocIdxs.__tree_.__end_node_.__left_;
  p_end_node = &self->_wifiOnlyDownloadLocIdxs.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    goto LABEL_9;
  }

  v6 = p_end_node;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v6 == p_end_node || v6[4].__left_ > a3)
  {
LABEL_9:
    v6 = p_end_node;
  }

  return v6 == p_end_node;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  *(self + 10) = self + 88;
  return self;
}

@end