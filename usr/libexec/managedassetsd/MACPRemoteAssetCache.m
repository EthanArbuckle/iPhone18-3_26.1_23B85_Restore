@interface MACPRemoteAssetCache
- (BOOL)accessEntry:(id)a3 error:(id *)a4;
- (BOOL)addEntry:(id)a3 authToken:(id)a4 fileSizeBytes:(int64_t)a5 error:(id *)a6;
- (BOOL)checkEntryInCache:(id)a3 authToken:(id)a4 error:(id *)a5;
- (BOOL)checkupWithCacheSizeLimit:(unint64_t)a3 error:(id *)a4;
- (BOOL)clearAssetCacheWithError:(id *)a3;
- (BOOL)deleteExpiredAsset:(id)a3 skipCacheUpdate:(BOOL)a4 error:(id *)a5;
- (BOOL)queryAssetCache:(id)a3 results:(id *)a4 error:(id *)a5;
- (BOOL)querySize:(unint64_t *)a3 entrySize:(unint64_t *)a4 error:(id *)a5;
- (BOOL)updateEntrySize:(id)a3 fileSizeBytes:(int64_t)a4 error:(id *)a5;
- (MACPRemoteAssetCache)initWithStorage:(id)a3 remoteAssetsManager:(id)a4;
- (id)storeFields;
- (int64_t)reclaimEntry:(id)a3 currentDay:(int64_t)a4;
- (void)addToInUseAssetIds:(id)a3;
- (void)cacheSizeLimitCheck;
- (void)checkAndDeleteExpiredEntry:(id)a3 currentDay:(int64_t)a4 reclaimedSize:(unint64_t *)a5;
- (void)checkup;
@end

@implementation MACPRemoteAssetCache

- (MACPRemoteAssetCache)initWithStorage:(id)a3 remoteAssetsManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MACPRemoteAssetCache;
  v8 = [(MACPRemoteAssetCache *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(MACPAssetCache *)v8 setStorage:v6];
    [(MACPAssetCache *)v9 setStore:0];
    v10 = [v6 maremoteAssetPath];
    [(MACPAssetCache *)v9 setEncAssetsDir:v10];

    [(MACPAssetCache *)v9 setName:@"remoteAssetIDs"];
    objc_storeStrong(&v9->_remoteAssetsManager, a4);
    v9->_inUseAssetIdsLock._os_unfair_lock_opaque = 0;
    v9->_inCacheCheckWindow = 0;
    v9->_cacheSizeLimit = [MAUtilityHelper readIntValueFromUserDefaultsWithKey:@"maxRemoteAssetCacheSize" defaultValue:0x10000000];
    v11 = off_100127D60;
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
    {
      cacheSizeLimit = v9->_cacheSizeLimit;
      *buf = 134217984;
      v17 = cacheSizeLimit;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "defaults maxRemoteAssetCacheSize=%lu", buf, 0xCu);
    }

    v13 = v9;
  }

  return v9;
}

- (BOOL)deleteExpiredAsset:(id)a3 skipCacheUpdate:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = 0;
LABEL_3:
    v10 = 1;
    goto LABEL_15;
  }

  v38 = 0;
  v11 = [(MACPAssetCache *)self ensureStoreExist:&v38];
  v12 = v38;
  if (v11)
  {
    v13 = [(MACPAssetCache *)self store];
    v41 = @"assetId";
    v42 = v8;
    v14 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v37 = v12;
    v15 = [v13 deleteFor:v14 attributes:0 error:&v37];
    v9 = v37;

    v16 = off_100127D60;
    if (v15)
    {
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "removed cache entry, assetId=%@", buf, 0xCu);
      }

      ++self->_cacheRemoveCount;
      goto LABEL_3;
    }

    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_1000327B4();
    }

    v10 = 0;
  }

  else
  {
    v17 = off_100127D60;
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_10003277C(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v10 = 0;
    v9 = v12;
  }

LABEL_15:
  v25 = [(MACPAssetCache *)self encAssetsDir];
  v26 = [v25 stringByAppendingString:v8];

  v27 = +[NSFileManager defaultManager];
  v36 = 0;
  v28 = [v27 removeItemAtPath:v26 error:&v36];
  v29 = v36;
  v30 = v29;
  if (v28)
  {
    v31 = off_100127D60;
    v32 = 1;
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v26;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "deleted encrypted asset file %@", buf, 0xCu);
      if (!a5)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (!a5)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if ([v29 code] == 4)
  {
    v32 = 1;
    goto LABEL_21;
  }

  v35 = v30;

  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
  {
    sub_100032820();
  }

  v32 = 0;
  v9 = v35;
  if (a5)
  {
LABEL_22:
    if (v9)
    {
      v33 = v9;
      *a5 = v9;
    }
  }

LABEL_24:

  return v10 & v32;
}

