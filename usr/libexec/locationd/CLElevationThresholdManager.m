@interface CLElevationThresholdManager
- (BOOL)removeClient:(id)a3;
- (BOOL)updateWithAltitude:(float)a3 andAccuracy:(float)a4 upperBound:(float *)a5 lowerBound:(float *)a6;
- (CLElevationThresholdManager)init;
- (id).cxx_construct;
- (void)clearShouldAlert;
- (void)initializeThresholdsGivenAltitude:(float)a3 andAccuracy:(float)a4;
- (void)insertClient:(id)a3 withThreshold:(float)a4;
- (void)sendAnalyticsEventForId:(id)a3;
- (void)thresholdBoundsForElevation:(float)a3 andAccuracy:(float)a4 upperBound:(float *)a5 lowerBound:(float *)a6;
- (void)thresholdUpdated:(ThresholdClient *)a3 initialized:(BOOL)a4 above:(BOOL)a5;
- (void)updateAnalyticsWithAltitude:(float)a3;
- (void)updateInitializedThresholdsWithAltitude:(float)a3;
@end

@implementation CLElevationThresholdManager

- (void)clearShouldAlert
{
  begin_node = self->_elevationThresholdMap.__tree_.__begin_node_;
  if (begin_node != &self->_elevationThresholdMap.__tree_.__end_node_)
  {
    do
    {
      LOBYTE(begin_node[7].__left_) = 0;
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v4 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v4 = begin_node[2].__left_;
          v5 = v4->super.isa == begin_node;
          begin_node = v4;
        }

        while (!v5);
      }

      begin_node = v4;
    }

    while (v4 != &self->_elevationThresholdMap.__tree_.__end_node_);
  }
}

- (CLElevationThresholdManager)init
{
  v6.receiver = self;
  v6.super_class = CLElevationThresholdManager;
  v2 = [(CLElevationThresholdManager *)&v6 init];
  if (v2)
  {
    sub_1004F8200(v4, "ElevationThresholdHysteresisBand", dword_101CB3E38, 0);
    v2->_hysteresisBand = v5;
  }

  return v2;
}

- (void)thresholdBoundsForElevation:(float)a3 andAccuracy:(float)a4 upperBound:(float *)a5 lowerBound:(float *)a6
{
  if (self->_elevationThresholdMap.__tree_.__size_)
  {
    begin_node = self->_elevationThresholdMap.__tree_.__begin_node_;
    p_end_node = &self->_elevationThresholdMap.__tree_.__end_node_;
    if (begin_node != &self->_elevationThresholdMap.__tree_.__end_node_)
    {
      v11 = self->_elevationThresholdMap.__tree_.__begin_node_;
      do
      {
        if (a4 < 100.0)
        {
          v12 = v11[8];
          if (v12 < a3 && *(v11 + 40) == 1)
          {
            *a6 = v12;
          }
        }

        v13 = *(v11 + 1);
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = v13->__left_;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = *(v11 + 2);
            v15 = v14->__left_ == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != p_end_node);
      do
      {
        left = p_end_node->__left_;
        if (a4 < 100.0)
        {
          v17 = p_end_node->__left_;
          v18 = p_end_node;
          if (left)
          {
            do
            {
              v19 = v17;
              v17 = v17[1];
            }

            while (v17);
          }

          else
          {
            do
            {
              v19 = v18[2].__left_;
              v15 = *v19 == v18;
              v18 = v19;
            }

            while (v15);
          }

          if (*(v19 + 8) > a3)
          {
            v20 = p_end_node->__left_;
            v21 = p_end_node;
            if (left)
            {
              do
              {
                v22 = v20;
                v20 = v20[1];
              }

              while (v20);
            }

            else
            {
              do
              {
                v22 = v21[2].__left_;
                v15 = *v22 == v21;
                v21 = v22;
              }

              while (v15);
            }

            if (*(v22 + 40) == 1)
            {
              v23 = p_end_node->__left_;
              v24 = p_end_node;
              if (left)
              {
                do
                {
                  v25 = v23;
                  v23 = v23[1];
                }

                while (v23);
              }

              else
              {
                do
                {
                  v25 = v24[2].__left_;
                  v15 = *v25 == v24;
                  v24 = v25;
                }

                while (v15);
              }

              *a5 = *(v25 + 8);
            }
          }
        }

        if (left)
        {
          do
          {
            v26 = left;
            left = left[1].__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v26 = p_end_node[2].__left_;
            v15 = v26->__left_ == p_end_node;
            p_end_node = v26;
          }

          while (v15);
        }

        p_end_node = v26;
      }

      while (v26 != begin_node);
    }

    if (qword_1025D4410 != -1)
    {
      sub_101960D4C();
    }

    v27 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v28 = *a6;
      v29 = *a5;
      *buf = 134218496;
      v32 = a3;
      v33 = 2048;
      v34 = v28;
      v35 = 2048;
      v36 = v29;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "currentAltitude,%f,thresholdLowerBound,%f,thresholdUpperBound,%f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101960D60();
      }

      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationThresholdManager thresholdBoundsForElevation:andAccuracy:upperBound:lowerBound:]", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }
}

