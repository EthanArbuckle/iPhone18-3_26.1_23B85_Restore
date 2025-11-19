@interface MOHDBSCANClustering
- (MOHDBSCANClustering)initWithParameters:(id)a3;
- (double)_getEmbeddingDistanceFrom:(id)a3 to:(id)a4;
- (id)getClusterLabels;
- (id)getMembershipProbability;
- (id)getNormalizedClusterLabels;
- (id)getOutlierScoreDict;
- (vector<std::vector<double>,)_getDistanceMatrixFrom:(MOHDBSCANClustering *)self;
- (void)loadDistanceMatrix:()vector<std:(std::allocator<std::vector<double>>> *)a3 :vector<double>;
- (void)runHDBSCANClusteringOn:(id)a3;
@end

@implementation MOHDBSCANClustering

- (MOHDBSCANClustering)initWithParameters:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = MOHDBSCANClustering;
  v6 = [(MOHDBSCANClustering *)&v8 init];
  if (v6)
  {
    objc_storeStrong(&v6->_clusteringParams, a3);
    operator new();
  }

  return 0;
}

- (void)runHDBSCANClusteringOn:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Start running HDBSCAN clustering", buf, 2u);
  }

  v6 = objc_opt_new();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __46__MOHDBSCANClustering_runHDBSCANClusteringOn___block_invoke;
  v18[3] = &unk_10033AE28;
  v7 = v6;
  v19 = v7;
  [v4 enumerateObjectsUsingBlock:v18];
  objc_storeStrong(&self->_bundleIDs, v6);
  [(MOHDBSCANClustering *)self _getDistanceMatrixFrom:v4];
  if (self->_HDBSCAN.__ptr_)
  {
    memset(v15, 0, sizeof(v15));
    std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v15, *buf, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - *buf) >> 3));
    [(MOHDBSCANClustering *)self loadDistanceMatrix:v15];
    *v20 = v15;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](v20);
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((*(self->_HDBSCAN.__ptr_ + 14) - *(self->_HDBSCAN.__ptr_ + 13)) >> 3);
      *v20 = 134217984;
      *&v20[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "loaded distance matrix with size:%lu", v20, 0xCu);
    }

    v10 = [(MOClusteringParams *)self->_clusteringParams minPoints];
    v11 = [(MOClusteringParams *)self->_clusteringParams minClusterSize];
    ptr = self->_HDBSCAN.__ptr_;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    Hdbscan::execute(ptr, v10, v11, &__p);
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MOHDBSCANClustering runHDBSCANClusteringOn:v13];
  }

  *v20 = buf;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](v20);
}

void __46__MOHDBSCANClustering_runHDBSCANClusteringOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 bundleIdentifier];
    v7 = [v6 UUIDString];
    [v5 addObject:v7];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__MOHDBSCANClustering_runHDBSCANClusteringOn___block_invoke_cold_1(v3, v6);
    }
  }
}

- (id)getClusterLabels
{
  v3 = objc_opt_new();
  v4 = *(self->_HDBSCAN.__ptr_ + 16);
  if (*(self->_HDBSCAN.__ptr_ + 17) == v4)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Cluster label is empty", v9, 2u);
    }
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = [NSNumber numberWithInt:*(v4 + 4 * v5)];
      [v3 addObject:v6];

      ++v5;
      v4 = *(self->_HDBSCAN.__ptr_ + 16);
    }

    while (v5 < (*(self->_HDBSCAN.__ptr_ + 17) - v4) >> 2);
  }

  return v3;
}

- (id)getNormalizedClusterLabels
{
  v3 = objc_opt_new();
  v4 = *(self->_HDBSCAN.__ptr_ + 19);
  if (*(self->_HDBSCAN.__ptr_ + 20) == v4)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Normalized cluster label is empty", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = [NSNumber numberWithInt:*(v4 + 4 * v5)];
      [v3 addObject:v6];

      ++v5;
      v4 = *(self->_HDBSCAN.__ptr_ + 19);
    }

    while (v5 < (*(self->_HDBSCAN.__ptr_ + 20) - v4) >> 2);
    v7 = v3;
  }

  return v7;
}