- (void)addToInUseAssetIds:(id)a3
{
  v4 = a3;
  if (self->_inCacheCheckWindow >= 1)
  {
    v6 = v4;
    os_unfair_lock_lock(&self->_inUseAssetIdsLock);
    inUseAssetIds = self->_inUseAssetIds;
    if (inUseAssetIds)
    {
      [(NSMutableSet *)inUseAssetIds addObject:v6];
    }

    os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
    v4 = v6;
  }
}

- (void)checkAndDeleteExpiredEntry:(id)a3 currentDay:(int64_t)a4 reclaimedSize:(unint64_t *)a5
{
  v8 = a3;
  v9 = [v8 assetId];
  os_unfair_lock_lock(&self->_inUseAssetIdsLock);
  if (([(NSMutableSet *)self->_inUseAssetIds containsObject:v9]& 1) == 0)
  {
    if (a4 - [v8 createdDay] <= 60 && objc_msgSend(v8, "createdDay") <= a4)
    {
      if (a4 - [v8 accessDay] <= 30 && objc_msgSend(v8, "accessDay") <= a4)
      {
        os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
        goto LABEL_10;
      }

      [(MACPRemoteAssetCache *)self deleteExpiredAsset:v9 skipCacheUpdate:0 error:0];
      *a5 += [v8 fileSize];
      os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
      v16 = off_100127D60;
      if (!os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v11 = v16;
      v17 = 138412802;
      v18 = v9;
      v19 = 2048;
      v20 = [v8 accessDay];
      v21 = 2048;
      v22 = a4;
      v12 = "assetId %@ expired by accessDay %ld currentDay=%ld";
    }

    else
    {
      [(MACPRemoteAssetCache *)self deleteExpiredAsset:v9 skipCacheUpdate:0 error:0];
      *a5 += [v8 fileSize];
      os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
      v15 = off_100127D60;
      if (!os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v11 = v15;
      v17 = 138412802;
      v18 = v9;
      v19 = 2048;
      v20 = [v8 createdDay];
      v21 = 2048;
      v22 = a4;
      v12 = "assetId %@ expired by createdDay %ld currentDay=%ld";
    }

    v13 = v11;
    v14 = 32;
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
  v10 = off_100127D60;
  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v17 = 138413058;
    v18 = v9;
    v19 = 2048;
    v20 = [v8 createdDay];
    v21 = 2048;
    v22 = [v8 accessDay];
    v23 = 2048;
    v24 = a4;
    v12 = "skip in-use assetId %@ createdDay %ld accessDay %ld currentDay=%ld";
    v13 = v11;
    v14 = 42;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v12, &v17, v14);
  }

LABEL_10:
}

- (int64_t)reclaimEntry:(id)a3 currentDay:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 assetId];
  os_unfair_lock_lock(&self->_inUseAssetIdsLock);
  if (([(NSMutableSet *)self->_inUseAssetIds containsObject:v7]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
    v8 = off_100127D60;
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 138413058;
      v18 = v7;
      v19 = 2048;
      v20 = [v6 createdDay];
      v21 = 2048;
      v22 = [v6 accessDay];
      v23 = 2048;
      v24 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "skip reclaiming in-use assetId %@ createdDay %ld accessDay %ld currentDay=%ld", buf, 0x2Au);
    }

    v10 = 0;
