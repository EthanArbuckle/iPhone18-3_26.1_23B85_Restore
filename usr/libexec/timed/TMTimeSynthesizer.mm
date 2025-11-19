@interface TMTimeSynthesizer
+ (id)newSynthesizerFromDataRepresentation:(id)a3;
- (BOOL)intersects:(id)a3;
- (TMTimeSynthesizer)initWithClockAccuracy:(double)a3 noiseDensity:(double)a4 name:(id)a5;
- (TMTimeSynthesizer)initWithCoder:(id)a3;
- (double)rtcWhenBeyondUncertainty:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)synthesizedTimeAtLastRTC;
- (id)timeAtRtc:(double)a3;
- (void)dealloc;
- (void)displayLastQualityTime;
- (void)encodeWithCoder:(id)a3;
- (void)inflateHistoricalDataBy:(double)a3;
- (void)update:(id)a3 withError:(id *)a4;
@end

@implementation TMTimeSynthesizer

- (id)dataRepresentation
{
  v6 = 0;
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v6)
  {
    v4 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000176CC(v3, v4);
    }
  }

  return v2;
}

- (id)synthesizedTimeAtLastRTC
{
  if (self->_running)
  {
    return [(TMTimeSynthesizer *)self timeAtRtc:self->_lastTimeRtc];
  }

  else
  {
    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithClockAccuracy:-[TMTimeSynthesizer name](self noiseDensity:"name") name:{self->_xoAccuracy, self->_clkSg}];
  [v4 setRunning:{-[TMTimeSynthesizer isRunning](self, "isRunning")}];
  *(v4 + 1) = *&self->_rtc;
  *(v4 + 2) = *&self->_utc;
  *(v4 + 3) = *&self->_rateSf;
  *(v4 + 6) = *&self->_utc_var;
  *(v4 + 7) = *&self->_sf_var;
  *(v4 + 8) = *&self->_utc_sf_cov;
  *(v4 + 4) = *&self->_smoothedSf;
  *(v4 + 26) = self->_measNumber;
  [v4 setLastQualityTime:{-[TMTimeSynthesizer lastQualityTime](self, "lastQualityTime")}];
  [v4 setLastInputSource:{-[TMTimeSynthesizer lastInputSource](self, "lastInputSource")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[TMTimeSynthesizer name](self forKey:{"name"), @"name"}];
  [a3 encodeBool:-[TMTimeSynthesizer isRunning](self forKey:{"isRunning"), @"running"}];
  [a3 encodeDouble:@"rtc" forKey:self->_rtc];
  [a3 encodeDouble:@"utc" forKey:self->_utc];
  [a3 encodeDouble:@"rateSf" forKey:self->_rateSf];
  [a3 encodeDouble:@"utc_var" forKey:self->_utc_var];
  [a3 encodeDouble:@"sf_var" forKey:self->_sf_var];
  [a3 encodeDouble:@"utc_sf_cov" forKey:self->_utc_sf_cov];
  [a3 encodeDouble:@"xoAccuracy" forKey:self->_xoAccuracy];
  [a3 encodeDouble:@"clkSg" forKey:self->_clkSg];
  [a3 encodeDouble:@"smoothedSf" forKey:self->_smoothedSf];
  [a3 encodeInt:self->_measNumber forKey:@"measNumber"];
  [a3 encodeObject:-[TMTimeSynthesizer lastQualityTime](self forKey:{"lastQualityTime"), @"lastQualityTime"}];
  v5 = [(TMTimeSynthesizer *)self lastInputSource];

  [a3 encodeObject:v5 forKey:@"lastInputSource"];
}

- (TMTimeSynthesizer)initWithCoder:(id)a3
{
  v4 = [(TMTimeSynthesizer *)self init];
  if (v4)
  {
    -[TMTimeSynthesizer setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    -[TMTimeSynthesizer setRunning:](v4, "setRunning:", [a3 decodeBoolForKey:@"running"]);
    [a3 decodeDoubleForKey:@"rtc"];
    v4->_rtc = v5;
    [a3 decodeDoubleForKey:@"utc"];
    v4->_utc = v6;
    [a3 decodeDoubleForKey:@"rateSf"];
    v4->_rateSf = v7;
    [a3 decodeDoubleForKey:@"utc_var"];
    v4->_utc_var = v8;
    [a3 decodeDoubleForKey:@"sf_var"];
    v4->_sf_var = v9;
    [a3 decodeDoubleForKey:@"utc_sf_cov"];
    v4->_utc_sf_cov = v10;
    [a3 decodeDoubleForKey:@"xoAccuracy"];
    v4->_xoAccuracy = v11;
    [a3 decodeDoubleForKey:@"clkSg"];
    v4->_clkSg = v12;
    [a3 decodeDoubleForKey:@"smoothedSf"];
    v4->_smoothedSf = v13;
    v4->_measNumber = [a3 decodeIntForKey:@"measNumber"];
    -[TMTimeSynthesizer setLastQualityTime:](v4, "setLastQualityTime:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"lastQualityTime"]);
    -[TMTimeSynthesizer setLastInputSource:](v4, "setLastInputSource:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"lastInputSource"]);
    [(TMTimeSynthesizer *)v4 displayLastQualityTime];
    v4->_lastRtcForSmoothSf = 0.0;
  }

  return v4;
}

+ (id)newSynthesizerFromDataRepresentation:(id)a3
{
  if (!a3)
  {
    sub_100017580(a2, a1);
  }

  v9 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:a3 error:&v9];
  v5 = v9;
  if (v9)
  {
    v6 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000175E4(v5, v6);
    }
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  [v4 finishDecoding];

  return v7;
}

- (BOOL)intersects:(id)a3
{
  v4 = [(TMTimeSynthesizer *)self synthesizedTimeAtLastRTC];
  [a3 rtc_s];
  [v4 propagatedTimeAtRTC:?];
  v6 = v5;
  [v4 utcUnc_s];
  v8 = v7;
  [a3 rtc_s];
  v10 = v9;
  [v4 rtc_s];
  v12 = sub_1000031AC(v8, vabdd_f64(v10, v11));
  [a3 utc_s];
  v14 = v13;
  [a3 utcUnc_s];
  v16 = v15;
  [a3 source];
  if (v12 <= 0.0 || v16 <= 0.0)
  {
    sub_1000185E0();
  }

  v17 = fmin(v14 + v16 - (v6 - v12), v6 + v12 - (v14 - v16));
  v18 = v17 >= 0.0;
  if (v17 < 0.0)
  {
    AnalyticsSendEventLazy();
  }

  return v18;
}

- (void)inflateHistoricalDataBy:(double)a3
{
  v5 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    utc_var = self->_utc_var;
    utc_sf_cov = self->_utc_sf_cov;
    v12 = 138413058;
    v13 = name;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = utc_var;
    v18 = 2048;
    v19 = utc_sf_cov;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@,Inflate,inflation_s,%lf,utcVar,%lf,sfCovar,%lf", &v12, 0x2Au);
  }

  if (a3 != 0.0)
  {
    v9 = [(TMTimeSynthesizer *)self lastQualityTime];
    v10 = v9;
    if (v9)
    {
      [(TMTime *)v9 utcUnc_s];
      [(TMTime *)v10 setUtcUnc_s:v11 + a3];
    }

    self->_utc_var = self->_utc_var + a3 * (a3 + sqrt(self->_utc_var) * 2.0);
    self->_utc_sf_cov = 0.0;
  }
}

- (void)dealloc
{
  [(TMTimeSynthesizer *)self setName:0];
  [(TMTimeSynthesizer *)self setLastQualityTime:0];
  [(TMTimeSynthesizer *)self setLastInputSource:0];
  v3.receiver = self;
  v3.super_class = TMTimeSynthesizer;
  [(TMTimeSynthesizer *)&v3 dealloc];
}

- (TMTimeSynthesizer)initWithClockAccuracy:(double)a3 noiseDensity:(double)a4 name:(id)a5
{
  v8 = [(TMTimeSynthesizer *)self init];
  v9 = v8;
  if (v8)
  {
    [(TMTimeSynthesizer *)v8 reset];
    v9->_clkSg = a4;
    v9->_xoAccuracy = a3;
    __asm { FMOV            V0.2D, #1.0 }

    *&v9->_rateSf = _Q0;
    v9->_lastRtcForSmoothSf = 0.0;
    [(TMTimeSynthesizer *)v9 setName:a5];
    v9->_lastInputSource = 0;
    [(TMTimeSynthesizer *)v9 displayLastQualityTime];
  }

  return v9;
}

- (void)displayLastQualityTime
{
  v3 = [(TMTimeSynthesizer *)self lastQualityTime];
  v4 = qword_100033220;
  v5 = os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      name = self->_name;
      v7 = [(TMTime *)v3 source];
      [(TMTime *)v3 rtc_s];
      v9 = v8;
      [(TMTime *)v3 utc_s];
      v11 = v10;
      [(TMTime *)v3 utcUnc_s];
      v17 = 138413314;
      v18 = name;
      v19 = 2112;
      v20 = v7;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      v13 = "%@,lastQualityTime,Src,%@,Rtc,%.6lf,Utc,%.6lf,Unc,%.6lf";
      v14 = v4;
      v15 = 52;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v17, v15);
    }
  }

  else if (v5)
  {
    v16 = self->_name;
    v17 = 138412290;
    v18 = v16;
    v13 = "%@,lastQualityTime,Empty";
    v14 = v4;
    v15 = 12;
    goto LABEL_6;
  }
}

