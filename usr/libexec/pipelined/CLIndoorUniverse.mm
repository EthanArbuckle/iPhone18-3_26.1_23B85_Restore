@interface CLIndoorUniverse
- (BOOL)debouceUpdateUniverse:(duration<long)long fromLocation:()std:(1000000000>>)a3 :(id *)a4 ratio<1;
- (BOOL)isAllowedToUpdateUniverse:(id *)a3;
- (BOOL)updateLocalizerUniverseIfAllowed:(duration<long)long fromLocation:()std:(1000000000>>)a3 :(id *)a4 ratio<1 withUniverseUpdatedHandler:(id)a5;
- (CLIndoorUniverse)initWithAvailableVenues:(id)a3 availabilityZScoreConfidenceInterval:(double)a4 dynamicUniverseParameters:(const void *)a5;
- (id).cxx_construct;
- (id)stripLocatationGroupIdsPrefix:(id)a3;
- (void)mutableAvailabilityData;
- (void)mutableUniverseState;
- (void)updateLocalizerUniverse:(duration<long)long fromLocation:()std:(1000000000>>)a3 :(id *)a4 ratio<1 withUniverseUpdatedHandler:(id)a5;
@end

@implementation CLIndoorUniverse

- (CLIndoorUniverse)initWithAvailableVenues:(id)a3 availabilityZScoreConfidenceInterval:(double)a4 dynamicUniverseParameters:(const void *)a5
{
  v9 = a3;
  v19.receiver = self;
  v19.super_class = CLIndoorUniverse;
  v10 = [(CLIndoorUniverse *)&v19 init];
  v11 = v10;
  if (v10)
  {
    *[(CLIndoorUniverse *)v10 mutableAvailabilityData]= a4;
    objc_storeStrong([(CLIndoorUniverse *)v11 mutableAvailabilityData]+ 1, a3);
    if ((*(a5 + 56) & 4) == 0)
    {
      sub_1000474A4(v21, "");
      sub_10032C004("Debounce interval must be set in the dynamicUniverseParameters", &__p);
      sub_1000E661C(v21, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      sub_10003F5D0(v20);
    }

    v12 = *(a5 + 4);
    *([(CLIndoorUniverse *)v11 mutableAvailabilityData]+ 2) = (v12 * 1000000000.0);
    if ((*(a5 + 56) & 2) == 0)
    {
      sub_1000474A4(v21, "");
      sub_10032C004("Debounce distance must be set in the dynamicUniverseParameters", &__p);
      sub_1000E661C(v21, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      sub_10003F5D0(v20);
    }

    v13 = *(a5 + 3);
    *([(CLIndoorUniverse *)v11 mutableAvailabilityData]+ 3) = v13;
    if ((*(a5 + 56) & 1) == 0)
    {
      sub_1000474A4(v21, "");
      sub_100224398("Venue group distance must be set in the dynamicUniverseParameters", &__p);
      sub_1000E661C(v21, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      sub_10003F5D0(v20);
    }

    v14 = *(a5 + 2);
    *([(CLIndoorUniverse *)v11 mutableAvailabilityData]+ 4) = v14;
    if ((*(a5 + 56) & 8) == 0)
    {
      sub_1000474A4(v21, "");
      sub_10032C004("Update radius cap must be set in the dynamicUniverseParameters", &__p);
      sub_1000E661C(v21, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      sub_10003F5D0(v20);
    }

    v15 = *(a5 + 5);
    *([(CLIndoorUniverse *)v11 mutableAvailabilityData]+ 5) = v15;
    if ((*(a5 + 56) & 0x10) == 0)
    {
      sub_1000474A4(v21, "");
      sub_10020A050("Disable dynamic universe must be set in the dynamicUniverseParameters", &__p);
      sub_1000E661C(v21, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      sub_10003F5D0(v20);
    }

    v16 = *(a5 + 48);
    *([(CLIndoorUniverse *)v11 mutableAvailabilityData]+ 48) = v16;
    v11->_indoorUniverseFirstDidChange = 1;
    v17 = v11;
  }

  return v11;
}

- (void)mutableUniverseState
{
  if (!self->_localizerUniverseState.m_initialized)
  {
    *&self->_anon_11[155] = 0u;
    *&self->_anon_11[127] = 0u;
    *&self->_anon_11[143] = 0u;
    *&self->_anon_11[95] = 0u;
    *&self->_anon_11[111] = 0u;
    *&self->_anon_11[63] = 0u;
    *&self->_anon_11[79] = 0u;
    *&self->_anon_11[31] = 0u;
    *&self->_anon_11[47] = 0u;
    *(&self->_localizerUniverseState.m_storage.dummy_.aligner_ + 7) = 0u;
    *&self->_anon_11[15] = 0u;
    self->_localizerUniverseState.m_initialized = 1;
  }

  return &self->_localizerUniverseState.m_storage.dummy_.aligner_ + 7;
}

- (void)mutableAvailabilityData
{
  if (!self->_availabilityData.m_initialized)
  {
    self->_anon_c9[47] = 0;
    *&self->_anon_c9[31] = 0u;
    *&self->_anon_c9[15] = 0u;
    *(&self->_availabilityData.m_storage.dummy_.aligner_ + 7) = 0u;
    self->_availabilityData.m_initialized = 1;
  }

  return &self->_availabilityData.m_storage.dummy_.aligner_ + 7;
}

- (BOOL)debouceUpdateUniverse:(duration<long)long fromLocation:()std:(1000000000>>)a3 :(id *)a4 ratio<1
{
  if (!self->_localizerUniverseState.m_initialized)
  {
    goto LABEL_9;
  }

  v5 = a3.__rep_ - *&self->_anon_11[7];
  if (v5 >= *&self->_anon_c9[15])
  {
    *&buf[8] = 0uLL;
    *buf = off_10043DB28;
    v21 = 0;
    sub_1001294D4(buf, *(&a4->var0 + 1));
    sub_1001294DC(buf, *(&a4->var1.var0 + 4));
    v14[1] = 0;
    v14[2] = 0;
    v14[0] = off_10043DB28;
    v15 = 0;
    sub_1001294D4(v14, *&self->_anon_11[19]);
    sub_1001294DC(v14, *&self->_anon_11[27]);
    v10 = sub_1000BC490(buf, v14);
    v11 = *&self->_anon_c9[23] - *(&a4->var1.var1 + 4) * *(&self->_availabilityData.m_storage.dummy_.aligner_ + 7);
    if (v10 < v11)
    {
      if (qword_10045B070 != -1)
      {
        sub_100387AE4();
      }

      v12 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 134283777;
        v17 = v10;
        v18 = 2049;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[CLIndoorUniverse] not enough distance %{private}.02f m moved since universe was set (waiting for at least: %{private}.02f m", v16, 0x16u);
      }

      nullsub_76(v14);
      nullsub_76(buf);
      goto LABEL_16;
    }

    nullsub_76(v14);
    nullsub_76(buf);
LABEL_9:
    LOBYTE(v7) = 1;
    return v7;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387B0C();
  }

  v6 = qword_10045B078;
  v7 = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    v8 = *&self->_anon_c9[15] / 1000000000;
    *buf = 134349312;
    *&buf[4] = v5 / 1000000000;
    *&buf[12] = 2050;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[CLIndoorUniverse] not enough time %{public}lld sec since universe was set (waiting until: %{public}lld sec)", buf, 0x16u);
LABEL_16:
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isAllowedToUpdateUniverse:(id *)a3
{
  v3 = *(&a3->var1.var1 + 4);
  v4 = *&self->_anon_c9[39];
  if (v3 > v4)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B0C();
    }

    v7 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      v8 = *(&a3->var1.var1 + 4);
      v9 = *&self->_anon_c9[39];
      v11 = 134349312;
      v12 = v8;
      v13 = 2050;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[CLIndoorUniverse] Location accuracy %{public}.02f [m] not enough to update universe (> %{public}.02f [m]", &v11, 0x16u);
    }
  }

  return v3 <= v4;
}

- (id)stripLocatationGroupIdsPrefix:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (([v9 hasPrefix:{@"G", v14}] & 1) == 0)
        {
          sub_1000474A4(v19, "");
          sub_10020A050("LocationGroupIds must be prefixed with G prior to stripping prefix.", &v22);
          sub_1000E661C(v19, &v22, 1);
          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
            if (v20 < 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_11;
            }

LABEL_13:
            operator delete(v19[0]);
          }

LABEL_11:
          sub_10003F5D0(&__p);
        }

        v10 = [v9 substringFromIndex:1];
        [v4 addObject:v10];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = [NSSet setWithArray:v4];

  return v12;
}

- (void)updateLocalizerUniverse:(duration<long)long fromLocation:()std:(1000000000>>)a3 :(id *)a4 ratio<1 withUniverseUpdatedHandler:(id)a5
{
  v8 = a5;
  v36[0] = 0;
  v37 = 0;
  v38 = 0;
  v9 = sub_1000DD43C();
  sub_100003AE8(v9);
  v10 = v40[0];
  sub_100005B18(v40);
  if (v10 != v10 >> 31)
  {
    v11 = sub_1000DD43C();
    sub_100003AE8(v11);
    v12 = v40[0];
    sub_100005B18(v40);
    if (v12 != v12 >> 31)
    {
      sub_1000474A4(buf, "");
      sub_10032C15C("Override of DYNAMIC_UNIVERSE_FORCED_VENUES is not supported.", v40);
      sub_1000E661C(buf, v40, 1);
      if (SBYTE7(v41) < 0)
      {
        operator delete(v40[0]);
        if ((v73 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((v73 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*buf);
LABEL_5:
      sub_10003F5D0(__p);
    }
  }

  v13 = sub_1000DD42C();
  sub_100003AE8(v13);
  v14 = v40[0];
  sub_100005B18(v40);
  if (v14 != v14 >> 31)
  {
    v15 = sub_1000DD42C();
    sub_100003AE8(v15);
    v16 = v40[0];
    sub_100005B18(v40);
    if (v16 != v16 >> 31)
    {
      sub_1000474A4(buf, "");
      sub_10032C15C("Override of DYNAMIC_UNIVERSE_FAKE_LAST_FIX is not supported.", v40);
      sub_1000E661C(buf, v40, 1);
      if (SBYTE7(v41) < 0)
      {
        operator delete(v40[0]);
        if ((v73 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v73 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(*buf);
LABEL_10:
      sub_10003F5D0(__p);
    }
  }

  v36[1] = *&self->_anon_c9[31];
  v38 = 1;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *v40 = 0u;
  +[CLClientTypesPrivate defaultCLClientLocationPrivate];
  v17 = [[CLGpsPosition alloc] initWithLocation:a4 andPrivateLocation:v40];
  if (![*&self->_anon_c9[7] count])
  {
    if (qword_10045B070 != -1)
    {
      sub_100387AE4();
    }

    v18 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "zero _availabilityData->availableVenues when computed nearestVenues.", buf, 2u);
    }
  }

  v19 = [CLIndoorCommonHooks nearestVenues:std::chrono::steady_clock::now().__d_.__rep_ availableVenues:*&self->_anon_c9[7] latestPosition:v17 availabilityZScoreConfidenceInterval:v36 settings:1 isAllowedMultipleVenues:*(&self->_availabilityData.m_storage.dummy_.aligner_ + 7)];
  v20 = [(CLIndoorUniverse *)self stripLocatationGroupIdsPrefix:v19];

  if (![v20 count])
  {
    if (qword_10045B070 != -1)
    {
      sub_100387AE4();
    }

    v21 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "zero selectedLocationGroups returned in nearestVenues.", buf, 2u);
    }
  }

  *([(CLIndoorUniverse *)self mutableUniverseState]+ 1) = a3;
  v22 = [(CLIndoorUniverse *)self mutableUniverseState];
  v23 = *&a4->var1.var1;
  v22[1] = *&a4->var0;
  v22[2] = v23;
  v24 = *&a4->var3;
  v25 = *&a4->var5;
  v26 = *&a4->var9;
  v22[5] = *&a4->var7;
  v22[6] = v26;
  v22[3] = v24;
  v22[4] = v25;
  v27 = *&a4->var11;
  var13 = a4->var13;
  v29 = *&a4->var14;
  *(v22 + 156) = *&a4->var16;
  v22[8] = var13;
  v22[9] = v29;
  v22[7] = v27;
  if (*(&self->_localizerUniverseState.m_storage.dummy_.aligner_ + 7) && ([v20 isSubsetOfSet:?] & 1) != 0)
  {
    v30 = 0;
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387AE4();
    }

    v31 = qword_10045B078;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v20 allObjects];
      v33 = [v32 componentsJoinedByString:{@", "}];
      v34 = v33;
      v35 = [v33 UTF8String];
      *buf = 136315138;
      *&buf[4] = v35;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "updateUniverse setting _universeState.locationGroupIds: %s", buf, 0xCu);
    }

    objc_storeStrong([(CLIndoorUniverse *)self mutableUniverseState], v20);
    v30 = 1;
  }

  v8[2](v8, [(CLIndoorUniverse *)self mutableUniverseState], v30, self->_indoorUniverseFirstDidChange);
  if (v30 && self->_indoorUniverseFirstDidChange)
  {
    self->_indoorUniverseFirstDidChange = 0;
  }
}

- (BOOL)updateLocalizerUniverseIfAllowed:(duration<long)long fromLocation:()std:(1000000000>>)a3 :(id *)a4 ratio<1 withUniverseUpdatedHandler:(id)a5
{
  v8 = a5;
  if (!self->_availabilityData.m_initialized)
  {
    sub_1000474A4(v16, "");
    sub_1001F2AF4("AvailabilityTile is not loaded.", __p);
    sub_1000E661C(v16, __p, 1);
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    sub_10003F5D0(&v15);
  }

  if (self->_anon_c9[47])
  {
    goto LABEL_6;
  }

  if (![(CLIndoorUniverse *)self isAllowedToUpdateUniverse:a4])
  {
    goto LABEL_6;
  }

  var13 = a4->var13;
  v24 = *&a4->var11;
  v25 = var13;
  v26[0] = *&a4->var14;
  *(v26 + 12) = *&a4->var16;
  v10 = *&a4->var5;
  v20 = *&a4->var3;
  v21 = v10;
  v11 = *&a4->var9;
  v22 = *&a4->var7;
  v23 = v11;
  v12 = *&a4->var1.var1;
  *__p = *&a4->var0;
  v19 = v12;
  if ([(CLIndoorUniverse *)self debouceUpdateUniverse:a3.__rep_ fromLocation:__p])
  {
    [(CLIndoorUniverse *)self updateLocalizerUniverse:a3.__rep_ fromLocation:a4 withUniverseUpdatedHandler:v8];
    v13 = 1;
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 192) = 0;
  return self;
}

@end