LABEL_5:
    v11 = 0;
    goto LABEL_11;
  }

  v12 = [v6 assetId];
  v16 = 0;
  v13 = [(MACPRemoteAssetCache *)self deleteExpiredAsset:v12 skipCacheUpdate:0 error:&v16];
  v11 = v16;

  v10 = 0;
  if (v13)
  {
    v10 = [v6 fileSize];
  }

  os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
  v14 = off_100127D60;
  if (!v11)
  {
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "reclaim %ld bytes in asset cache, by deleting %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
  {
    sub_10003288C();
  }

LABEL_11:

  return v10;
}

- (void)checkup
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030114;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)checkupWithCacheSizeLimit:(unint64_t)a3 error:(id *)a4
{
  add_explicit = atomic_fetch_add_explicit(&self->_inCacheCheckWindow, 1u, memory_order_relaxed);
  v8 = off_100127D60;
  v9 = os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO);
  if (add_explicit < 1)
  {
    v109 = a4;
    if (v9)
    {
      *buf = 134218240;
      v155 = a3;
      v156 = 1024;
      LODWORD(v157) = add_explicit;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "assetCache checkup, sizeLimit=%lu _inCacheCheckWindow=%d", buf, 0x12u);
    }

    os_unfair_lock_lock(&self->_inUseAssetIdsLock);
    v11 = +[NSMutableSet set];
    inUseAssetIds = self->_inUseAssetIds;
    self->_inUseAssetIds = v11;

    os_unfair_lock_unlock(&self->_inUseAssetIdsLock);
    v13 = +[NSFileManager defaultManager];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceReferenceDate];
    v15 = [NSNumber numberWithDouble:?];

    v16 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v15 longValue] / 86400);

    v111 = [v16 longValue];
    v112 = +[NSMutableDictionary dictionary];
    v17 = [(MACPAssetCache *)self encAssetsDir];
    v152 = 0;
    v18 = v13;
    v19 = [v13 contentsOfDirectoryAtPath:v17 error:&v152];
    v20 = v152;

    v110 = v19;
    v113 = self;
    if ([v19 count])
    {
      v106 = a3;
      v151 = v20;
      v21 = [(MACPAssetCache *)self ensureStoreExist:&v151];
      v22 = v151;

      v23 = v109;
      if (v21)
      {
        v24 = [(MACPAssetCache *)self store];
        v150 = 0;
        v149 = v22;
        v25 = [v24 queryFor:&__NSDictionary0__struct attributes:0 records:&v150 error:&v149];
        v26 = v150;
        v27 = v149;

        v108 = v26;
        if (v25)
        {
          v105 = v18;
          v148 = v27;
          v28 = [MAKVStore queryOutputToArrayOfDictionaries:v26 error:&v148];
          v104 = v148;

          v147 = 0;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          obj = v28;
          v29 = [obj countByEnumeratingWithState:&v143 objects:v163 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = 0;
            v32 = @"assetId";
            v33 = @"version";
            v117 = *v144;
            do
            {
              for (i = 0; i != v30; i = i + 1)
              {
                if (*v144 != v117)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v143 + 1) + 8 * i);
                v36 = [v35 objectForKeyedSubscript:v32];
                v37 = [v35 objectForKeyedSubscript:v33];
                v38 = [v37 unsignedLongLongValue];

                v39 = [v35 objectForKeyedSubscript:@"size"];
                v40 = [v39 unsignedLongLongValue];

                if (v38 == 1)
                {
                  v41 = [v35 objectForKeyedSubscript:@"createdDay"];
                  v42 = [v35 objectForKeyedSubscript:@"accessDay"];
                  v115 = v31;
                  v43 = v30;
                  v44 = v33;
                  v45 = v32;
                  v46 = -[MAAssetCacheStat initWith:createdDay:accessDay:fileSize:]([MAAssetCacheStat alloc], "initWith:createdDay:accessDay:fileSize:", v36, [v41 longValue], objc_msgSend(v42, "longValue"), v40);
                  [v112 setObject:v46 forKeyedSubscript:v36];

                  v32 = v45;
                  v33 = v44;
                  v30 = v43;
                  v31 = v115;
                }

                else
                {
                  [(MACPRemoteAssetCache *)v113 deleteExpiredAsset:v36 skipCacheUpdate:0 error:0];
                  v147 += v40;
                }

                v31 += v40;
              }

              v30 = [obj countByEnumeratingWithState:&v143 objects:v163 count:16];
            }

            while (v30);
          }

          else
          {
            v31 = 0;
          }

          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v57 = v110;
          v58 = [v57 countByEnumeratingWithState:&v139 objects:v162 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v140;
            do
            {
              for (j = 0; j != v59; j = j + 1)
              {
                if (*v140 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = *(*(&v139 + 1) + 8 * j);
                v63 = [v112 objectForKeyedSubscript:v62];

                if (!v63)
                {
                  [(MACPRemoteAssetCache *)v113 deleteExpiredAsset:v62 skipCacheUpdate:1 error:0];
                }
              }

              v59 = [v57 countByEnumeratingWithState:&v139 objects:v162 count:16];
            }

            while (v59);
          }

          v64 = [(MARemoteAssetsManager *)v113->_remoteAssetsManager remoteAssetIds];
          os_unfair_lock_lock(&v113->_inUseAssetIdsLock);
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v65 = v64;
          v66 = [v65 countByEnumeratingWithState:&v135 objects:v161 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v136;
            do
            {
              for (k = 0; k != v67; k = k + 1)
              {
                if (*v136 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                [(NSMutableSet *)v113->_inUseAssetIds addObject:*(*(&v135 + 1) + 8 * k)];
              }

              v67 = [v65 countByEnumeratingWithState:&v135 objects:v161 count:16];
            }

            while (v67);
          }

          v116 = v65;

          os_unfair_lock_unlock(&v113->_inUseAssetIdsLock);
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v70 = v112;
          v71 = [v70 countByEnumeratingWithState:&v131 objects:v160 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v132;
            do
            {
              for (m = 0; m != v72; m = m + 1)
              {
                if (*v132 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v75 = [v70 objectForKeyedSubscript:*(*(&v131 + 1) + 8 * m)];
                [(MACPRemoteAssetCache *)v113 checkAndDeleteExpiredEntry:v75 currentDay:v111 reclaimedSize:&v147];
              }

              v72 = [v70 countByEnumeratingWithState:&v131 objects:v160 count:16];
            }

            while (v72);
          }

          if (v31 - v147 <= v106)
          {
            v10 = 1;
            v48 = v105;
            v23 = v109;
            v50 = v104;
            v49 = v116;
          }

          else
          {
            v118 = v31 - v147 - v106;
            v76 = [NSMutableDictionary dictionaryWithCapacity:32];
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v77 = v70;
            v78 = [v77 countByEnumeratingWithState:&v127 objects:v159 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v128;
              do
              {
                for (n = 0; n != v79; n = n + 1)
                {
                  if (*v128 != v80)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v82 = [v77 objectForKeyedSubscript:*(*(&v127 + 1) + 8 * n)];
                  v83 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v82 accessDay]);
                  v84 = [v76 objectForKeyedSubscript:v83];
                  if (!v84)
                  {
                    v84 = +[NSMutableArray array];
                    [v76 setObject:v84 forKeyedSubscript:v83];
                  }

                  [v84 addObject:v82];
                }

                v79 = [v77 countByEnumeratingWithState:&v127 objects:v159 count:16];
              }

              while (v79);
            }

            if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_DEBUG))
            {
              sub_1000329C8();
            }

            v85 = [v76 allKeys];
            v86 = [v85 sortedArrayUsingComparator:&stru_100116418];

            v87 = off_100127D60;
            v23 = v109;
            v49 = v116;
            if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v155 = v86;
              _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "accessDaysSorted: %@", buf, 0xCu);
            }

            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v88 = v86;
            v107 = [v88 countByEnumeratingWithState:&v123 objects:v158 count:16];
            if (v107)
            {
              v90 = *v124;
              *&v89 = 138412546;
              v103 = v89;
              do
              {
                for (ii = 0; ii != v107; ii = ii + 1)
                {
                  if (*v124 != v90)
                  {
                    objc_enumerationMutation(v88);
                  }

                  v92 = v88;
                  v93 = *(*(&v123 + 1) + 8 * ii);
                  v94 = [v76 objectForKeyedSubscript:{v93, v103}];
                  v95 = off_100127D60;
                  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v103;
                    v155 = v93;
                    v156 = 2112;
                    v157 = v94;
                    _os_log_debug_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEBUG, "checking accessDay: %@ assets: %@", buf, 0x16u);
                  }

                  v121 = 0u;
                  v122 = 0u;
                  v119 = 0u;
                  v120 = 0u;
                  v96 = v94;
                  v97 = [v96 countByEnumeratingWithState:&v119 objects:v153 count:16];
                  if (v97)
                  {
                    v98 = v97;
                    v99 = *v120;
                    while (2)
                    {
                      for (jj = 0; jj != v98; jj = jj + 1)
                      {
                        if (*v120 != v99)
                        {
                          objc_enumerationMutation(v96);
                        }

                        v101 = [(MACPRemoteAssetCache *)v113 reclaimEntry:*(*(&v119 + 1) + 8 * jj) currentDay:v111];
                        if (v118 - v101 < 1)
                        {

                          v88 = v92;
                          v10 = 1;
                          v48 = v105;
                          v49 = v116;
                          goto LABEL_105;
                        }

                        v118 -= v101;
                      }

                      v98 = [v96 countByEnumeratingWithState:&v119 objects:v153 count:16];
                      if (v98)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v49 = v116;
                  v88 = v92;
                }

                v107 = [v92 countByEnumeratingWithState:&v123 objects:v158 count:16];
              }

              while (v107);
            }

            if (v118 < 1)
            {

              v10 = 1;
              v48 = v105;
            }

            else
            {
              v102 = off_100127D60;
              v48 = v105;
              if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v155 = v118;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "unable to reclaim %ld bytes in asset cache, will retry when COP not in session", buf, 0xCu);
              }

              v10 = 0;