- (id)timeAtRtc:(double)a3
{
  v5 = sub_100018D7C(self, a3);
  if (v5)
  {
    v10 = v5;
    v11 = a3 - self->_rtc;
    [(TMTimeSynthesizerStates *)v5 utc];
    rtc = self->_rtc;
    v14 = v13 - self->_utc;
    if (v11 <= v14)
    {
      v15 = v14 - v11;
    }

    else
    {
      v15 = v11 - v14;
    }

    v16 = sub_100018D7C(self, self->_rtc);
    v17 = v11 >= 0.0 && v15 <= 1.0;
    if (!v17 || ([(TMTimeSynthesizerStates *)v10 utc_var], v15 > sqrt(v18) * 50.0))
    {
      v19 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        lastTimeRtc = self->_lastTimeRtc;
        v22 = self->_rtc;
        v25 = 138414082;
        v26 = name;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = v10;
        v31 = 2048;
        v32 = v11;
        v33 = 2048;
        v34 = v14;
        v35 = 2048;
        v36 = v15;
        v37 = 2048;
        v38 = lastTimeRtc;
        v39 = 2048;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@,WrongPredictState,Current,%@,PredictState,%@,dRtc,%.3lf,dUtc,%.3lf,ddtc,%.3lf,lastRtc,%.3lf,rtc,%.3lf", &v25, 0x52u);
      }
    }

    v8 = objc_alloc_init(TMTime);
    [(TMTimeSynthesizerStates *)v10 rtc];
    [v8 setRtc_s:?];
    [(TMTimeSynthesizerStates *)v10 utc];
    [v8 setUtc_s:?];
    [(TMTimeSynthesizerStates *)v10 utc_var];
    [v8 setUtcUnc_s:sqrt(v23)];
    [(TMTimeSynthesizerStates *)v10 rateSf];
    [v8 setSf:?];
    [(TMTimeSynthesizerStates *)v10 sf_var];
    [v8 setSfUnc:sqrt(v24)];
    [v8 setSynthesized:1];
    [v8 setSource:@"TMTimeSynthesizer"];
    [v8 setReliability:{sub_100018B00(self, v8)}];
  }

  else
  {
    v6 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_name;
      v25 = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@, Filter Not Available for timeAtRtc", &v25, 0xCu);
    }

    return 0;
  }

  return v8;
}