- (void)insertClient:(id)a3 withThreshold:(float)a4
{
  *&v4 = a4;
  v5 = 0;
  v6 = a3;
  LOBYTE(v7) = 0;
  sub_1008BDBEC();
}

- (BOOL)removeClient:(id)a3
{
  p_elevationThresholdMap = &self->_elevationThresholdMap;
  begin_node = self->_elevationThresholdMap.__tree_.__begin_node_;
  p_end_node = &self->_elevationThresholdMap.__tree_.__end_node_;
  if (begin_node == &self->_elevationThresholdMap.__tree_.__end_node_)
  {
    v12 = 0;
  }

  else
  {
    v14 = self;
    v7 = 0;
    do
    {
      if ([begin_node->_elevationThresholdClientAnalyticsMap.__tree_.__end_node_.__left_ isEqual:a3])
      {
        v8 = sub_10045E8A0(p_elevationThresholdMap, begin_node);
        operator delete(begin_node);
        if (qword_1025D4410 != -1)
        {
          sub_101960D60();
        }

        v9 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = a3;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "threshold client removed,client,%p", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101960EBC(&v15, a3, &v16);
        }

        ++v7;
        begin_node = v8;
      }

      else
      {
        isa = begin_node->_elevationThresholdMap.__tree_.__begin_node_;
        if (isa)
        {
          do
          {
            begin_node = isa;
            isa = isa->super.isa;
          }

          while (isa);
        }

        else
        {
          do
          {
            v11 = begin_node;
            begin_node = begin_node->_elevationThresholdMap.__tree_.__end_node_.__left_;
          }

          while (begin_node->super.isa != v11);
        }
      }
    }

    while (begin_node != p_end_node);
    v12 = v7 > 0;
    self = v14;
  }

  *buf = a3;
  sub_1002401BC(&self->_elevationThresholdClientAnalyticsMap, buf);
  return v12;
}