LABEL_105:
            }

            v50 = v104;
          }
        }

        else
        {
          v48 = v18;
          if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
          {
            sub_10000E26C();
          }

          obj = 0;
          v10 = 0;
          v49 = 0;
          v50 = v27;
        }
      }

      else
      {
        if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
        {
          sub_100032960();
          v50 = v22;
          obj = 0;
          v108 = 0;
          v10 = 0;
          v49 = 0;
        }

        else
        {
          obj = 0;
          v108 = 0;
          v10 = 0;
          v49 = 0;
          v50 = v22;
        }

        v48 = v18;
      }

      v20 = v50;
      if (v50)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v47 = off_100127D60;
      if (v20)
      {
        v48 = v13;
        if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
        {
          sub_100032A3C();
        }

        v49 = 0;
        v10 = 0;
        v108 = 0;
        obj = 0;
        v23 = v109;
LABEL_32:
        if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
        {
          sub_100032AA4();
        }

        v51 = v20;
        *v23 = v20;
LABEL_41:
        os_unfair_lock_lock(&v113->_inUseAssetIdsLock);
        v55 = v113->_inUseAssetIds;
        v113->_inUseAssetIds = 0;

        os_unfair_lock_unlock(&v113->_inUseAssetIdsLock);
        v113->_inCacheCheckWindow = 0;

        return v10;
      }

      v10 = 1;
      v48 = v13;
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        v52 = v47;
        v53 = [(MACPAssetCache *)self encAssetsDir];
        *buf = 138412290;
        v155 = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "no encrypted assets found in %@", buf, 0xCu);
      }

      v49 = 0;
      v108 = 0;
      obj = 0;
    }

    v54 = off_100127D60;
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "done checkup", buf, 2u);
    }

    v20 = 0;
    goto LABEL_41;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "checkup is alread in-progress, skip", buf, 2u);
  }

  createManagedAssetError();
  *a4 = v10 = 0;
  return v10;
}