- (double)rtcWhenBeyondUncertainty:(double)a3
{
  if (self->_running && (utc_var = self->_utc_var, a3 * a3 >= utc_var) && !self->_needTimeNow && self->_measNumber > 3)
  {
    v5 = (self->_sf_var + self->_clkSg * 10800.0 / 3.0) * 1.0e12;
    v6 = (self->_utc_sf_cov + self->_utc_sf_cov) * 1.0e12;
    v7 = (sqrt((utc_var - a3 * a3) * 1.0e12 * (v5 * -4.0) + v6 * v6) - v6) / (v5 + v5);
    v8 = (a3 - sqrt(utc_var)) / (self->_xoAccuracy * 0.5);
    if (v7 < v8)
    {
      v8 = v7;
    }

    return self->_rtc + v8 * 0.75;
  }

  else
  {
    self->_needTimeNow = 0;
    return -INFINITY;
  }
}

- (void)update:(id)a3 withError:(id *)a4
{
  self->_needTimeNow = 0;
  if ([a3 isSynthesized])
  {
    v7 = qword_100033218;
    if (!os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      if (!a4)
      {
        return;
      }

      goto LABEL_4;
    }

    sub_1000191A0(v7);
    if (a4)
    {
LABEL_4:
      v8 = 0;
LABEL_26:
      *a4 = [NSError errorWithDomain:@"kTimedErrorDomain" code:v8 userInfo:0];
    }
  }

  else
  {
    [a3 utcUnc_s];
    if (v9 >= 0.000001)
    {
      running = self->_running;
      [a3 rtc_s];
      if (running && rtc < self->_rtc)
      {
        rtc = self->_rtc;
      }

      self->_lastTimeRtc = rtc;
      ++self->_measNumber;
      if ([objc_msgSend(a3 "source")])
      {
        if (self->_running)
        {
          v19 = qword_100033220;
          if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
          {
            name = self->_name;
            [a3 rtc_s];
            v22 = v21;
            [a3 utc_s];
            v24 = v23;
            [a3 utcUnc_s];
            v26 = v25;
            v27 = [a3 source];
            v28 = self->_rtc;
            *buf = 138413570;
            v142 = name;
            v143 = 2048;
            *v144 = v22;
            *&v144[8] = 2048;
            *&v144[10] = v24;
            *&v144[18] = 2048;
            *&v144[20] = v26;
            *&v144[28] = 2112;
            *&v144[30] = v27;
            *&v144[38] = 2048;
            *&v144[40] = v28;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@,ignoreMobileLockdown,rtc,%.6lf,utc,%.6lf,unc,%.6lf,source,%@,_rtc,%.6lf", buf, 0x3Eu);
          }

          if (a4)
          {
            v8 = 2;
            goto LABEL_26;
          }

          return;
        }
      }

      else if (self->_running)
      {
        [a3 rtc_s];
        if (v29 >= self->_rtc + -0.006)
        {
          [a3 rtc_s];
          if (v42 < self->_rtc)
          {
            v42 = self->_rtc;
          }

          v43 = sub_100018D7C(self, v42);
          AnalyticsSendEventLazy();
          [a3 utcUnc_s];
          v45 = v44;
          [a3 utcUnc_s];
          v47 = v46;
          [(TMTimeSynthesizerStates *)v43 utc_var];
          v49 = v48;
          [a3 utc_s];
          v51 = v50;
          [(TMTimeSynthesizerStates *)v43 utc];
          v53 = v51 - v52;
          [(TMTimeSynthesizerStates *)v43 utc_var];
          v55 = v54;
          [a3 utcUnc_s];
          v57 = v56;
          [a3 utcUnc_s];
          v59 = v55 + v57 * v58;
          v60 = 3.0;
          if (([objc_msgSend(a3 "source")] & 1) == 0)
          {
            if ([objc_msgSend(a3 "source")])
            {
              v60 = 10.0;
            }

            else
            {
              v60 = 5.0;
            }
          }

          v61 = sub_10000EE9C(TMTimeSynthesizer, [a3 source]);
          v62 = v61;
          if (v53 * v53 <= v59 * (v60 * v60))
          {
            v102 = v45 * v47 * 1000000.0;
            v103 = v49 * 1000000.0;
            v104 = v103 + v102;
            if (v61)
            {
              self->_rejects = 0;
            }

            [(TMTimeSynthesizerStates *)v43 rtc];
            self->_rtc = v105;
            [(TMTimeSynthesizerStates *)v43 utc];
            self->_utc = v106;
            [(TMTimeSynthesizerStates *)v43 rateSf];
            self->_rateSf = v107;
            [(TMTimeSynthesizerStates *)v43 utc_var];
            self->_utc_var = v108;
            [(TMTimeSynthesizerStates *)v43 sf_var];
            self->_sf_var = v109;
            [(TMTimeSynthesizerStates *)v43 utc_sf_cov];
            self->_utc_sf_cov = v110;
            v111 = v102 / v104;
            [(TMTimeSynthesizerStates *)v43 utc_sf_cov];
            v113 = v112 * 1000000.0 / v104;
            v114 = self->_rateSf + v53 * v113;
            self->_utc = self->_utc + v103 / v104 * v53;
            self->_rateSf = v114;
            utc_sf_cov = self->_utc_sf_cov;
            v116 = self->_sf_var - utc_sf_cov * v113;
            if (v116 < 6.25e-14)
            {
              v116 = 6.25e-14;
            }

            self->_utc_var = v111 * self->_utc_var;
            self->_sf_var = v116;
            self->_utc_sf_cov = v111 * utc_sf_cov;
            -[TMTimeSynthesizer setLastInputSource:](self, "setLastInputSource:", [a3 source]);
            sub_100018D04(self, a3);
            sub_100002E1C(self);
            v117 = qword_100033220;
            if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
            {
              v118 = self->_name;
              v120 = self->_rtc;
              utc = self->_utc;
              rateSf = self->_rateSf;
              v139 = sqrt(self->_utc_var);
              v140 = sqrt(self->_sf_var);
              v138 = sqrt(self->_utc_sf_cov);
              v122 = log10(self->_clkSg);
              [a3 rtc_s];
              v124 = v123;
              [a3 utc_s];
              v126 = v125;
              [a3 utcUnc_s];
              v128 = v127;
              v129 = [a3 source];
              [(TMTimeSynthesizerStates *)v43 utc];
              v131 = v130;
              [(TMTimeSynthesizerStates *)v43 utc_var];
              v133 = sqrt(v132);
              [(TMTimeSynthesizerStates *)v43 rateSf];
              v135 = v134;
              [(TMTimeSynthesizerStates *)v43 sf_var];
              measNumber = self->_measNumber;
              *buf = 138416386;
              v142 = v118;
              v143 = 2048;
              *v144 = v120;
              *&v144[8] = 2048;
              *&v144[10] = utc;
              *&v144[18] = 2048;
              *&v144[20] = v139;
              *&v144[28] = 2048;
              *&v144[30] = rateSf;
              *&v144[38] = 2048;
              *&v144[40] = v140;
              v145 = 2048;
              v146 = v138;
              v147 = 2048;
              v148 = v122;
              v149 = 2048;
              v150 = v124;
              v151 = 2048;
              v152 = v126;
              v153 = 2048;
              v154 = v128;
              v155 = 2112;
              v156 = v129;
              v157 = 2048;
              v158 = v131;
              v159 = 2048;
              v160 = v133;
              v161 = 2048;
              v162 = v135;
              v163 = 2048;
              v164 = sqrt(v137);
              v165 = 1024;
              v166 = measNumber;
              _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "%@,SynthesizedClock,rtc,%.6lf,utc,%.6lf,utcUnc,%.6lf,sf,%.8lf,sfUnc,%.8lf,utcSfCov,%.8lf,logNoise,%.6lf,timeRtc,%.6lf,timeUtc,%.6lf,timeUnc,%.6lf,timeSource,%@,predUtc,%.6lf,predUtcUnc,%.6lf,predSf,%.8lf,predSfUnc,%.8lf,measNumber,%d", buf, 0xA8u);
            }

            AnalyticsSendEventLazy();
          }

          else
          {
            v63 = qword_100033220;
            if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
            {
              v64 = self->_name;
              rejects = self->_rejects;
              [(TMTimeSynthesizerStates *)v43 utc];
              v67 = v66;
              [a3 rtc_s];
              v69 = v68;
              [a3 utc_s];
              v71 = v70;
              [a3 utcUnc_s];
              *buf = 138414082;
              v142 = v64;
              v143 = 2048;
              *v144 = rejects;
              *&v144[8] = 2048;
              *&v144[10] = v53;
              *&v144[18] = 2048;
              *&v144[20] = v67;
              *&v144[28] = 2048;
              *&v144[30] = v69;
              *&v144[38] = 2048;
              *&v144[40] = v71;
              v145 = 2048;
              v146 = v72;
              v147 = 2112;
              v148 = COERCE_DOUBLE([a3 source]);
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%@,RejectATime,rejects,%lu,innv,%.6lf,predTime,%.6lf,rtc,%.6lf,utc,%.6lf,unc,%.6lf,source,%@", buf, 0x52u);
            }

            AnalyticsSendEventLazy();
            if (a4)
            {
              *a4 = [NSError errorWithDomain:@"kTimedErrorDomain" code:4 userInfo:0];
            }

            if (v62)
            {
              v73 = self->_rejects + 1;
              self->_rejects = v73;
              self->_needTimeNow = 1;
              v74 = qword_100033220;
              if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
              {
                v75 = self->_name;
                [a3 rtc_s];
                v77 = v76;
                [a3 utc_s];
                v79 = v78;
                [a3 utcUnc_s];
                v81 = v80;
                v82 = [a3 source];
                *buf = 138413570;
                v142 = v75;
                v143 = 1024;
                *v144 = v73;
                *&v144[4] = 2048;
                *&v144[6] = v77;
                *&v144[14] = 2048;
                *&v144[16] = v79;
                *&v144[24] = 2048;
                *&v144[26] = v81;
                *&v144[34] = 2112;
                *&v144[36] = v82;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%@,RequestFastTime,Reject,number,%u,rtc,%.6lf,utc,%.6lf,uncertainty,%.6lf,source,%@", buf, 0x3Au);
              }

              AnalyticsSendEventLazy();
              if (self->_rejects > 4 || (-[TMTimeSynthesizerStates utc_var](v43, "utc_var"), v84 = v83, [a3 utcUnc_s], v86 = v85, objc_msgSend(a3, "utcUnc_s"), v84 > v86 * v87 * 16.0))
              {
                v88 = qword_100033220;
                if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = self->_name;
                  v90 = self->_rejects;
                  [(TMTimeSynthesizerStates *)v43 utc];
                  v92 = v91;
                  [(TMTimeSynthesizerStates *)v43 utc_var];
                  v94 = sqrt(v93);
                  [a3 rtc_s];
                  v96 = v95;
                  [a3 utc_s];
                  v98 = v97;
                  [a3 utcUnc_s];
                  v100 = v99;
                  v101 = COERCE_DOUBLE([a3 source]);
                  *buf = 138414082;
                  v142 = v89;
                  v143 = 2048;
                  *v144 = v90;
                  *&v144[8] = 2048;
                  *&v144[10] = v92;
                  *&v144[18] = 2048;
                  *&v144[20] = v94;
                  *&v144[28] = 2048;
                  *&v144[30] = v96;
                  *&v144[38] = 2048;
                  *&v144[40] = v98;
                  v145 = 2048;
                  v146 = v100;
                  v147 = 2112;
                  v148 = v101;
                  _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%@,ResetSynthesizer,rejects,%lu,predTime,%.6lf,predTimeUtc,%.6lf,rtc,%.6lf,utc,%.6lf,unc,%.6lf,source,%@", buf, 0x52u);
                }

                AnalyticsSendEventLazy();
                sub_100018EA0(self, a3);
                if (a4)
                {
                  v8 = 5;
                  goto LABEL_26;
                }
              }
            }
          }
        }

        else
        {
          v30 = qword_100033220;
          if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
          {
            v31 = self->_name;
            [a3 rtc_s];
            v33 = v32;
            [a3 utc_s];
            v35 = v34;
            [a3 utcUnc_s];
            v37 = v36;
            v38 = [a3 source];
            v39 = self->_rtc;
            *buf = 138413570;
            v142 = v31;
            v143 = 2048;
            *v144 = v33;
            *&v144[8] = 2048;
            *&v144[10] = v35;
            *&v144[18] = 2048;
            *&v144[20] = v37;
            *&v144[28] = 2112;
            *&v144[30] = v38;
            *&v144[38] = 2048;
            *&v144[40] = v39;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@,RtcRollBack,rtc,%.6lf,utc,%.6lf,unc,%.6lf,source,%@,_rtc,%.6lf", buf, 0x3Eu);
          }

          AnalyticsSendEventLazy();
          v40 = self->_rtc;
          [a3 rtc_s];
          if (a4 && v40 - v41 > 3600.0)
          {
            v8 = 3;
            goto LABEL_26;
          }
        }

        return;
      }

      sub_100018EA0(self, a3);
      return;
    }

    v10 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_name;
      [a3 rtc_s];
      v13 = v12;
      [a3 utc_s];
      v15 = v14;
      [a3 utcUnc_s];
      *buf = 138413314;
      v142 = v11;
      v143 = 2048;
      *v144 = v13;
      *&v144[8] = 2048;
      *&v144[10] = v15;
      *&v144[18] = 2048;
      *&v144[20] = v16;
      *&v144[28] = 2112;
      *&v144[30] = [a3 source];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@,zeroTimeUncertainty,timeRtc,%.6lf,timeUtc,%.6lf,timeUnc,%.6lf,timeSource,%@", buf, 0x34u);
    }

    if (a4)
    {
      v8 = 1;
      goto LABEL_26;
    }
  }
}

@end