- (void)initializeThresholdsGivenAltitude:(float)a3 andAccuracy:(float)a4
{
  begin_node = self->_elevationThresholdMap.__tree_.__begin_node_;
  p_end_node = &self->_elevationThresholdMap.__tree_.__end_node_;
  if (begin_node != &self->_elevationThresholdMap.__tree_.__end_node_)
  {
    v8 = a3;
    do
    {
      v9 = begin_node[8];
      hysteresisBand = self->_hysteresisBand;
      v12 = v9 <= (hysteresisBand + a3) && v9 >= (a3 - hysteresisBand);
      if ((begin_node[10] & 1) == 0 && !v12)
      {
        [CLElevationThresholdManager thresholdUpdated:"thresholdUpdated:initialized:above:" initialized:? above:?];
        if (qword_1025D4410 != -1)
        {
          sub_101960D60();
        }

        v13 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          Current = CFAbsoluteTimeGetCurrent();
          v15 = begin_node[8];
          v16 = self->_hysteresisBand;
          v17 = *(begin_node + 40);
          *buf = 134219008;
          v23 = Current;
          v24 = 2048;
          v25 = v15;
          v26 = 2048;
          v27 = v8;
          v28 = 2048;
          v29 = v16;
          v30 = 1024;
          v31 = v17;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "threshold initialized,timestamp,%f,threshold,%f,altitude,%f,hysteresis,%f,initialized,%d", buf, 0x30u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101960D60();
          }

          CFAbsoluteTimeGetCurrent();
          v21 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLElevationThresholdManager initializeThresholdsGivenAltitude:andAccuracy:]", "%s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }
      }

      v18 = *(begin_node + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = v18->__left_;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(begin_node + 2);
          v20 = v19->__left_ == begin_node;
          begin_node = v19;
        }

        while (!v20);
      }

      begin_node = v19;
    }

    while (v19 != p_end_node);
  }
}

- (void)thresholdUpdated:(ThresholdClient *)a3 initialized:(BOOL)a4 above:(BOOL)a5
{
  if (a3->var0 != a4 || a3->var1 != a5)
  {
    a3->var0 = a4;
    a3->var1 = a5;
    a3->var3 = 1;
  }
}

- (BOOL)updateWithAltitude:(float)a3 andAccuracy:(float)a4 upperBound:(float *)a5 lowerBound:(float *)a6
{
  [(CLElevationThresholdManager *)self clearShouldAlert];
  *&v11 = a3;
  [(CLElevationThresholdManager *)self updateAnalyticsWithAltitude:v11];
  *&v12 = a3;
  [(CLElevationThresholdManager *)self updateInitializedThresholdsWithAltitude:v12];
  *&v13 = a3;
  *&v14 = a4;
  [(CLElevationThresholdManager *)self initializeThresholdsGivenAltitude:v13 andAccuracy:v14];
  *&v15 = a3;
  *&v16 = a4;
  [(CLElevationThresholdManager *)self thresholdBoundsForElevation:a5 andAccuracy:a6 upperBound:v15 lowerBound:v16];
  if (*a5 == self->_currentElevationThreshold.upper && *a6 == self->_currentElevationThreshold.lower)
  {
    return 0;
  }

  self->_currentElevationThreshold.upper = *a5;
  self->_currentElevationThreshold.lower = *a6;
  return 1;
}