- (BOOL)querySize:(unint64_t *)a3 entrySize:(unint64_t *)a4 error:(id *)a5
{
  if ([(MACPAssetCache *)self ensureStoreExist:a5])
  {
    v9 = [(MACPAssetCache *)self store];
    v25 = 0;
    v10 = [v9 queryForColumn:&__NSDictionary0__struct column:@"size" attributes:0 values:&v25 error:a5];
    v11 = v25;

    if (v10)
    {
      v20 = a3;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v22;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 += [v18 unsignedIntValue];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      if (a4)
      {
        *a4 = [v12 count];
      }

      *v20 = v15;
    }

    else if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100026094(a5);
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100032B0C(a5);
    }

    return 0;
  }

  return v10;
}

- (void)cacheSizeLimitCheck
{
  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_DEBUG))
  {
    sub_100032B74(self);
  }

  v7 = 0;
  v8 = 0;
  v3 = [(MACPRemoteAssetCache *)self querySize:&v8 entrySize:0 error:&v7];
  v4 = v7;
  if (v3)
  {
    if (v8 > self->_cacheSizeLimit)
    {
      v5 = off_100127D60;
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        cacheSizeLimit = self->_cacheSizeLimit;
        *buf = 134218240;
        v10 = v8;
        v11 = 2048;
        v12 = cacheSizeLimit;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "cache size %lu exceeds %lu, schedule cleanup", buf, 0x16u);
      }

      [(MACPRemoteAssetCache *)self checkup];
    }
  }

  else if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
  {
    sub_100032BF4();
  }
}