- (id)getOutlierScoreDict
{
  v3 = objc_opt_new();
  if (*(self->_HDBSCAN.__ptr_ + 23) == *(self->_HDBSCAN.__ptr_ + 22) || (v4 = [(NSArray *)self->_bundleIDs count], ptr = self->_HDBSCAN.__ptr_, v7 = *(ptr + 22), v6 = *(ptr + 23), v4 != 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3)))
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "OutlierScores is empty or bundle id count and score count do not match. Returning empty dict", buf, 2u);
    }
  }

  else
  {
    for (; v7 != v6; v7 += 24)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v10 = objc_autoreleasePoolPush();
      v11 = [(NSArray *)self->_bundleIDs objectAtIndex:v9];
      if (v11)
      {
        v12 = [NSNumber numberWithDouble:v8];
        [v3 setObject:v12 forKeyedSubscript:v11];
      }

      v13 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        v17 = v9;
        v18 = 2112;
        v19 = v11;
        v20 = 2048;
        v21 = v8;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Current outlierScore: idx %d,bundleID %@,score %.3f", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  return v3;
}

- (id)getMembershipProbability
{
  v3 = objc_opt_new();
  v4 = *(self->_HDBSCAN.__ptr_ + 25);
  if (*(self->_HDBSCAN.__ptr_ + 26) == v4)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MembershipProbability is empty", v9, 2u);
    }
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = [NSNumber numberWithDouble:*(v4 + 8 * v5)];
      [v3 addObject:v6];

      ++v5;
      v4 = *(self->_HDBSCAN.__ptr_ + 25);
    }

    while (v5 < (*(self->_HDBSCAN.__ptr_ + 26) - v4) >> 3);
  }

  return v3;
}

- (vector<std::vector<double>,)_getDistanceMatrixFrom:(MOHDBSCANClustering *)self
{
  v18 = a4;
  v6 = [v18 count];
  v7 = v6;
  std::vector<std::vector<double>>::vector[abi:ne200100](retstr, v6);
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = v6 & 0x7FFFFFFF;
    do
    {
      std::vector<double>::resize(retstr->var0 + 3 * v8, v7);
      if (v8)
      {
        v10 = 0;
        for (i = 0; i != v8; ++i)
        {
          v12 = [v18 objectAtIndex:v8];
          v13 = [v18 objectAtIndex:i];
          [(MOHDBSCANClustering *)self _getEmbeddingDistanceFrom:v12 to:v13];
          v15 = v14;

          var0 = retstr->var0;
          *(*(retstr->var0 + 3 * v8) + 8 * i) = v15;
          *(*&var0[v10] + 8 * v8) = v15;
          v10 += 24;
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

- (double)_getEmbeddingDistanceFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOClusteringParams *)self->_clusteringParams embeddingDistanceWeights];
  [v6 getDistanceFrom:v7 withWeights:v8];
  v10 = v9;

  return v10;
}

- (void)loadDistanceMatrix:()vector<std:(std::allocator<std::vector<double>>> *)a3 :vector<double>
{
  ptr = self->_HDBSCAN.__ptr_;
  if (ptr)
  {
    memset(v5, 0, sizeof(v5));
    std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v5, a3->var0, a3->var1, 0xAAAAAAAAAAAAAAABLL * ((a3->var1 - a3->var0) >> 3));
    Hdbscan::loadDistanceMatrix(ptr, v5);
    *buf = v5;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](buf);
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Distance matrix is loaded", buf, 2u);
    }
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityHDBSCANClustering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MOHDBSCANClustering loadDistanceMatrix:v4];
    }
  }
}

void __46__MOHDBSCANClustering_runHDBSCANClusteringOn___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Embedding has nil bundleID:%@. Early exit from clustering", &v2, 0xCu);
}

@end