- (void)updateInitializedThresholdsWithAltitude:(float)a3
{
  begin_node = self->_elevationThresholdMap.__tree_.__begin_node_;
  p_end_node = &self->_elevationThresholdMap.__tree_.__end_node_;
  if (begin_node != &self->_elevationThresholdMap.__tree_.__end_node_)
  {
    do
    {
      v7 = *&begin_node[4].__left_;
      if (BYTE1(begin_node[5].__left_) != v7 < a3 && LOBYTE(begin_node[5].__left_) == 1)
      {
        [(CLElevationThresholdManager *)self thresholdUpdated:&begin_node[5] initialized:0 above:v7 < a3];
        [(CLElevationThresholdManager *)self sendAnalyticsEventForId:begin_node[6].__left_];
        sub_1002401BC(&self->_elevationThresholdClientAnalyticsMap, &begin_node[6]);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v9 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->__left_ == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != p_end_node);
  }
}

- (void)updateAnalyticsWithAltitude:(float)a3
{
  begin_node = self->_elevationThresholdClientAnalyticsMap.__tree_.__begin_node_;
  if (begin_node != &self->_elevationThresholdClientAnalyticsMap.__tree_.__end_node_)
  {
    v4 = a3;
    do
    {
      v5 = vabdd_f64(v4, *&begin_node[8].__left_);
      if (*&begin_node[5].__left_ < 0.0)
      {
        *&begin_node[5].__left_ = v5;
      }

      if (*&begin_node[7].__left_ >= v5)
      {
        v5 = *&begin_node[7].__left_;
      }

      *&begin_node[7].__left_ = v5;
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->super.isa == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != &self->_elevationThresholdClientAnalyticsMap.__tree_.__end_node_);
  }
}

- (void)sendAnalyticsEventForId:(id)a3
{
  left = self->_elevationThresholdClientAnalyticsMap.__tree_.__end_node_.__left_;
  p_end_node = &self->_elevationThresholdClientAnalyticsMap.__tree_.__end_node_;
  v4 = left;
  if (left)
  {
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
    if (v6 != p_end_node && v6[4].__left_ <= a3)
    {
      *&v6[6].__left_ = CFAbsoluteTimeGetCurrent() - *&v6[9].__left_;
      v10 = *&v6[5].__left_;
      v42 = 0;
      v43 = 0;
      __p = 0;
      sub_1002AD2D8(&__p, qword_10265B028, qword_10265B030, (qword_10265B030 - qword_10265B028) >> 3);
      sub_1008BD568(&__p, v44, v10);
      if (__p)
      {
        v42 = __p;
        operator delete(__p);
      }

      v11 = *&v6[7].__left_;
      v37 = 0;
      v38 = 0;
      v36 = 0;
      sub_1002AD2D8(&v36, qword_10265B028, qword_10265B030, (qword_10265B030 - qword_10265B028) >> 3);
      sub_1008BD568(&v36, v39, v11);
      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      v12 = *&v6[6].__left_;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      sub_1002AD2D8(&v31, qword_10265B040, qword_10265B048, (qword_10265B048 - qword_10265B040) >> 3);
      sub_1008BD568(&v31, v34, v12);
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (qword_1025D4410 != -1)
      {
        sub_101960D60();
      }

      v13 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v15 = v6[4].__left_;
        v16 = v6[5].__left_;
        v18 = v6[6].__left_;
        v17 = v6[7].__left_;
        *buf = 134219008;
        v57 = Current;
        v58 = 2048;
        v59 = v15;
        v60 = 2048;
        v61 = v16;
        v62 = 2048;
        v63 = v17;
        v64 = 2048;
        v65 = v18;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "threshold crossing analytics,timestamp,%f,client,%p,deltaElevationToThreshold,%f,maxDeltaElevationToCrossing,%f,timeToCrossing,%f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101960FD4(buf);
        v19 = CFAbsoluteTimeGetCurrent();
        v20 = v6[4].__left_;
        v21 = v6[5].__left_;
        v23 = v6[6].__left_;
        v22 = v6[7].__left_;
        v46 = 134219008;
        v47 = v19;
        v48 = 2048;
        v49 = v20;
        v50 = 2048;
        v51 = v21;
        v52 = 2048;
        v53 = v22;
        v54 = 2048;
        v55 = v23;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationThresholdManager sendAnalyticsEventForId:]", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      if (SHIBYTE(v45) < 0)
      {
        sub_100007244(&v25, v44[0], v44[1]);
      }

      else
      {
        v25 = *v44;
        v26 = v45;
      }

      if (SHIBYTE(v40) < 0)
      {
        sub_100007244(&v27, v39[0], v39[1]);
      }

      else
      {
        v27 = *v39;
        v28 = v40;
      }

      if (SHIBYTE(v35) < 0)
      {
        sub_100007244(&v29, v34[0], v34[1]);
      }

      else
      {
        v29 = *v34;
        v30 = v35;
      }

      AnalyticsSendEventLazy();
      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44[0]);
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = self + 48;
  *(self + 8) = 0xFF7FFFFF7F7FFFFFLL;
  return self;
}

@end