- (BOOL)addEntry:(id)a3 authToken:(id)a4 fileSizeBytes:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = +[NSDate date];
  [v12 timeIntervalSinceReferenceDate];
  v13 = [NSNumber numberWithDouble:?];

  v14 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v13 longValue] / 86400);

  if ([(MACPAssetCache *)self ensureStoreExist:a6])
  {
    v15 = [NSMutableDictionary dictionaryWithCapacity:5];
    [v15 setObject:v10 forKeyedSubscript:@"assetId"];
    [v15 setObject:v14 forKeyedSubscript:@"accessDay"];
    [v15 setObject:v14 forKeyedSubscript:@"createdDay"];
    [v15 setObject:&off_10011DCA0 forKeyedSubscript:@"version"];
    v16 = [NSNumber numberWithInteger:a5];
    [v15 setObject:v16 forKeyedSubscript:@"size"];

    if (v11)
    {
      [v15 setObject:v11 forKeyedSubscript:@"auth"];
    }

    [(MACPRemoteAssetCache *)self addToInUseAssetIds:v10];
    v17 = [(MACPAssetCache *)self store];
    v18 = [v17 putDictionay:v15 attributes:0 error:a6];

    v19 = off_100127D60;
    if (v18)
    {
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "added entry to cache, assetId=%@", &v21, 0xCu);
      }

      ++self->_cacheInsertCount;
      [(MACPRemoteAssetCache *)self cacheSizeLimitCheck];
    }

    else if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100032C5C(v10, a6);
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100032B0C(a6);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)updateEntrySize:(id)a3 fileSizeBytes:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = +[NSDate date];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];

  v11 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v10 longValue] / 86400);

  if (![(MACPAssetCache *)self ensureStoreExist:a5])
  {
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100032B0C(a5);
    }

    goto LABEL_10;
  }

  [(MACPRemoteAssetCache *)self addToInUseAssetIds:v8];
  v12 = [(MACPAssetCache *)self store];
  v26 = @"assetId";
  v27 = v8;
  v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v24[0] = @"accessDay";
  v24[1] = @"size";
  v25[0] = v11;
  v14 = [NSNumber numberWithInteger:a4];
  v25[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v16 = [v12 updateFor:v13 value:v15 attributes:0 error:a5];

  v17 = off_100127D60;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100032CC4(v8, a5);
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
  {
    v20 = 134218242;
    v21 = a4;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "updated entry size %ld to cache, assetId=%@", &v20, 0x16u);
  }

  [(MACPRemoteAssetCache *)self cacheSizeLimitCheck];
  v18 = 1;
LABEL_11:

  return v18;
}

- (BOOL)checkEntryInCache:(id)a3 authToken:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MACPAssetCache *)self ensureStoreExist:a5])
  {
    v10 = [(MACPAssetCache *)self encAssetsDir];
    v11 = [v10 stringByAppendingString:v8];

    v12 = +[NSFileManager defaultManager];
    if (([v12 fileExistsAtPath:v11] & 1) == 0)
    {
      v23 = off_100127D60;
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "encrypted asset file doesn't exist, assetId=%@", buf, 0xCu);
      }

      v22 = 0;
      goto LABEL_36;
    }

    v13 = +[NSDate date];
    [v13 timeIntervalSinceReferenceDate];
    v14 = [NSNumber numberWithDouble:?];

    v36 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v14 longValue] / 86400);

    v44[0] = @"assetId";
    v44[1] = @"version";
    v45[0] = v8;
    v45[1] = &off_10011DCA0;
    v15 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
    [(MACPRemoteAssetCache *)self addToInUseAssetIds:v8];
    v16 = [(MACPAssetCache *)self store];
    v37 = 0;
    v17 = [v16 queryFor:v15 attributes:0 records:&v37 error:a5];
    v18 = v37;

    if (v17)
    {
      if ([v18 count])
      {
        v19 = [MAKVStore rowToDictionary:v18 error:a5];
        v20 = v19;
        if (*a5)
        {
          if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
          {
            sub_100032D94(v8, a5);
          }

          v21 = 0;
        }

        else
        {
          v35 = [v19 objectForKeyedSubscript:@"auth"];
          v25 = MADataEqual(v35, v9);
          v26 = off_100127D60;
          if (v25)
          {
            v34 = v20;
            if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v8;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "auth token matched for assetId=%@", buf, 0xCu);
            }

            v33 = [(MACPAssetCache *)self store];
            v42 = @"accessDay";
            v43 = v36;
            v27 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            v28 = [v33 updateFor:v15 value:v27 attributes:0 error:a5];

            v29 = off_100127D60;
            if (v28)
            {
              v22 = 1;
              if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
              {
                v30 = v29;
                v31 = [v36 unsignedLongValue];
                *buf = 134218242;
                v39 = v31;
                v40 = 2112;
                v41 = v8;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "updated accessDay %lu, assetId=%@", buf, 0x16u);
              }

              v20 = v34;
              v21 = v35;
              goto LABEL_34;
            }

            if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
            {
              sub_100032E64(v8, a5);
            }

            v20 = v34;
          }

          else if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
          {
            sub_100032DFC();
          }

          v21 = v35;
        }

        [(MACPRemoteAssetCache *)self deleteExpiredAsset:v8 skipCacheUpdate:0 error:0];
        v22 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v24 = off_100127D60;
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "no cache record for assetId=%@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100032D2C(v8, a5);
    }

    v22 = 0;
LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
  {
    sub_100032B0C(a5);
  }

  v22 = 0;
LABEL_37:

  return v22;
}

- (BOOL)accessEntry:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSDate date];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];

  v9 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v8 longValue] / 86400);

  if ([(MACPAssetCache *)self ensureStoreExist:a4])
  {
    v39[0] = @"assetId";
    v39[1] = @"version";
    v40[0] = v6;
    v40[1] = &off_10011DCA0;
    v10 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    [(MACPRemoteAssetCache *)self addToInUseAssetIds:v6];
    v11 = [(MACPAssetCache *)self store];
    v32 = 0;
    v12 = [v11 queryFor:v10 attributes:0 records:&v32 error:a4];
    v13 = v32;

    if ((v12 & 1) == 0)
    {
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
      {
        sub_100032D2C(v6, a4);
      }

      v16 = 0;
      goto LABEL_14;
    }

    v14 = [MAKVStore rowToDictionary:v13 error:a4];
    v15 = v14;
    if (*a4)
    {
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
      {
        sub_100032ECC(v6, a4);
      }
    }

    else if ([v14 count])
    {
      v26 = [(MACPAssetCache *)self store];
      v37 = @"accessDay";
      v38 = v9;
      v27 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v28 = [v26 updateFor:v10 value:v27 attributes:0 error:a4];

      v29 = off_100127D60;
      if (v28)
      {
        v16 = 1;
        if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_INFO))
        {
          v30 = v29;
          v31 = [v9 unsignedLongValue];
          *buf = 134218242;
          v34 = v31;
          v35 = 2112;
          v36 = v6;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "updated accessDay %lu, assetId=%@", buf, 0x16u);
        }

        goto LABEL_7;
      }

      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
      {
        sub_100032E64(v6, a4);
      }
    }

    else
    {
      *a4 = createManagedAssetError();
      if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
      {
        sub_100032F34();
      }
    }

    v16 = 0;
LABEL_7:

LABEL_14:
    goto LABEL_15;
  }

  v17 = off_100127D60;
  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
  {
    sub_10003277C(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)queryAssetCache:(id)a3 results:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if ([(MACPAssetCache *)self ensureStoreExist:a5])
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = v9;
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:@"assetId"];
    }

    v11 = [(MACPAssetCache *)self store];
    v26 = 0;
    v12 = [v11 queryFor:v10 attributes:0 records:&v26 error:a5];
    v13 = v26;

    if (v12)
    {
      v14 = [MAKVStore queryOutputToArrayOfDictionaries:v13 error:a5];
      if (v14)
      {
        v15 = v14;
        *a4 = v15;

        v16 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

    else if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100032F9C(a5);
    }

    v16 = 0;
    goto LABEL_13;
  }

  v17 = off_100127D60;
  if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
  {
    sub_10003277C(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (BOOL)clearAssetCacheWithError:(id *)a3
{
  v22 = 0;
  v5 = [(MACPRemoteAssetCache *)self queryAssetCache:0 results:&v22 error:a3];
  v6 = v22;
  v7 = v6;
  if (!v5)
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:{@"assetId", v18}];
        if (v13)
        {
          [(MACPRemoteAssetCache *)self deleteExpiredAsset:v13 skipCacheUpdate:1 error:0];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(MACPAssetCache *)self store];
  v15 = [v14 deleteFor:&__NSDictionary0__struct attributes:0 error:a3];

  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(off_100127D60, OS_LOG_TYPE_ERROR))
    {
      sub_100033004(a3);
    }

    goto LABEL_15;
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (id)storeFields
{
  v15[0] = @"assetId";
  v15[1] = &off_10011DCB8;
  v15[2] = &off_10011DCD0;
  v2 = [NSArray arrayWithObjects:v15 count:3];
  v16[0] = v2;
  v14[0] = @"accessDay";
  v14[1] = &off_10011DCD0;
  v14[2] = &off_10011DCE8;
  v3 = [NSArray arrayWithObjects:v14 count:3];
  v16[1] = v3;
  v13[0] = @"auth";
  v13[1] = &off_10011DD00;
  v13[2] = &off_10011DCE8;
  v4 = [NSArray arrayWithObjects:v13 count:3];
  v16[2] = v4;
  v12[0] = @"createdDay";
  v12[1] = &off_10011DCD0;
  v12[2] = &off_10011DCE8;
  v5 = [NSArray arrayWithObjects:v12 count:3];
  v16[3] = v5;
  v11[0] = @"version";
  v11[1] = &off_10011DCD0;
  v11[2] = &off_10011DCE8;
  v6 = [NSArray arrayWithObjects:v11 count:3];
  v16[4] = v6;
  v10[0] = @"size";
  v10[1] = &off_10011DCD0;
  v10[2] = &off_10011DCE8;
  v7 = [NSArray arrayWithObjects:v10 count:3];
  v16[5] = v7;
  v8 = [NSArray arrayWithObjects:v16 count:6];

  return v8;
}

@end