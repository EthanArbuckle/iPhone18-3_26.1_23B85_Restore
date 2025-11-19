void sub_1007DE030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007DE178(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  context = objc_autoreleasePoolPush();
  v130 = sub_1000081AC();
  v5 = 1.0;
  v6 = 1.0;
  if ([a4[1] count] >= 2)
  {
    [objc_msgSend(objc_msgSend(a4[1] "lastObject")];
    v8 = v7;
    [objc_msgSend(objc_msgSend(a4[1] "firstObject")];
    v6 = vabdd_f64(v8, v9);
  }

  if ([*a4 count] >= 2)
  {
    [objc_msgSend(objc_msgSend(*a4 "lastObject")];
    v11 = v10;
    [objc_msgSend(objc_msgSend(*a4 "firstObject")];
    v5 = vabdd_f64(v11, v12);
  }

  v133 = 1.0;
  if ((0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 4)) >= 2)
  {
    v133 = vabdd_f64(*(*(a3 + 8) - 112), **a3);
  }

  if (*(a1 + 114288) == 1)
  {
    if (v6 >= v5)
    {
      v13 = v6;
    }

    else
    {
      v13 = v5;
    }

    v133 = v13;
    [*a4 count];
  }

  if (*(a1 + 114304) != 1 || *(a1 + 114296) < 1.0)
  {
    v14 = v133 / 10000.0;
    if (v133 / 10000.0 < 1.0)
    {
      v14 = 1.0;
    }

    if (v14 > 5.0)
    {
      v14 = 5.0;
    }

    *(a1 + 114296) = v14;
    *(a1 + 114304) = 1;
  }

  v136 = a4;
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v15 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a2;
    if (*(a2 + 23) < 0)
    {
      v16 = *a2;
    }

    v17 = *(a1 + 114288);
    v18 = *(a1 + 48);
    if (*v136)
    {
      v19 = [*v136 count];
    }

    else
    {
      v19 = 0;
    }

    v20 = v136[1];
    if (v20)
    {
      v20 = [v20 count];
    }

    v21 = (v136[3] - v136[2]) >> 4;
    if (*(a1 + 114304) == 1)
    {
      v22 = *(a1 + 114296);
    }

    else
    {
      v22 = 0x3FF0000000000000;
    }

    *buf = 136448002;
    *&buf[4] = v16;
    *&buf[12] = 1026;
    *&buf[14] = v17;
    *&buf[18] = 1026;
    *&buf[20] = v18;
    *v176 = 2050;
    *&v176[2] = v19;
    *v177 = 2050;
    *&v177[2] = v20;
    *v178 = 2050;
    *&v178[2] = v21;
    *&v178[10] = 2050;
    *&v178[12] = v133;
    v179 = 2050;
    *v180 = v22;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}s,reconstructRoute,useTsp,%{public}d,workout,%{public}u,locationSamples,count,%{public}zu,odometrySamples,count,%{public}zu,altitudeSamples,count,%{public}zu,workoutDurationSec,%{public}.1lf,timeBetweenReconstructedPointsSeconds,%{public}.1lf", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v105 = a2;
    if (*(a2 + 23) < 0)
    {
      v105 = *a2;
    }

    v106 = *(a1 + 114288);
    v107 = *(a1 + 48);
    if (*v136)
    {
      v108 = [*v136 count];
    }

    else
    {
      v108 = 0;
    }

    v109 = v136[1];
    if (v109)
    {
      v109 = [v109 count];
    }

    v110 = (v136[3] - v136[2]) >> 4;
    if (*(a1 + 114304) == 1)
    {
      v111 = *(a1 + 114296);
    }

    else
    {
      v111 = 0x3FF0000000000000;
    }

    LODWORD(v166[0]) = 136448002;
    *(v166 + 4) = v105;
    WORD2(v166[1]) = 1026;
    *(&v166[1] + 6) = v106;
    WORD1(v166[2]) = 1026;
    HIDWORD(v166[2]) = v107;
    *v167 = 2050;
    *&v167[2] = v108;
    *v168 = 2050;
    *&v168[2] = v109;
    *v169 = 2050;
    *&v169[2] = v110;
    *&v169[10] = 2050;
    *&v169[12] = v133;
    v170 = 2050;
    *v171 = v111;
    LODWORD(v129) = 74;
    v112 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v112);
    if (v112 != buf)
    {
      free(v112);
    }
  }

  v23 = objc_alloc_init(NSMutableArray);
  v24 = 0.0;
  if (*(a1 + 114288) == 1 && ((*(a1 + 48) - 4) & 0xFFFFFFFB) == 0)
  {
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v25 = *v136;
    v26 = [*v136 countByEnumeratingWithState:&v161 objects:v174 count:16];
    if (v26)
    {
      v27 = 0;
      v28 = *v162;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v162 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v161 + 1) + 8 * i);
          v31 = *(v136 + 41) == 1 && [*(*(&v161 + 1) + 8 * i) type] == 0;
          v32 = [CLTripSegmentLocation alloc];
          v33 = [v30 timestamp];
          [v30 coordinate];
          v137 = v34;
          [v30 coordinate];
          v36 = v35;
          [v30 horizontalAccuracy];
          v38 = v37;
          [v30 course];
          v40 = v39;
          [v30 courseAccuracy];
          v42 = v41;
          [v30 speed];
          v44 = v43;
          [v30 speedAccuracy];
          v46 = v45;
          [v30 altitude];
          v48 = v47;
          [v30 verticalAccuracy];
          v50 = v49;
          if (v31)
          {
            v51 = 1;
          }

          else
          {
            v51 = [v30 type];
          }

          v52 = [v32 initWithTime:v33 latitude:v51 longitude:v137 horizontalAccuracy:v36 course:v38 courseAccuracy:v40 speed:v42 speedAccuracy:v44 altitude:v46 altitudeAccuracy:v48 locType:{v50, v129}];
          [v52 setSignalEnvironmentType:{objc_msgSend(v30, "signalEnvironmentType")}];
          [v23 addObject:v52];
          if ([v30 signalEnvironmentType] - 3 >= 2)
          {
            v53 = *(a1 + 114268);
          }

          else
          {
            v53 = 1;
          }

          v27 += v53;
        }

        v26 = [v25 countByEnumeratingWithState:&v161 objects:v174 count:16];
      }

      while (v26);
      v54 = v27;
    }

    else
    {
      v54 = 0.0;
    }

    v24 = 0.0;
    if ([*v136 count] >= 2)
    {
      v24 = v54 / [*v136 count];
    }
  }

  v55 = a1 + 110592;
  if (*(a1 + 114256) == 1)
  {
    if (*(a1 + 114288))
    {
      sub_1007DBAF0(v23, a2);
    }

    else
    {
      sub_1007DB818(a3, a2);
    }

    v55 = a1 + 110592;
  }

  v157 = 0;
  v158 = &v157;
  v159 = 0x2020000000;
  v160 = 0;
  if (*(v55 + 3696) != 1)
  {
    isTypeCycling = CLMotionActivity::isTypeCycling();
    if ((CLMotionActivity::isTypePedestrian() | isTypeCycling))
    {
      __src = 0;
      v153 = 0;
      v154 = 0;
      v149 = 0;
      v150 = 0;
      v151 = 0;
      memset(&__p, 0, sizeof(__p));
      LODWORD(v141) = 0;
      v142 = 0x3FE0000000000000;
      LOWORD(v143) = 0;
      v144 = xmmword_101CA7370;
      v145 = 1;
      v146 = xmmword_101CA7380;
      v147 = 1;
      v148 = 0;
      sub_100006BE0(&__p, "CLRouteSmootherPedestrian", 0x19uLL);
      LODWORD(v141) = 2;
      v142 = 0x3FE0000000000000;
      LOWORD(v143) = 1;
      LOBYTE(v145) = *(a1 + 54);
      HIBYTE(v145) = *(a1 + 114271);
      v146 = xmmword_101CA7390;
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v69 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
      {
        *buf = 67240960;
        *&buf[4] = BYTE1(v143);
        *&buf[8] = 2050;
        *&buf[10] = v142;
        *&buf[18] = 1026;
        *&buf[20] = v143;
        *v176 = 1026;
        *&v176[2] = v145;
        _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_INFO, "CLRS,reconstruction,CLGeoMapFeatureGeometrySettings,UseXPCServiceForDataQuery,%{public}d,IntersectionRoadSearchDistance,%{public}.1lf,StoringRoadConnectionEnabled,%{public}d,AllowNetworkTileDownload,%{public}d", buf, 0x1Eu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193ED1C(buf);
        LODWORD(v166[0]) = 67240960;
        HIDWORD(v166[0]) = BYTE1(v143);
        LOWORD(v166[1]) = 2050;
        *(&v166[1] + 2) = v142;
        WORD1(v166[2]) = 1026;
        HIDWORD(v166[2]) = v143;
        *v167 = 1026;
        *&v167[2] = v145;
        v117 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v117);
        if (v117 != buf)
        {
          free(v117);
        }
      }

      sub_1007EF2D4();
    }

    *(v158 + 24) = 1;
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v89 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEBUG, "CLRS,reconstruction failed,unsupported activity type", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_148;
    }

    sub_10193ED1C(buf);
    LOWORD(v166[0]) = 0;
    v90 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v90);
    goto LABEL_135;
  }

  v56 = 1.0;
  if (*v136 && [*v136 count] && *(v136 + 41) == 1)
  {
    [CLRouteAnalyzer calculateRouteLinearity:*v136];
    v56 = v57;
  }

  if (*(v136 + 41) == 1)
  {
    if (*(a1 + 114267) != 1 || ((*(a1 + 48) - 4) & 0xFFFFFFFB) != 0 || v24 < 0.5 || (*(a1 + 52) & 1) == 0 && v56 >= *(a1 + 114312))
    {
      goto LABEL_72;
    }
  }

  else if (*(a1 + 48) != 4)
  {
LABEL_72:
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v58 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *(v136 + 41);
      v60 = *(a1 + 48) != 4;
      v61 = ((*(a1 + 48) - 4) & 0xFFFFFFFB) == 0;
      *buf = 67241216;
      *&buf[4] = v59;
      *&buf[8] = 1024;
      *&buf[10] = v61;
      *&buf[14] = 2050;
      *&buf[16] = v24;
      *v176 = 2050;
      *&v176[2] = v56;
      *v177 = 1026;
      *&v177[2] = v60;
      _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "CLRS,Criteria not met to reconstruct,is1HzData,%{public}d,isIOSupportedWorkoutType,%d,ratioOfLocationsThatAreDenseUrban,%{public}.1lf,routeLinearity,%{public}.3lf,WorkoutActivityNotWalking,%{public}d", buf, 0x28u);
    }

    v62 = sub_10000A100(121, 2);
    if (v62)
    {
      sub_10193ED1C(buf);
      v113 = *(v136 + 41);
      v114 = *(a1 + 48) != 4;
      v115 = ((*(a1 + 48) - 4) & 0xFFFFFFFB) == 0;
      LODWORD(v166[0]) = 67241216;
      HIDWORD(v166[0]) = v113;
      LOWORD(v166[1]) = 1024;
      *(&v166[1] + 2) = v115;
      HIWORD(v166[1]) = 2050;
      *&v166[2] = v24;
      *v167 = 2050;
      *&v167[2] = v56;
      *v168 = 1026;
      *&v168[2] = v114;
      v116 = _os_log_send_and_compose_impl();
      v62 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v116);
      if (v116 != buf)
      {
        free(v116);
      }
    }

    memset(v166, 0, sizeof(v166));
    v63 = v136;
    sub_1007E4E10(v62, v136, v166);
    if (v166[0] == v166[1])
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v64 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEFAULT, "CLRS,empty interpolated altitude vector", buf, 2u);
      }

      v63 = v136;
      if (sub_10000A100(121, 2))
      {
        sub_10193ED1C(buf);
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        v127 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v127);
        if (v127 != buf)
        {
          free(v127);
        }

        v63 = v136;
      }
    }

    sub_1007E4704(*v63, v166, a3, *(v63 + 41));
    v65 = v166[1];
    v66 = v166[0];
    while (v65 != v66)
    {
      v67 = *(v65 - 8);
      if (v67)
      {
        sub_100008080(v67);
      }

      v65 -= 16;
    }

    v166[1] = v66;
    *buf = v166;
    sub_1004CA974(buf);
    v70 = 1;
    goto LABEL_152;
  }

  if (![v23 count])
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v91 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_ERROR, "CLRS,tslSampleArray count < 1, cannot reconstruct", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_148;
    }

    sub_10193ED1C(buf);
    LOWORD(v166[0]) = 0;
    v90 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v90);
LABEL_135:
    if (v90 != buf)
    {
      free(v90);
    }

LABEL_148:
    v70 = 0;
    goto LABEL_152;
  }

  v71 = [CLTripSegmentInputData alloc];
  v72 = objc_alloc_init(NSUUID);
  if (*(a1 + 48) == 6)
  {
    v73 = 3;
  }

  else
  {
    v73 = 2;
  }

  v74 = [v71 initWithTripSegmentID:v72 isFinalPart:1 modeOfTransport:v73 tripLocations:v23 startTripLocation:objc_msgSend(v23 stopTripLocation:"firstObject") inertialOdometryData:{objc_msgSend(v23, "lastObject"), v136[1]}];
  v173 = 0;
  *(v166 + *(v166[0] - 24)) = v75;
  v76 = (v166 + *(v166[0] - 24));
  std::ios_base::init(v76, &v166[1]);
  v76[1].__vftable = 0;
  v76[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  __p.__r_.__value_.__r.__words[0] = 0;
  __p.__r_.__value_.__l.__size_ = &__p;
  __p.__r_.__value_.__r.__words[2] = 0x3052000000;
  v141 = sub_1000475D8;
  v142 = sub_1000484E0;
  v143 = dispatch_semaphore_create(0);
  v77 = objc_alloc_init(CLTripSegmentProcessorOptions);
  [v77 setNetworkAccessAllowed:*(a1 + 54)];
  [v77 setRunInertialIntegrator:*(a1 + 114259)];
  v78 = 114260;
  if (*(v136 + 41))
  {
    v78 = 114261;
  }

  [v77 setRunMapIntegrator:*(a1 + v78)];
  [v77 setRunLocationOutlierRejector:*(v136 + 41)];
  [v77 setIsWatch:*(a1 + 52)];
  if ((*(a1 + 114304) & 1) == 0)
  {
    sub_100173BA0();
  }

  [v77 setTimeBetweenReconstructedPointsSeconds:*(a1 + 114296)];
  [v77 setTripSegmentRecorderLoggingDirectory:@"/var/mobile/Library/Logs/locationd/routesmoother"];
  [v77 setUseParticleMapMatcherForSnappingInMapIntegrator:1];
  [v77 setUseXPCService:*(a1 + 114289)];
  [v77 setUseNonGNSSFixesForRouteReconstruction:0];
  v79 = *(a1 + 114272);
  if (v79 > 0.0 && *(a1 + 114280) > 0.0)
  {
    [v77 setWindowSizeForLocationOutlierRejector:v79];
    [v77 setStepSizeForLocationOutlierRejector:*(a1 + 114280)];
  }

  [v77 setMaxProcessingTimeInMilliSec:23000.0];
  [v77 setMaxTripSegmentDurationSeconds:28800.0];
  v156[0] = _NSConcreteStackBlock;
  v156[1] = 3221225472;
  v156[2] = sub_1007E52C8;
  v156[3] = &unk_1024720E8;
  v156[5] = a1;
  v156[4] = &v157;
  v156[6] = v136;
  v156[7] = a3;
  v155[0] = _NSConcreteStackBlock;
  v155[1] = 3221225472;
  v155[2] = sub_1007E61EC;
  v155[3] = &unk_102472110;
  v155[4] = &v157;
  v155[5] = &__p;
  v80 = objc_alloc_init(CLTripSegmentProcessorManager);
  [v80 processTripSegmentData:v74 withOptions:v77 outputHandler:v156 completionHandler:v155];
  sub_10001CAF4(buf);
  LODWORD(v165) = 0;
  v81 = sub_10005BBE4(*buf, "CLRSTripSegmentProcessorTimeoutInSeconds", &v165);
  v82 = v165;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v83 = *(__p.__r_.__value_.__l.__size_ + 40);
  if (v81)
  {
    v84 = 1000000000 * v82;
  }

  else
  {
    v84 = 25000000000;
  }

  v85 = dispatch_time(0, v84);
  v86 = dispatch_semaphore_wait(v83, v85);
  v87 = *(__p.__r_.__value_.__l.__size_ + 40);
  if (v87)
  {
    dispatch_release(v87);
    *(__p.__r_.__value_.__l.__size_ + 40) = 0;
  }

  if (v86)
  {
    [v80 cancelMapHelperRoadDataRequest];
    *(v158 + 24) = 1;
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v88 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_ERROR, "CLRS,CLTSP,processTripSegmentData timed out", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(buf);
      LOWORD(v165) = 0;
      v128 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v128);
      if (v128 != buf)
      {
        free(v128);
      }
    }
  }

  if (*(v158 + 24) == 1)
  {
    memset(buf, 0, sizeof(buf));
    sub_1007E4704(*v136, buf, a3, *(v136 + 41));
    v165 = buf;
    sub_1004CA974(&v165);
  }

  _Block_object_dispose(&__p, 8);
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  v92 = 0.0;
  if (v130 >= 0.0)
  {
    v92 = vabdd_f64(sub_1000081AC(), v130) * 1000.0;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v93 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v94 = a2;
    if (*(a2 + 23) < 0)
    {
      v94 = *a2;
    }

    v96 = *a3;
    v95 = *(a3 + 8);
    v97 = [v136[1] count];
    v98 = *(a1 + 48);
    v99 = *(a1 + 114288);
    v100 = *(a1 + 54);
    v101 = *(v158 + 24);
    *buf = 136448258;
    *&buf[4] = v94;
    *&buf[12] = 2050;
    *&buf[14] = 0x6DB6DB6DB6DB6DB7 * ((v95 - v96) >> 4);
    *&buf[22] = 2050;
    *v176 = v97;
    *&v176[8] = 2050;
    *v177 = v92;
    *&v177[8] = 1026;
    *v178 = v98;
    *&v178[4] = 2050;
    *&v178[6] = v133;
    *&v178[14] = 1026;
    *&v178[16] = v99;
    v179 = 1026;
    *v180 = v100;
    *&v180[4] = 1026;
    *&v180[6] = v101;
    _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_DEFAULT, "CLRS,type,%{public}s,reconstruction complete,locationCount,%{public}zu,inertialOdometryCount,%{public}zu,totalElapsedTimeMs,%{public}.0lf,workout,%{public}u,workoutDurationSec,%{public}.1lf,UseTripSegmentProcessorForReconstruction,%{public}d,NetworkAccessAllowed,%{public}d,reconstructionFailed,%{public}d", buf, 0x4Cu);
  }

  v102 = sub_10000A100(121, 2);
  v103 = a2;
  if (v102)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v118 = a2;
    if (*(a2 + 23) < 0)
    {
      v118 = *a2;
    }

    v120 = *a3;
    v119 = *(a3 + 8);
    v121 = [v136[1] count];
    v122 = *(a1 + 48);
    v123 = *(a1 + 114288);
    v124 = *(a1 + 54);
    v125 = *(v158 + 24);
    LODWORD(v166[0]) = 136448258;
    *(v166 + 4) = v118;
    WORD2(v166[1]) = 2050;
    *(&v166[1] + 6) = 0x6DB6DB6DB6DB6DB7 * ((v119 - v120) >> 4);
    HIWORD(v166[2]) = 2050;
    *v167 = v121;
    *&v167[8] = 2050;
    *v168 = v92;
    *&v168[8] = 1026;
    *v169 = v122;
    *&v169[4] = 2050;
    *&v169[6] = v133;
    *&v169[14] = 1026;
    *&v169[16] = v123;
    v170 = 1026;
    *v171 = v124;
    *&v171[4] = 1026;
    *&v171[6] = v125;
    v126 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v126);
    if (v126 != buf)
    {
      free(v126);
    }

    v103 = a2;
  }

  if (*(v103 + 23) < 0)
  {
    sub_100007244(&v138, *v103, *(v103 + 8));
  }

  else
  {
    v138 = *v103;
    v139 = *(v103 + 16);
  }

  AnalyticsSendEventLazy();
  v70 = *(v158 + 24) ^ 1;
  if (SHIBYTE(v139) < 0)
  {
    operator delete(v138);
  }

LABEL_152:
  _Block_object_dispose(&v157, 8);
  objc_autoreleasePoolPop(context);
  return v70 & 1;
}

void sub_1007E0C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a56)
  {
    sub_100008080(a56);
  }

  if (a62 < 0)
  {
    operator delete(__p);
  }

  STACK[0x320] = &a72;
  sub_1007EE3E8(&STACK[0x320]);
  v74 = a73;
  if (a73)
  {
    STACK[0x200] = a73;
    operator delete(v74);
  }

  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E0E80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_100288820(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_1002EC088(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void sub_1007E0FC0(uint64_t a1, uint64_t a2, std::string::size_type a3, size_t *a4)
{
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v8 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructInterval,intervalIndex,%{public}zu", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193ED60(a3);
  }

  sub_10000EC00(&v39, "Sparse");
  *(a1 + 114288) = 1;
  v9 = *(a1 + 56) + 56 * a3;
  if ([*v9 count] <= 1)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v10 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*v9 count];
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = a3;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLRS,warning,interval %{public}zu has fewer than 2 location samples, cannot reconstruct route,count,%{public}zu", &buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ED1C(&buf);
      v25 = [*v9 count];
      *v41 = 134349312;
      *&v41[4] = a3;
      v42 = 2050;
      v43 = v25;
      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v26);
      if (v26 != &buf)
      {
        free(v26);
      }
    }

    memset(&buf, 0, sizeof(buf));
    sub_1007E4704(*v9, &buf, a4, *(a2 + 41));
    *v41 = &buf;
    sub_1004CA974(v41);
    goto LABEL_49;
  }

  sub_10000EC00(v37, "Interval-");
  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v12 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    if (*v9)
    {
      v13 = [*v9 count];
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v9 + 8);
    if (v14)
    {
      v14 = [v14 count];
    }

    v15 = (*(v9 + 24) - *(v9 + 16)) >> 4;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = v13;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v14;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v47 = v15;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructRoute,intervalEpochs,locationSamples,size,%{public}zu,odometrySamples,size,%{public}zu,altitudeSamples,size,%{public}zu", &buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    if (*v9)
    {
      v27 = [*v9 count];
    }

    else
    {
      v27 = 0;
    }

    v32 = *(v9 + 8);
    if (v32)
    {
      v32 = [v32 count];
    }

    v33 = (*(v9 + 24) - *(v9 + 16)) >> 4;
    *v41 = 134349568;
    *&v41[4] = v27;
    v42 = 2050;
    v43 = v32;
    v44 = 2050;
    v45 = v33;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v34);
    if (v34 != &buf)
    {
      free(v34);
    }
  }

  std::to_string(&buf, a3);
  if ((v38 & 0x80u) == 0)
  {
    v16 = v37;
  }

  else
  {
    v16 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v17 = v38;
  }

  else
  {
    v17 = v37[1];
  }

  v18 = std::string::insert(&buf, 0, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v36 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = sub_1007DE178(a1, __p, a4, v9);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v20)
    {
      goto LABEL_42;
    }

LABEL_36:
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v21 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
      *(buf.__r_.__value_.__r.__words + 4) = a3;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLRS,Interval Route Reconstruction before smoothing failed,interval,%{public}zu", &buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(&buf);
      *v41 = 134349056;
      *&v41[4] = a3;
      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v31);
      if (v31 != &buf)
      {
        free(v31);
      }
    }

    sub_1016B1A70(*(a1 + 40), "routesmoother", "autostart_reconstruction_failure", 0);
    goto LABEL_42;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v22 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*v9 count];
    v24 = 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = a3;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v47 = v24;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructInterval,success,interval,%{public}zu,inputSize,%{public}zu,outputSize,%{public}zu", &buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193ED1C(&buf);
    v28 = [*v9 count];
    v29 = 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4);
    *v41 = 134349568;
    *&v41[4] = a3;
    v42 = 2050;
    v43 = v28;
    v44 = 2050;
    v45 = v29;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v30);
    if (v30 != &buf)
    {
      free(v30);
    }
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

LABEL_49:
  if (v40 < 0)
  {
    operator delete(v39);
  }
}

void sub_1007E1774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E1824(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) < a2)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v4 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
      *buf = 134349312;
      v8 = a2;
      v9 = 2050;
      v10 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLRS,Increasing size of route_epochs_expanded_vector,new size,%{public}zu,original size,%{public}zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)::(anonymous class)::operator()(std::vector<swan::RouteSmootherEpoch> &, const size_t) const", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    sub_1007E1A28(a1, a2);
  }
}

void sub_1007E1A28(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1007ED8AC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 112 * a2;
  }
}

uint64_t sub_1007E1A6C(uint64_t a1)
{
  if (*(a1 + 114240))
  {
    return 1;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v3 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLRS,CLMM,configureMapMatcher", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193EE64();
  }

  v4 = (a1 + 48);
  isTypeCycling = CLMotionActivity::isTypeCycling();
  if (CLMotionActivity::isTypePedestrian() & 1) != 0 || (isTypeCycling)
  {
    sub_1007EF7EC();
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v5 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *v4;
    *buf = 67240192;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,CLMM,Unsupported activity type,%{public}d", buf, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193EF50(v4);
    return 0;
  }

  return result;
}

void sub_1007E1DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

uint64_t sub_1007E1DE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  sub_10018D404(v40);
  v39 = 0;
  v5 = sub_1000081AC();
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v34 = _Q0;
    do
    {
      *v45 = 0;
      *&v45[8] = 0;
      *&v45[16] = v34;
      v46 = 0uLL;
      v47 = 0xBFF0000000000000;
      v61 = 0;
      v62 = 0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      memset(v66, 0, 27);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      memset(v57, 0, 30);
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v71 = 0xBFF0000000000000;
      v70 = 0;
      v13 = *(a1 + 114240);
      v14 = *(a1 + 114248);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 48);
      if (sub_10002807C(*(v7 + 8), *(v7 + 16)))
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v16 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLRS,CLMM,fillCrumb,Null Island", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193ED1C(buf);
          LOWORD(v44[0]) = 0;
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL fillCrumb(CLMapGeometryPtr, CLGeoLocationShifter &, const swan::RouteSmootherEpoch &, const CLMotionActivity::Type, CLMapCrumb &)", "%s\n", v17);
          goto LABEL_45;
        }
      }

      else if (v13)
      {
        v46 = *(v7 + 8);
        v48 = v46;
        DWORD1(v69) = 1;
        *(&v69 + 1) = 0x4014000000000000;
        HIBYTE(v66[1]) = 0;
        *&v51 = *(v7 + 48);
        *(&v56 + 1) = *(v7 + 56);
        v49 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
        *&v50 = *(v7 + 40);
        *(&v50 + 1) = *(v7 + 64);
        *&v56 = *(v7 + 72);
        v67 = v46;
        *&v45[16] = *v7;
        *&v45[24] = *&v45[16];
        *&v45[8] = *&v45[16];
        LOBYTE(v66[3]) = 0;
        v57[6] = v15;
        LODWORD(v66[1]) = 2;
        LOWORD(v57[7]) = 0;
        v66[2] = 0xBFF0000000000000;
        v70 = *(v7 + 104);
        if (!sub_1001B4788(*&v46, *(&v46 + 1)))
        {
          goto LABEL_42;
        }

        v43 = *(&v48 + 1);
        *&v44[0] = v48;
        v42 = v49.i64[1];
        v18 = sub_100D8D8D4(&v39, 1, v44, &v43, &v42, 5, *&v48, *(&v48 + 1), *&v49.i64[1]);
        if (v18 == 2)
        {
          *&v48 = v44[0];
          *(&v48 + 1) = v43;
          v49.i64[1] = v42;
          HIBYTE(v66[1]) = 1;
LABEL_42:
          v21 = 1;
          if (!v14)
          {
            goto LABEL_29;
          }

LABEL_28:
          sub_100008080(v14);
          goto LABEL_29;
        }

        if (v18 != 1)
        {
          goto LABEL_42;
        }

        if (qword_1025D45E0 != -1)
        {
          sub_10193F224();
        }

        v19 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CLRS,CLMM,China shift returned false", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193F24C(buf);
          v41 = 0;
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL fillCrumb(CLMapGeometryPtr, CLGeoLocationShifter &, const swan::RouteSmootherEpoch &, const CLMotionActivity::Type, CLMapCrumb &)", "%s\n", v17);
          goto LABEL_45;
        }
      }

      else
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v20 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "CLRS,CLMM,fillCrumb,Null fMapGeometryPtr", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10193ED1C(buf);
          LOWORD(v44[0]) = 0;
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL fillCrumb(CLMapGeometryPtr, CLGeoLocationShifter &, const swan::RouteSmootherEpoch &, const CLMotionActivity::Type, CLMapCrumb &)", "%s\n", v17);
LABEL_45:
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }

      v21 = 0;
      if (v14)
      {
        goto LABEL_28;
      }

LABEL_29:
      if (v21)
      {
        sub_10000EC00(__p, "aPriori");
        sub_1002B7B0C(v45, __p, -1.0);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        if (sub_10118EF8C(*(a1 + 114232), v45))
        {
          sub_1002BD298(v45, v40);
          if ((v60 & 0x100) == 0)
          {
            *(v7 + 8) = v67;
            *(v7 + 48) = v55;
            *(v7 + 24) = v49.i64[1];
            *(v7 + 56) = *(&v56 + 1);
          }
        }

        sub_10000EC00(v35, "aPosteriori");
        sub_1002B7B0C(v45, v35, -1.0);
        if (v36 < 0)
        {
          operator delete(v35[0]);
        }
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(*(&v52 + 1));
      }

      v7 += 112;
    }

    while (v7 != v6);
  }

  v22 = 0.0;
  if (v5 >= 0.0)
  {
    v22 = vabdd_f64(sub_1000081AC(), v5) * 1000.0;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v23 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a2;
    if (*(a2 + 23) < 0)
    {
      v24 = *a2;
    }

    v25 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
    v26 = *(a1 + 48);
    *buf = 136447234;
    v73 = v24;
    v74 = 2050;
    v75 = v25;
    v76 = 2050;
    v77 = v22;
    v78 = 1026;
    v79 = v26;
    v80 = 2050;
    v81 = a4;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "CLRS,CLMM,type,%{public}s,dataCount,%{public}zu,elapsedTime,%{public}.0lf,msec,workout,%{public}u,batchType,%{public}lu", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v28 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
    v29 = *(a1 + 48);
    *v45 = 136447234;
    *&v45[4] = a2;
    *&v45[12] = 2050;
    *&v45[14] = v28;
    *&v45[22] = 2050;
    *&v45[24] = v22;
    LOWORD(v46) = 1026;
    *(&v46 + 2) = v29;
    WORD3(v46) = 2050;
    *(&v46 + 1) = a4;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::mapMatchPoints(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  sub_100D8D8D0(&v39);
  return 1;
}

uint64_t sub_1007E269C(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4)
{
  v7 = a1 + 110592;
  v8 = sub_1000081AC();
  if (*(v7 + 3664) == 1)
  {
    sub_1007DB818(a3, a2);
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  __p = 0;
  __dst = 0;
  v82 = 0;
  sub_1007E4638(&__p, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  sub_1007E4638(&v83, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  v77 = a3;
  v84 = v83;
  if (*(v7 + 3568) == 1)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v9 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "Non-Final";
      if (!a4)
      {
        v10 = "Final";
      }

      v11 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
      *buf = 136446466;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLRS,Continuing smoothing,batchType,%{public}s,size,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ED1C(buf);
      v12 = "Non-Final";
      if (!a4)
      {
        v12 = "Final";
      }

LABEL_117:
      v66 = (a3[1] - *a3) >> 4;
      v86 = 136446466;
      *v87 = v12;
      *&v87[8] = 2048;
      *&v87[10] = 0x6DB6DB6DB6DB6DB7 * v66;
      v67 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v67);
      if (v67 != buf)
      {
        free(v67);
      }
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v13 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "Non-Final";
      if (!a4)
      {
        v14 = "Final";
      }

      v15 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
      *buf = 136446466;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "CLRS,Starting smoothing,batchType,%{public}s,size,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ED1C(buf);
      v12 = "Non-Final";
      if (!a4)
      {
        v12 = "Final";
      }

      goto LABEL_117;
    }
  }

  v16 = *a3;
  v17 = a3[1];
  if (*a3 != v17)
  {
    v18 = (v7 + 3456);
    v19 = *(v7 + 3568);
    do
    {
      if (v19)
      {
        v20 = vabdd_f64(*v16, *v18);
        if (v20 > 20.0)
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v21 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *v16;
            *buf = 134349312;
            *&buf[4] = v22;
            *&buf[12] = 2050;
            *&buf[14] = v20;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "CLRS,gap found,time,%{public}.1lf,gap duration,%{public}.1lf", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10193ED1C(buf);
            v48 = *v16;
            v86 = 134349312;
            *v87 = v48;
            *&v87[8] = 2050;
            *&v87[10] = v20;
            v49 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v49);
            if (v49 != buf)
            {
              free(v49);
            }
          }

          swan::RouteSmoother::Finish();
          sub_1007EDAC8(&__p, __dst, v83, v84, 0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 4));
          v84 = v83;
          sub_1007E3E24(a1);
        }
      }

      else
      {
        *(v7 + 3616) = sub_1000081AC();
        sub_1007E3E24(a1);
      }

      v78 = sub_1007E44A4((a1 + 48));
      *buf = &v78;
      v23 = sub_1007EE8E0(a1 + 113944, &v78);
      if (*(v7 + 3677))
      {
        v24 = (a1 + 114270);
      }

      else
      {
        v24 = (v16 + 13);
      }

      *buf = v24;
      v79 = sub_1007EF200((v23 + 5), v24)[5];
      v25 = *(a1 + 48);
      if (v25 == 6 || v25 == 519150 || v25 == 19150)
      {
        v26 = *(v16 + 8);
        v27 = *&v26 <= -1 || ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v28 = v27 && (*&v26 - 1) >= 0xFFFFFFFFFFFFFLL;
        if (!v28 || (*&v26 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v30 = v16[9];
          v31 = (v30 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          if ((v30 - 1) < 0xFFFFFFFFFFFFFLL)
          {
            v31 = 1;
          }

          v33 = ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v30 >= 0 || v31;
          if (v26 > 6.7056 && v33 && v26 - *(v16 + 9) > 5.7056 && *(v16 + 104) != 4)
          {
            if (qword_1025D4690 != -1)
            {
              sub_10193EC08();
            }

            v34 = qword_1025D4698;
            if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
            {
              v35 = *(v16 + 8);
              v36 = *(v16 + 9);
              *buf = 134350080;
              *&buf[4] = v35;
              *&buf[12] = 2050;
              *&buf[14] = v36;
              *&buf[22] = 2050;
              *&buf[24] = v35 - v36;
              *&buf[32] = 2050;
              *&buf[34] = 0x4024000000000000;
              *&buf[42] = 2050;
              *&buf[44] = 0x4034000000000000;
              _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CLRS,HIGH_SPEED_TRIGGERED,speed,%{public}.2f,speedUnc,%{public}.2f,speed-speedUnc,%{public}.2f,processNoise,%{public}.2f,courseUnc,%{public}.2f", buf, 0x34u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10193ED1C(buf);
              v50 = *(v16 + 8);
              v51 = *(v16 + 9);
              v86 = 134350080;
              *v87 = v50;
              *&v87[8] = 2050;
              *&v87[10] = v51;
              *&v87[18] = 2050;
              *&v87[20] = v50 - v51;
              *&v87[28] = 2050;
              *&v87[30] = 0x4024000000000000;
              *&v87[38] = 2050;
              *&v87[40] = 0x4034000000000000;
              v52 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v52);
              if (v52 != buf)
              {
                free(v52);
              }
            }

            v79 = 0x4024000000000000;
            v16[7] = 0x4034000000000000;
          }
        }
      }

      v37 = swan::RouteSmoother::Update();
      if (*(v7 + 3568) == 1)
      {
        v38 = *v16;
        v39 = *(v16 + 2);
        *(v7 + 3472) = *(v16 + 1);
        *(v7 + 3488) = v39;
        *v18 = v38;
        v40 = *(v16 + 3);
        v41 = *(v16 + 4);
        v42 = *(v16 + 5);
        *(v7 + 3545) = *(v16 + 89);
        *(v7 + 3520) = v41;
        *(v7 + 3536) = v42;
        *(v7 + 3504) = v40;
        if (v37)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v43 = *v16;
        v44 = *(v16 + 2);
        *(v7 + 3472) = *(v16 + 1);
        *(v7 + 3488) = v44;
        *v18 = v43;
        v45 = *(v16 + 3);
        v46 = *(v16 + 4);
        v47 = *(v16 + 6);
        *(v7 + 3536) = *(v16 + 5);
        *(v7 + 3552) = v47;
        *(v7 + 3504) = v45;
        *(v7 + 3520) = v46;
        *(v7 + 3568) = 1;
        if (v37)
        {
LABEL_83:
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v55 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_ERROR, "CLRS,smoother is unhealthy", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            LOWORD(v86) = 0;
            v68 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v68);
            if (v68 != buf)
            {
              goto LABEL_129;
            }
          }

          goto LABEL_95;
        }
      }

      v16 += 14;
      v19 = 1;
    }

    while (v16 != v17);
  }

  if (a4 || !swan::RouteSmoother::Finish())
  {
    sub_1007EDAC8(&__p, __dst, v83, v84, 0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 4));
    v84 = v83;
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v53 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v7 + 3636) == 1)
      {
        v54 = *(v7 + 3632);
      }

      else
      {
        v54 = -1;
      }

      v59 = *v77;
      v58 = v77[1];
      v60 = 0.0;
      v62 = __p;
      v61 = __dst;
      if (v8 >= 0.0)
      {
        v60 = vabdd_f64(sub_1000081AC(), v8) * 1000.0;
      }

      *buf = 67241218;
      *&buf[4] = v54;
      *&buf[8] = 2050;
      *&buf[10] = 0x6DB6DB6DB6DB6DB7 * ((v58 - v59) >> 4);
      v63 = "Final";
      *&buf[18] = 2050;
      *&buf[20] = 0x6DB6DB6DB6DB6DB7 * ((v61 - v62) >> 4);
      if (a4)
      {
        v63 = "Non-Final";
      }

      *&buf[28] = 2082;
      *&buf[30] = v63;
      *&buf[38] = 2050;
      *&buf[40] = v60;
      _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "CLRS,runSmoother,completed smoothing batch number,%{public}d,dataCountIn,%{public}zu,dataCountOut,%{public}zu,batchType,%{public}s,batchElapsedTime,%{public}.0lf,msec", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      if (*(v7 + 3636) == 1)
      {
        v65 = *(v7 + 3632);
      }

      else
      {
        v65 = -1;
      }

      v70 = *v77;
      v69 = v77[1];
      v71 = 0.0;
      v73 = __p;
      v72 = __dst;
      if (v8 >= 0.0)
      {
        v71 = vabdd_f64(sub_1000081AC(), v8) * 1000.0;
      }

      v86 = 67241218;
      *v87 = v65;
      *&v87[4] = 2050;
      *&v87[6] = 0x6DB6DB6DB6DB6DB7 * ((v69 - v70) >> 4);
      v74 = "Final";
      *&v87[14] = 2050;
      *&v87[16] = 0x6DB6DB6DB6DB6DB7 * ((v72 - v73) >> 4);
      if (a4)
      {
        v74 = "Non-Final";
      }

      *&v87[24] = 2082;
      *&v87[26] = v74;
      *&v87[34] = 2050;
      *&v87[36] = v71;
      v75 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v75);
      if (v75 != buf)
      {
        free(v75);
      }
    }

    if (&__p != v77)
    {
      sub_1007EDDB0(v77, __p, __dst, 0x6DB6DB6DB6DB6DB7 * ((__dst - __p) >> 4));
    }

    v57 = 0;
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v56 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_ERROR, "CLRS,smoother is unhealthy,could not finish", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(buf);
      LOWORD(v86) = 0;
      v68 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v68);
      if (v68 != buf)
      {
LABEL_129:
        free(v68);
      }
    }

LABEL_95:
    sub_1016B1A70(*(a1 + 40), "routesmoother", "smoother_failure", 0);
    v57 = 3;
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  return v57;
}

void sub_1007E35AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1007E3624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = @"fWorkoutActivity";
  v10[0] = [NSNumber numberWithUnsignedInt:*(v2 + 48)];
  v9[1] = @"outputDataCount";
  v10[1] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 4)];
  v9[2] = @"processingTimeMsec";
  v10[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v9[3] = @"numEpochsInBatch";
  v10[3] = [NSNumber numberWithUnsignedLong:*(a1 + 56)];
  v9[4] = @"smootherErrorCode";
  v10[4] = [NSNumber numberWithLong:*(a1 + 64)];
  v9[5] = @"fShouldReconstructEntireRoute";
  v10[5] = [NSNumber numberWithBool:*(v2 + 53)];
  v9[6] = @"fNetworkAccessAllowed";
  v10[6] = [NSNumber numberWithBool:*(v2 + 54)];
  v9[7] = @"numReconstructionIntervals";
  v10[7] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - *(v2 + 56)) >> 3)];
  v9[8] = @"numBackgroundIOSamplesForFirstReconstructionInterval";
  v3 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v3) >> 3)) < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(v3 + 8) count];
  }

  v10[8] = [NSNumber numberWithUnsignedInteger:v4];
  v9[9] = @"numLocationSamplesForFirstReconstructionInterval";
  v5 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v5) >> 3)) < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*v5 count];
  }

  v10[9] = [NSNumber numberWithUnsignedInteger:v6];
  v9[10] = @"batchNumber";
  if (*(v2 + 114228) == 1)
  {
    v7 = *(v2 + 114224);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v10[10] = [NSNumber numberWithInt:v7];
  v9[11] = @"batchType";
  v10[11] = [NSNumber numberWithInt:*(a1 + 72)];
  v9[12] = @"isWatch";
  v10[12] = [NSNumber numberWithBool:*(v2 + 52)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:13];
}

void sub_1007E38BC(uint64_t **a1, size_t *a2)
{
  a2[1] = *a2;
  sub_1007E7354(a2, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = v4[1];
      v8 = v4[2];
      v7 = v4[3];
      v10 = v4[8];
      v9 = v4[9];
      v11 = v4[6];
      v29 = v4[7];
      v30 = *v4;
      v12 = v4[4];
      v13 = v4[5];
      v14 = *(v4 + 104);
      if (v14 < 7 && ((0x5Fu >> v14) & 1) != 0)
      {
        v15 = dword_101CA7A60[v14];
      }

      else
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v16 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "CLRS,Unhandled signal environment type", buf, 2u);
        }

        v15 = 0;
        if (sub_10000A100(121, 0))
        {
          sub_10193F290(&v31, v32);
          v15 = 0;
        }
      }

      v17 = a2[1];
      v18 = a2[2];
      if (v17 >= v18)
      {
        v20 = 0x6F96F96F96F96F97 * ((v17 - *a2) >> 2);
        v21 = v20 + 1;
        if ((v20 + 1) > 0x1A41A41A41A41A4)
        {
          sub_10028C64C();
        }

        v22 = 0x6F96F96F96F96F97 * ((v18 - *a2) >> 2);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0xD20D20D20D20D2)
        {
          v23 = 0x1A41A41A41A41A4;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          sub_100238948(a2, v23);
        }

        v24 = 156 * v20;
        *(v24 + 4) = v6;
        *(v24 + 12) = v8;
        *(v24 + 20) = v7;
        *(v24 + 28) = v12;
        *(v24 + 36) = v13;
        *(v24 + 44) = v10;
        *(v24 + 52) = v9;
        *(v24 + 60) = v11;
        *(v24 + 68) = v29;
        *(v24 + 140) = v15;
        v19 = 156 * v20 + 156;
        v25 = *a2;
        v26 = a2[1] - *a2;
        *(v24 + 76) = v30;
        v27 = v24 - v26;
        memcpy((v24 - v26), v25, v26);
        v28 = *a2;
        *a2 = v27;
        a2[1] = v19;
        a2[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *(v17 + 4) = v6;
        *(v17 + 12) = v8;
        *(v17 + 20) = v7;
        *(v17 + 28) = v12;
        *(v17 + 36) = v13;
        *(v17 + 44) = v10;
        *(v17 + 52) = v9;
        *(v17 + 60) = v11;
        *(v17 + 68) = v29;
        *(v17 + 76) = v30;
        v19 = v17 + 156;
        *(v17 + 140) = v15;
      }

      a2[1] = v19;
      v4 += 14;
    }

    while (v4 != v5);
  }
}

NSDictionary *sub_1007E3B6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = @"fWorkoutActivity";
  v10[0] = [NSNumber numberWithUnsignedInt:*(v2 + 48)];
  v9[1] = @"outputDataCount";
  v10[1] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 4)];
  v9[2] = @"processingTimeBatchMsec";
  v10[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v9[3] = @"processingTimeCumulativeMsec";
  v10[3] = [NSNumber numberWithInt:*(a1 + 56)];
  v9[4] = @"numEpochsInBatch";
  v10[4] = [NSNumber numberWithUnsignedLong:*(a1 + 64)];
  v9[5] = @"smootherErrorCode";
  v10[5] = [NSNumber numberWithLong:*(a1 + 72)];
  v9[6] = @"fShouldReconstructEntireRoute";
  v10[6] = [NSNumber numberWithBool:*(v2 + 53)];
  v9[7] = @"fNetworkAccessAllowed";
  v10[7] = [NSNumber numberWithBool:*(v2 + 54)];
  v9[8] = @"numReconstructionIntervals";
  v10[8] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - *(v2 + 56)) >> 3)];
  v9[9] = @"numBackgroundIOSamplesForFirstReconstructionInterval";
  v3 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v3) >> 3)) < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(v3 + 8) count];
  }

  v10[9] = [NSNumber numberWithUnsignedInteger:v4];
  v9[10] = @"numLocationSamplesForFirstReconstructionInterval";
  v5 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v5) >> 3)) < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*v5 count];
  }

  v10[10] = [NSNumber numberWithUnsignedInteger:v6];
  v9[11] = @"batchNumber";
  if (*(v2 + 114228) == 1)
  {
    v7 = *(v2 + 114224);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v10[11] = [NSNumber numberWithInt:v7];
  v9[12] = @"batchType";
  v10[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v9[13] = @"isWatch";
  v10[13] = [NSNumber numberWithBool:*(v2 + 52)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:14];
}

uint64_t sub_1007E3E24(uint64_t a1)
{
  v30 = xmmword_101CA7480;
  v31 = unk_101CA7490;
  v32 = xmmword_101CA74A0;
  *buf = xmmword_101CA7440;
  v27 = unk_101CA7450;
  v28 = xmmword_101CA7460;
  v29 = unk_101CA7470;
  sub_1007EEC80(&v24, buf, 7);
  v30 = xmmword_101CA74F0;
  v31 = unk_101CA7500;
  v32 = xmmword_101CA7510;
  *buf = xmmword_101CA74B0;
  v27 = unk_101CA74C0;
  v28 = xmmword_101CA74D0;
  v29 = unk_101CA74E0;
  sub_1007EEC80(&v22, buf, 7);
  v30 = xmmword_101CA7560;
  v31 = unk_101CA7570;
  v32 = xmmword_101CA7580;
  *buf = xmmword_101CA7520;
  v27 = unk_101CA7530;
  v28 = xmmword_101CA7540;
  v29 = unk_101CA7550;
  sub_1007EEC80(&v20, buf, 7);
  v30 = xmmword_101CA75D0;
  v31 = unk_101CA75E0;
  v32 = xmmword_101CA75F0;
  *buf = xmmword_101CA7590;
  v27 = unk_101CA75A0;
  v28 = xmmword_101CA75B0;
  v29 = unk_101CA75C0;
  sub_1007EEC80(&v18, buf, 7);
  LOBYTE(v16[0]) = 1;
  *buf = v16;
  v2 = (sub_1007EE8E0(a1 + 113944, v16) + 5);
  if (v2 != &v24)
  {
    sub_1007EED00(v2, v24, &v25);
  }

  LOBYTE(v16[0]) = 2;
  *buf = v16;
  v3 = (sub_1007EE8E0(a1 + 113944, v16) + 5);
  if (v3 != &v22)
  {
    sub_1007EED00(v3, v22, &v23);
  }

  LOBYTE(v16[0]) = 3;
  *buf = v16;
  v4 = (sub_1007EE8E0(a1 + 113944, v16) + 5);
  if (v4 != &v20)
  {
    sub_1007EED00(v4, v20, &v21);
  }

  LOBYTE(v16[0]) = 6;
  *buf = v16;
  v5 = (sub_1007EE8E0(a1 + 113944, v16) + 5);
  if (v5 != &v18)
  {
    sub_1007EED00(v5, v18, &v19);
  }

  *buf = xmmword_101CA775C;
  v27 = unk_101CA776C;
  v28 = xmmword_101CA777C;
  *&v29 = 0xA00000006;
  sub_1007EE9C0(v17, buf, 7);
  *buf = xmmword_101CA7600;
  v27 = unk_101CA7610;
  v28 = xmmword_101CA7620;
  *&v29 = 0xA00000006;
  sub_1007EE9C0(v16, buf, 7);
  *buf = xmmword_101CA7600;
  v27 = unk_101CA7610;
  v28 = xmmword_101CA7620;
  *&v29 = 0xA00000006;
  sub_1007EE9C0(v15, buf, 7);
  *buf = xmmword_101CA7638;
  v27 = unk_101CA7648;
  v28 = xmmword_101CA7658;
  *&v29 = 0x3200000006;
  sub_1007EE9C0(v14, buf, 7);
  *buf = xmmword_101CA7670;
  v27 = unk_101CA7680;
  v28 = xmmword_101CA7690;
  *&v29 = 0xA00000006;
  sub_1007EE9C0(v13, buf, 7);
  v6 = sub_1007E44A4((a1 + 48));
  v7 = (a1 + 113896);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v8 = v16;
      if (v7 == v16)
      {
        goto LABEL_25;
      }

      v9 = v16;
      goto LABEL_24;
    }

    if (v6 == 2)
    {
      v8 = v15;
      if (v7 == v15)
      {
        goto LABEL_25;
      }

      v9 = v15;
      goto LABEL_24;
    }

LABEL_18:
    v8 = v17;
    if (v7 == v17)
    {
      goto LABEL_25;
    }

    v9 = v17;
    goto LABEL_24;
  }

  if (v6 != 3)
  {
    if (v6 == 6)
    {
      v8 = v13;
      if (v7 == v13)
      {
        goto LABEL_25;
      }

      v9 = v13;
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v8 = v14;
  if (v7 == v14)
  {
    goto LABEL_25;
  }

  v9 = v14;
LABEL_24:
  sub_1007EEF80(v7, *v8, v9 + 1);
LABEL_25:
  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v10 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CLRS,Configure or reconfigure RouteSmoother", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193ED1C(buf);
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::configureSmoother()", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  swan::RouteSmoother::Reset((a1 + 80));
  swan::RouteSmoother::Configure();
  sub_1003C93BC(v13, v13[1]);
  sub_1003C93BC(v14, v14[1]);
  sub_1003C93BC(v15, v15[1]);
  sub_1003C93BC(v16, v16[1]);
  sub_1003C93BC(v17, v17[1]);
  sub_1003C93BC(&v18, v19);
  sub_1003C93BC(&v20, v21);
  sub_1003C93BC(&v22, v23);
  sub_1003C93BC(&v24, v25);
  return 1;
}

void sub_1007E43D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, void *a31, uint64_t a32, char a33, void *a34, uint64_t a35, char a36, void *a37, uint64_t a38, char a39, void *a40, uint64_t a41, char a42, void *a43)
{
  sub_1003C93BC(&a18, a19);
  sub_1003C93BC(&a21, a22);
  sub_1003C93BC(&a24, a25);
  sub_1003C93BC(&a27, a28);
  sub_1003C93BC(&a30, a31);
  sub_1003C93BC(&a33, a34);
  sub_1003C93BC(&a36, a37);
  sub_1003C93BC(&a39, a40);
  sub_1003C93BC(&a42, a43);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E44A4(int *a1)
{
  v2 = *a1;
  result = 1;
  if (v2 <= 15254)
  {
    if (v2 > 7)
    {
      if (v2 == 8)
      {
        return 2;
      }

      if (v2 == 62)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == 4)
      {
        return result;
      }

      if (v2 == 6)
      {
        return 3;
      }
    }
  }

  else if (v2 <= 19149)
  {
    if (v2 == 15255)
    {
      return result;
    }

    if (v2 == 18240)
    {
      return 4;
    }
  }

  else
  {
    switch(v2)
    {
      case 19150:
        return 6;
      case 90603:
        return 7;
      case 519150:
        return 6;
    }
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v4 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLRS,Unhandled CLMotionActivity workout type,%{public}d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193F3AC(a1);
    return 0;
  }

  return result;
}

void *sub_1007E4638(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      sub_1007ED850(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

id sub_1007E4704(void *a1, void *a2, size_t *a3, int a4)
{
  v6 = a1;
  a3[1] = *a3;
  sub_1007E4638(a3, [a1 count]);
  v74 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  result = [v6 countByEnumeratingWithState:&v70 objects:v90 count:16];
  v8 = result;
  if (result)
  {
    v9 = *v71;
    __asm { FMOV            V0.2D, #-1.0 }

    v67 = _Q0;
    v66 = v6;
    do
    {
      v15 = 0;
      do
      {
        if (*v71 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v16 = *(*(&v70 + 1) + 8 * v15);
        if (([v16 type] == 1 || objc_msgSend(v16, "type") == 9 || objc_msgSend(v16, "type") == 3 || objc_msgSend(v16, "type") == 11 || a4 && !objc_msgSend(v16, "type")) && (objc_msgSend(v16, "horizontalAccuracy"), v17 <= 50.0))
        {
          [objc_msgSend(v16 "timestamp")];
          v25 = v24;
          [v16 coordinate];
          v69 = v26;
          [v16 coordinate];
          v68 = v27;
          [v16 altitude];
          v29 = v28;
          [v16 speed];
          v31 = v30;
          [v16 course];
          v33 = v32;
          [v16 courseAccuracy];
          v35 = v34;
          [v16 verticalAccuracy];
          v36 = 0x40B3880000000000;
          if (v37 > 0.0)
          {
            [v16 verticalAccuracy];
            v36 = v38;
          }

          [v16 horizontalAccuracy];
          v40 = v39;
          [v16 speedAccuracy];
          v42 = v41;
          *buf = [v16 signalEnvironmentType];
          v43 = sub_1007E727C(buf);
          if (sub_1007E5E50(a2, &v74, v25))
          {
            if (qword_1025D4690 != -1)
            {
              sub_10193EC08();
            }

            v44 = qword_1025D4698;
            if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
            {
              v45 = *(*a2 + 16 * v74);
              v47 = *(v45 + 8);
              v46 = *(v45 + 16);
              *buf = 134219008;
              *&buf[4] = v25;
              *&buf[12] = 2048;
              *&buf[14] = v29;
              v84 = 2048;
              v85 = v47;
              v86 = 2048;
              v87 = v36;
              v88 = 2048;
              v89 = v46;
              _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "CLRS,reconstructInterval,timestamp,%.3f,oldAltitude,%.2f,newAltitude,%.2f,oldUncertainty,%.2f,newUncertainty,%.2f", buf, 0x34u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4690 != -1)
              {
                sub_10193EC08();
              }

              v48 = v74;
              v61 = *(*a2 + 16 * v74);
              v63 = *(v61 + 8);
              v62 = *(v61 + 16);
              v75 = 134219008;
              *v76 = v25;
              *&v76[8] = 2048;
              *&v76[10] = v29;
              v77 = 2048;
              v78 = v63;
              v79 = 2048;
              v80 = v36;
              v81 = 2048;
              v82 = v62;
              v64 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void ConvertCLLocationArrayToRouteSmootherEpochVector(NSArray<CLLocation *> *, std::vector<AltitudeSamplePtr> &, std::vector<swan::RouteSmootherEpoch> &, BOOL)", "%s\n", v64);
              if (v64 != buf)
              {
                free(v64);
              }
            }

            else
            {
              v48 = v74;
            }

            v49 = *(*a2 + 16 * v48);
            v29 = *(v49 + 8);
            v36 = *(v49 + 16);
          }

          v50 = a3[1];
          v51 = a3[2];
          if (v50 >= v51)
          {
            v53 = 0x6DB6DB6DB6DB6DB7 * ((v50 - *a3) >> 4);
            v54 = v53 + 1;
            if ((v53 + 1) > 0x249249249249249)
            {
              sub_10028C64C();
            }

            v55 = 0x6DB6DB6DB6DB6DB7 * ((v51 - *a3) >> 4);
            if (2 * v55 > v54)
            {
              v54 = 2 * v55;
            }

            if (v55 >= 0x124924924924924)
            {
              v56 = 0x249249249249249;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              sub_1007ED850(a3, v56);
            }

            v57 = 112 * v53;
            *v57 = v25;
            *(v57 + 8) = v69;
            *(v57 + 16) = v68;
            *(v57 + 24) = v40;
            *(v57 + 32) = v29;
            *(v57 + 40) = v36;
            *(v57 + 48) = v33;
            *(v57 + 56) = v35;
            *(v57 + 64) = v31;
            *(v57 + 72) = v42;
            *(v57 + 80) = v67;
            *(v57 + 96) = 0xBFF0000000000000;
            *(v57 + 104) = v43;
            *(v57 + 105) = *buf;
            *(v57 + 108) = *&buf[3];
            v52 = 112 * v53 + 112;
            v58 = a3[1] - *a3;
            v59 = 112 * v53 - v58;
            memcpy((v57 - v58), *a3, v58);
            v60 = *a3;
            *a3 = v59;
            a3[1] = v52;
            a3[2] = 0;
            if (v60)
            {
              operator delete(v60);
            }

            v6 = v66;
          }

          else
          {
            *v50 = v25;
            *(v50 + 8) = v69;
            *(v50 + 16) = v68;
            *(v50 + 24) = v40;
            *(v50 + 32) = v29;
            *(v50 + 40) = v36;
            *(v50 + 48) = v33;
            *(v50 + 56) = v35;
            *(v50 + 64) = v31;
            *(v50 + 72) = v42;
            *(v50 + 80) = v67;
            *(v50 + 104) = v43;
            *(v50 + 105) = *buf;
            *(v50 + 108) = *&buf[3];
            v52 = v50 + 112;
            *(v50 + 96) = 0xBFF0000000000000;
          }

          a3[1] = v52;
        }

        else
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v18 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v16 type];
            [v16 horizontalAccuracy];
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 2048;
            *&buf[10] = v20;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructInterval,unhandled location,type,%d,unc,%.1lf", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4690 != -1)
            {
              sub_10193EC08();
            }

            v21 = [v16 type];
            [v16 horizontalAccuracy];
            v75 = 67109376;
            *v76 = v21;
            *&v76[4] = 2048;
            *&v76[6] = v22;
            v23 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void ConvertCLLocationArrayToRouteSmootherEpochVector(NSArray<CLLocation *> *, std::vector<AltitudeSamplePtr> &, std::vector<swan::RouteSmootherEpoch> &, BOOL)", "%s\n", v23);
            if (v23 != buf)
            {
              free(v23);
            }
          }
        }

        v15 = v15 + 1;
      }

      while (v8 != v15);
      result = [v6 countByEnumeratingWithState:&v70 objects:v90 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

void sub_1007E4E10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v5 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(a2 + 24) - *(a2 + 16)) >> 4;
    buf = 134217984;
    buf_4 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,interpolateRouteAltitudes,altitudeSamples,count,%lu", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193F4A0(a2);
  }

  sub_1004C9BF4(a3);
  sub_10028FE90(a3, [*a2 count]);
  if (*(a2 + 24) - *(a2 + 16) >= 0x11uLL && [*a2 count])
  {
    if ([*a2 count])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = [*a2 objectAtIndexedSubscript:v7];
        v10 = v8;
        v11 = *(a2 + 16);
        if (v8 < ((*(a2 + 24) - v11) >> 4))
        {
          v12 = v9;
          v13 = 16 * v8;
          do
          {
            v14 = **(v11 + v13 - 16);
            [objc_msgSend(v12 "timestamp")];
            if (v14 > v15)
            {
              break;
            }

            v16 = **(*(a2 + 16) + v13 - 16);
            [objc_msgSend(v12 "timestamp")];
            if (v16 >= v17)
            {
              v11 = *(a2 + 16);
            }

            else
            {
              [objc_msgSend(v12 "timestamp")];
              v11 = *(a2 + 16);
              if (v18 < **(v11 + v13))
              {
                [objc_msgSend(v12 "timestamp")];
                operator new();
              }
            }

            ++v10;
            v13 += 16;
          }

          while (v10 < (*(a2 + 24) - v11) >> 4);
          v8 = v10;
        }

        ++v7;
      }

      while ([*a2 count] > v7);
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v19 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      v22 = [*a2 count];
      buf = 134218240;
      buf_4 = (v20 - v21) >> 4;
      v26 = 2048;
      v27 = v22;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLRS,interpolateRouteAltitudes,not enough altitudes or locations,altitudeSamples.count,%lu,locationEpochs.size,%lu", &buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      [*a2 count];
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::interpolateRouteAltitudes(ReconstructionIntervalData &, std::vector<AltitudeSamplePtr> &)", "%s\n", v23);
      if (v23 != &buf)
      {
        free(v23);
      }
    }
  }
}

void sub_1007E52A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E52C8(void *a1, void *a2)
{
  if (a2 && [objc_msgSend(a2 "tripLocations")])
  {
    if (*(*(a1[4] + 8) + 24) == 1)
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EB08();
      }

      v4 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLRS,output received after timeout", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193F780();
      }
    }

    else
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EB08();
      }

      v6 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [objc_msgSend(objc_msgSend(a2 "tripSegmentID")];
        [a2 distance_m];
        v9 = v8;
        [a2 distanceUnc_m];
        v11 = v10;
        [objc_msgSend(a2 "startDate")];
        v13 = v12;
        [objc_msgSend(a2 "endDate")];
        *buf = 136447746;
        *&buf[4] = v7;
        v100 = 2050;
        v101 = v9;
        v102 = 2050;
        v103 = v11;
        v104 = 2050;
        v105 = v13;
        v106 = 2050;
        v107 = v14;
        v108 = 1026;
        v109 = [a2 modeOfTransport];
        v110 = 1026;
        v111 = [objc_msgSend(a2 "tripLocations")];
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLRS,Received trip output Data,ID,%{public}s,distance,%{public}.2lf,distance unc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locations,%{public}d", buf, 0x40u);
      }

      v15 = sub_10000A100(121, 2);
      if (v15)
      {
        sub_10193F5B0(a2);
      }

      v79 = 0;
      v80 = 0;
      v81 = 0;
      sub_1007E4E10(v15, a1[6], &v79);
      if (v79 == v80)
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v16 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
        {
          [objc_msgSend(a2 "startDate")];
          v18 = v17;
          [objc_msgSend(a2 "endDate")];
          *buf = 134218240;
          *&buf[4] = v18;
          v100 = 2048;
          v101 = v19;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "CLRS,empty interpolated altitude vector,startTime,%.3lf,endTime,%.3lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193ED1C(buf);
          [objc_msgSend(a2 "startDate")];
          v69 = v68;
          [objc_msgSend(a2 "endDate")];
          *v92 = 134218240;
          *&v92[4] = v69;
          *&v92[12] = 2048;
          *&v92[14] = v70;
          v71 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)_block_invoke", "%s\n", v71);
          if (v71 != buf)
          {
            free(v71);
          }
        }
      }

      *(a1[7] + 8) = *a1[7];
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v20 = [a2 tripLocations];
      v21 = [v20 countByEnumeratingWithState:&v75 objects:v98 count:16];
      if (v21)
      {
        v22 = 0;
        v23 = *v76;
        __asm { FMOV            V0.2D, #-1.0 }

        v73 = _Q0;
        v72 = v20;
        do
        {
          v29 = 0;
          do
          {
            if (*v76 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v30 = *(*(&v75 + 1) + 8 * v29);
            *v92 = xmmword_101CA73A0;
            *&v92[16] = xmmword_101CA73B0;
            *&v93 = 0x7FF8000000000000;
            v94 = v73;
            v95 = v73;
            v96 = v73;
            *&v97 = 0xBFF0000000000000;
            BYTE8(v97) = 0;
            [v30 altitudeAccuracy];
            v31 = 0x40B3880000000000;
            if (v32 > 0.0)
            {
              [v30 altitudeAccuracy];
              v31 = v33;
            }

            *(&v93 + 1) = v31;
            v34 = a1[6];
            if (*(v34 + 41) == 1)
            {
              v74 = 0;
              v35 = *v92;
              while (v22 < [*v34 count])
              {
                [objc_msgSend(objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "timestamp"), "timeIntervalSinceReferenceDate"}];
                v37 = v35 - v36;
                if (v37 <= 0.5)
                {
                  if (fabs(v37) <= 0.5)
                  {
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "speed"}];
                    *&v95 = v40;
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "speedAccuracy"}];
                    *(&v95 + 1) = v41;
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "courseAccuracy"}];
                    *(&v94 + 1) = v42;
                  }

                  if (sub_1007E5E50(&v79, &v74, v35))
                  {
                    if (qword_1025D4690 != -1)
                    {
                      sub_10193EC08();
                    }

                    v43 = qword_1025D4698;
                    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
                    {
                      v44 = *(v79 + 16 * v74);
                      v46 = *(v44 + 8);
                      v45 = *(v44 + 16);
                      *buf = 134219008;
                      *&buf[4] = v35;
                      v100 = 2048;
                      v101 = v93;
                      v102 = 2048;
                      v103 = v46;
                      v104 = 2048;
                      v105 = v31;
                      v106 = 2048;
                      v107 = v45;
                      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "CLRS,TripSegmentProcessor,timestamp,%.3f,oldAltitude,%.2f,newAltitude,%.2f,oldUncertainty,%.2f,newUncertainty,%.2f", buf, 0x34u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_10193ED1C(buf);
                      v47 = v74;
                      v63 = *(v79 + 16 * v74);
                      v65 = *(v63 + 8);
                      v64 = *(v63 + 16);
                      v82 = 134219008;
                      v83 = v35;
                      v84 = 2048;
                      v85 = v93;
                      v86 = 2048;
                      v87 = v65;
                      v88 = 2048;
                      v89 = v31;
                      v90 = 2048;
                      v91 = v64;
                      v66 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)_block_invoke", "%s\n", v66);
                      if (v66 != buf)
                      {
                        free(v66);
                      }
                    }

                    else
                    {
                      v47 = v74;
                    }

                    v48 = *(v79 + 16 * v47);
                    *&v93 = *(v48 + 8);
                    v49 = *(v48 + 16);
                  }

                  else
                  {
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "altitude"}];
                    *&v93 = v50;
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "verticalAccuracy"}];
                  }

                  *(&v93 + 1) = v49;
                  goto LABEL_59;
                }

                ++v22;
                v34 = a1[6];
              }

              if (qword_1025D4690 != -1)
              {
                sub_10193EC08();
              }

              v38 = qword_1025D4698;
              if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "CLRS,Reconstructed location speed, speedUnc, and courseUnc, not overwritten with input data", buf, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10193ED1C(buf);
                LOWORD(v82) = 0;
                v39 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)_block_invoke", "%s\n", v39);
                if (v39 != buf)
                {
                  free(v39);
                }
              }
            }

LABEL_59:
            v51 = a1[7];
            v52 = *(v51 + 8);
            v53 = *(v51 + 16);
            if (v52 >= v53)
            {
              v55 = 0x6DB6DB6DB6DB6DB7 * ((v52 - *v51) >> 4);
              v56 = v55 + 1;
              if ((v55 + 1) > 0x249249249249249)
              {
                sub_10028C64C();
              }

              v57 = 0x6DB6DB6DB6DB6DB7 * ((v53 - *v51) >> 4);
              if (2 * v57 > v56)
              {
                v56 = 2 * v57;
              }

              if (v57 >= 0x124924924924924)
              {
                v58 = 0x249249249249249;
              }

              else
              {
                v58 = v56;
              }

              if (v58)
              {
                sub_1007ED850(a1[7], v58);
              }

              v59 = 112 * v55;
              *(v59 + 48) = v94;
              *(v59 + 64) = v95;
              *(v59 + 80) = v96;
              *(v59 + 96) = v97;
              *v59 = *v92;
              *(v59 + 16) = *&v92[16];
              *(v59 + 32) = v93;
              v54 = 112 * v55 + 112;
              v60 = *(v51 + 8) - *v51;
              v61 = 112 * v55 - v60;
              memcpy((v59 - v60), *v51, v60);
              v62 = *v51;
              *v51 = v61;
              *(v51 + 8) = v54;
              *(v51 + 16) = 0;
              if (v62)
              {
                operator delete(v62);
              }

              v20 = v72;
            }

            else
            {
              v52[3] = v94;
              v52[4] = v95;
              v52[5] = v96;
              v52[6] = v97;
              *v52 = *v92;
              v52[1] = *&v92[16];
              v52[2] = v93;
              v54 = (v52 + 7);
            }

            *(v51 + 8) = v54;
            v29 = v29 + 1;
          }

          while (v29 != v21);
          v67 = [v20 countByEnumeratingWithState:&v75 objects:v98 count:16];
          v21 = v67;
        }

        while (v67);
      }

      *buf = &v79;
      sub_1004CA974(buf);
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v5 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,Received trip output Data,nil", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193F86C();
    }
  }
}

void sub_1007E5D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  STACK[0x200] = &a32;
  sub_1004CA974(&STACK[0x200]);
  _Unwind_Resume(a1);
}

double sub_1007E5D80(void *a1, uint64_t a2)
{
  if (a1)
  {
    [objc_msgSend(a1 "timestamp")];
    *a2 = v4;
    [a1 latitude];
    *(a2 + 8) = v5;
    [a1 longitude];
    *(a2 + 16) = v6;
    [a1 horizontalAccuracy];
    *(a2 + 24) = v7;
    [a1 speed];
    *(a2 + 64) = v8;
    [a1 course];
    *(a2 + 48) = v9;
    [a1 altitude];
    *(a2 + 32) = v10;
    [a1 altitudeAccuracy];
    *(a2 + 40) = v11;
    [a1 speedAccuracy];
    *(a2 + 72) = v12;
    [a1 courseAccuracy];
    *(a2 + 56) = v13;
    v15 = [a1 signalEnvironmentType];
    *(a2 + 104) = sub_1007E727C(&v15);
    result = 0.0;
    *(a2 + 80) = xmmword_101CA73C0;
  }

  return result;
}

uint64_t sub_1007E5E50(void *a1, int *a2, double a3)
{
  if (*a2 < 0)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v6 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v7 = *a2;
      *buf = 134218240;
      v25 = a3;
      v26 = 1024;
      LODWORD(v27) = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLRS,findAltitudeSampleIndexAndFloorUncForTime received invalid index,desiredTime,%.3f,index,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193F958(a2, a3);
    }

    *a2 = 0;
  }

  if (*a1 == a1[1])
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v8 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v25 = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLRS,findAltitudeSampleIndexAndFloorUncForTime received empty altitude vector,desiredTime,%.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FA84(a3);
    }
  }

  v9 = (a1[1] - *a1) >> 4;
  v10 = *a2;
  if (v9 <= v10)
  {
    return 0;
  }

  v11 = (*a1 + 16 * v10);
  v12 = v10 + 1;
  while (1)
  {
    v13 = *v11;
    v14 = **v11;
    if (vabdd_f64(a3, v14) <= 0.001)
    {
      break;
    }

    if (v14 <= a3)
    {
      ++v10;
      *a2 = v12;
      v11 += 2;
      ++v12;
      if (v9 > v10)
      {
        continue;
      }
    }

    return 0;
  }

  v16 = v13[2];
  v15 = v13 + 2;
  v17 = v16;
  if (v16 <= 0.0)
  {
    return 0;
  }

  v18 = &unk_101CA7908;
  if (v17 >= 2.0)
  {
    v18 = v15;
  }

  v19 = *v18;
  *v15 = *v18;
  if (v19 != v17)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v20 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*v11 + 2);
      *buf = 134218496;
      v25 = a3;
      v26 = 2048;
      v27 = v17;
      v28 = 2048;
      v29 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLRS,findAltitudeSampleIndexAndFloorUncForTime floored vertical uncertainty,timestamp,%.3f,original,%.2f,floored,%.2f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL findAltitudeSampleIndexAndFloorUncForTime(const double, std::vector<AltitudeSamplePtr> &, int &)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  return 1;
}

void sub_1007E61EC(uint64_t a1, int *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v4 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLRS,Received completionHandler after timeout", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FD7C();
    }
  }

  else if (a2)
  {
    *(v3 + 24) = 1;
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v6 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLRS,Received error completionHandler,%@", &v10, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193FB9C(a2);
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v7 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLRS,Received completionHandler", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FC98();
    }
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    dispatch_semaphore_signal(v8);
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v9 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLRS,Received completionHandler, semaphone is NULL", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FE60();
    }
  }
}

uint64_t sub_1007E6454(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1007EE034(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a2 + 32);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = v5;
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    v8 = *(a2 + 96);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 96) = v8;
    *(v3 + 48) = v6;
    *(v3 + 64) = v7;
    v9 = *(a2 + 112);
    v10 = *(a2 + 128);
    v11 = *(a2 + 144);
    *(v3 + 156) = *(a2 + 156);
    *(v3 + 128) = v10;
    *(v3 + 144) = v11;
    *(v3 + 112) = v9;
    result = v3 + 176;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1007E64DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a5)
  {
    if (a1 >= 0.0 && *(a3 + 64) == 1)
    {
      v8 = *(a3 + 16) <= 0.0 || *a3 == 0;
      if (!v8 && sub_1007EDFF0(a3) && *(a4 + 64) == 1 && *(a4 + 16) > 0.0 && *a4 && sub_1007EDFF0(a4))
      {
        if (*(a3 + 104) <= 0.5 && *(a4 + 104) <= 0.5)
        {
          sub_10018D404(buf);
          sub_100109D18(buf, *(a3 + 24), *(a3 + 32), *(a4 + 24), *(a4 + 32), 0.0);
        }

        sub_1007EFCE4();
      }
    }

    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v9 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v11 = *(a3 + 16);
      if (*(a3 + 64) == 1 && v11 > 0.0 && *a3 != 0)
      {
        v10 = sub_1007EDFF0(a3);
      }

      v13 = 0;
      if (*(a4 + 64) == 1 && *(a4 + 16) > 0.0 && *a4)
      {
        v13 = sub_1007EDFF0(a4);
      }

      buf[0] = 134349824;
      *&buf[1] = a1;
      v18 = 2050;
      v19 = v11;
      v20 = 1026;
      v21 = v10;
      v22 = 1026;
      v23 = v13;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}.3lf,buildUserRouteSegmentUsingAstar,invalid snap data,snapTime,%{public}.3lf,startSnapValid,%{public}d,destinationSnapValid,%{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      if (*(a3 + 64) == 1 && *(a3 + 16) > 0.0 && *a3)
      {
        sub_1007EDFF0(a3);
      }

      if (*(a4 + 64) == 1 && *(a4 + 16) > 0.0 && *a4)
      {
        sub_1007EDFF0(a4);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::buildUserRouteSegmentUsingAstar(const CFAbsoluteTime, const CLGeoMapSnapData &, const CLGeoMapSnapData &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<swan::RouteSmootherEpoch> &, const double, const swan::SignalEnvironment)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v15 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLRS,buildUserRouteSegmentUsingAstar,mapGeometryRoadBuffer is nullptr", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193FF44();
    }
  }

  return 0;
}

void sub_1007E6F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    sub_100008080(a26);
  }

  a45 = &a35;
  sub_1004CA974(&a45);
  _Unwind_Resume(a1);
}

NSDictionary *sub_1007E6F98(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7[0] = @"fWorkoutActivity";
  v8[0] = [NSNumber numberWithUnsignedInt:*(v2 + 48)];
  v7[1] = @"reconstructedIntervalDurationSeconds";
  v8[1] = [NSNumber numberWithDouble:*(a1 + 48)];
  v7[2] = @"processingTimeMsec";
  v8[2] = [NSNumber numberWithInt:*(a1 + 56)];
  v7[3] = @"numLocationSamplesInput";
  v8[3] = [NSNumber numberWithUnsignedLong:*(a1 + 64)];
  v7[4] = @"numBackgroundIOSamplesInput";
  v8[4] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(a1 + 72) + 8) count]);
  v7[5] = @"numReconstructedLocationSamplesOutput";
  v8[5] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 80) + 8) - **(a1 + 80)) >> 4)];
  v7[6] = @"reconstructionYield";
  v3 = *(a1 + 48);
  v4 = 1.0;
  if (v3 > 0.0)
  {
    v4 = (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 80) + 8) - **(a1 + 80)) >> 4)) / v3;
  }

  v8[6] = [NSNumber numberWithDouble:v4];
  v7[7] = @"useTripSegmentProcessor";
  v8[7] = [NSNumber numberWithBool:*(v2 + 114288)];
  v7[8] = @"fNetworkAccessAllowed";
  v8[8] = [NSNumber numberWithBool:*(v2 + 54)];
  v7[9] = @"intervalLabel";
  v5 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v5 = *v5;
  }

  v8[9] = [NSString stringWithUTF8String:v5];
  v7[10] = @"reconstructionFailed";
  v8[10] = [NSNumber numberWithBool:*(*(*(a1 + 32) + 8) + 24)];
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:11];
}

char *sub_1007E71C4(char *result, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    return sub_100007244(result + 88, *(a2 + 88), *(a2 + 96));
  }

  v2 = *(a2 + 88);
  *(result + 13) = *(a2 + 104);
  *(result + 88) = v2;
  return result;
}

void sub_1007E71F0(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }
}

double sub_1007E7204(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 76);
  *(a2 + 8) = *(a1 + 4);
  *(a2 + 64) = *(a1 + 44);
  *(a2 + 48) = *(a1 + 60);
  *(a2 + 24) = *(a1 + 20);
  *(a2 + 40) = *(a1 + 36);
  *(a2 + 72) = *(a1 + 52);
  *(a2 + 56) = *(a1 + 68);
  *(a2 + 104) = sub_1007E727C((a1 + 140));
  result = 0.0;
  *(a2 + 80) = xmmword_101CA73C0;
  return result;
}

uint64_t sub_1007E727C(int *a1)
{
  v3 = *a1;
  if (*a1 < 7 && ((0x5Fu >> v3) & 1) != 0)
  {
    return (0x6000403020100uLL >> (8 * v3));
  }

  else
  {
    v9 = v1;
    v10 = v2;
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v5 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "CLRS,Unhandled CLClient signal environment type", v8, 2u);
    }

    v6 = sub_10000A100(121, 0);
    LOBYTE(v4) = 0;
    if (v6)
    {
      sub_101940030();
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

void *sub_1007E7354(void *result, unint64_t a2)
{
  if (0x6F96F96F96F96F97 * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1A41A41A41A41A5)
    {
      sub_100238948(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

double sub_1007E7420(uint64_t *a1, double a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = (v2 - *a1) >> 4;
  v9 = 0.0;
  do
  {
    v10 = *(v3 + v6);
    if (v10)
    {
      if (a2 != 0.0 && v7 < v8 - 1 && *(v3 + v6 + 16))
      {
        v11 = sub_1012968F4(v10, 1);
        v12 = sub_1012968F4(*(v3 + v6 + 16), 0);
        v13 = fmod(v11 + -90.0 + 90.0 - v12 + 180.0, 360.0);
        if (v13 < 0.0)
        {
          v13 = v13 + 360.0;
        }

        v14 = v13 + -360.0;
        if (v13 <= 180.0)
        {
          v14 = v13;
        }

        v15 = fabs(v14);
        v16 = 0.0;
        if (v15 > 5.0 && v15 < 180.0)
        {
          v16 = a2 / tan(v14 * 0.0174532925 * 0.5);
        }

        v9 = v9 + v16 * -2.0;
        v10 = *(v3 + v6);
      }

      v17 = *v10;
      sub_10029244C(*v10);
      v9 = v9 + *(v17 + 40);
      v3 = *a1;
      v2 = a1[1];
    }

    ++v7;
    v8 = (v2 - v3) >> 4;
    v6 += 16;
  }

  while (v7 < v8);
  return v9;
}

uint64_t sub_1007E75BC(float64x2_t *a1, uint64_t *a2, uint64_t *a3, double a4, double a5, double a6)
{
  v9 = a2[1];
  if (*a2 == v9 || a4 > 1.0 || ((v10 = *a3, v11 = a3[1], a4 >= 0.0) ? (v12 = v10 == v11) : (v12 = 1), v12))
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v92 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v93 = -1227133513 * ((a2[1] - *a2) >> 4);
      v94 = (a3[1] - *a3) >> 4;
      *buf = 67240704;
      *&buf[4] = v93;
      v121 = 1026;
      *v122 = v94;
      *&v122[4] = 2050;
      *&v122[6] = a4;
      _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_ERROR, "CLRS,snapLocationsOnRoads,invalid input,locations,%{public}d,roadVectors,%{public}d,startRoadProjection,%{public}.3lf", buf, 0x18u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v96 = -1227133513 * ((a2[1] - *a2) >> 4);
    v97 = (a3[1] - *a3) >> 4;
    LODWORD(__y) = 67240704;
    HIDWORD(__y) = v96;
    v118 = 1026;
    *v119 = v97;
    *&v119[4] = 2050;
    *&v119[6] = a4;
    v98 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v98);
LABEL_135:
    if (v98 != buf)
    {
LABEL_136:
      free(v98);
    }

    return 0;
  }

  v13 = *a2;
  if (a2[1] == *a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = (v11 - v10) >> 4;
  v16 = a5 / (0x6DB6DB6DB6DB6DB7 * ((v9 - *a2) >> 4));
  v115 = v16 / a6;
  while (2)
  {
    v17 = 0;
    v18 = (v13 + 112 * v14++);
    v19 = v16 * v14;
    v20 = a4;
    do
    {
      v21 = *a3;
      if (v19 <= 0.0)
      {
        goto LABEL_50;
      }

      v22 = *(v21 + 16 * v17);
      v24 = *v22;
      v23 = v22[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v24)
      {
        sub_10029244C(v24);
        v25 = 1.0 - v20;
        if (!*(*(*a3 + 16 * v17) + 24))
        {
          v25 = v20;
        }

        v26 = *(v24 + 40) * v25;
        if (v19 <= v26 + 0.000000001)
        {
          v29 = 0;
          v28 = 12;
          if (!v23)
          {
            continue;
          }

LABEL_31:
          sub_100008080(v23);
          continue;
        }

        v27 = v17 + 1;
        if (v27 >= v15)
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v32 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            v33 = *v18;
            *buf = 67240448;
            *&buf[4] = v15;
            v121 = 2050;
            *v122 = v33;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "CLRS,currentRoadIndex over candidate road size,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            v36 = *v18;
            LODWORD(__y) = 67240448;
            HIDWORD(__y) = v15;
            v118 = 2050;
            *v119 = v36;
            v37 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v37);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          v28 = 0;
          v19 = 0.0;
          if (*(*(*a3 + 16 * v17) + 24))
          {
            v20 = 1.0;
          }

          else
          {
            v20 = 0.0;
          }

          v29 = 1;
          if (v23)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = 0;
          v19 = v19 - v26;
          if (*(*(*a3 + 16 * v27) + 24))
          {
            v20 = 0.0;
          }

          else
          {
            v20 = 1.0;
          }

          v29 = 1;
          ++v17;
          if (v23)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v30 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
        {
          v31 = *v18;
          *buf = 67240448;
          *&buf[4] = v15;
          v121 = 2050;
          *v122 = v31;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_ERROR, "CLRS,road pointer invalid,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10193ED1C(buf);
          v34 = *v18;
          LODWORD(__y) = 67240448;
          HIDWORD(__y) = v15;
          v118 = 2050;
          *v119 = v34;
          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        v29 = 0;
        v28 = 1;
        if (v23)
        {
          goto LABEL_31;
        }
      }
    }

    while (!v28);
    if (v28 != 12)
    {
      if (!v29)
      {
        return 0;
      }

LABEL_94:
      v13 = *a2;
      if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) > v14)
      {
        continue;
      }

      return 1;
    }

    break;
  }

  v21 = *a3;
LABEL_50:
  v38 = *(v21 + 16 * v17);
  v39 = *v38;
  if (!*v38 || (sub_10029244C(*v38), *(v39 + 40) == 0.0))
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v99 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v100 = *v18;
      v101 = *(*a3 + 16 * v17);
      v102 = *v101;
      if (*v101)
      {
        sub_10029244C(*v101);
        v103 = *(v102 + 40);
      }

      else
      {
        v103 = 0xBFF0000000000000;
      }

      *buf = 67240704;
      *&buf[4] = v15;
      v121 = 2050;
      *v122 = v100;
      *&v122[8] = 2050;
      *&v122[10] = v103;
      _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_ERROR, "CLRS,road pointer invalid or zero length,count,%{public}d,locationTime,%{public}.3lf,roadLength,%{public}.2lf", buf, 0x1Cu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v107 = *v18;
    v108 = *(*a3 + 16 * v17);
    v109 = *v108;
    if (*v108)
    {
      sub_10029244C(*v108);
      v110 = *(v109 + 40);
    }

    else
    {
      v110 = 0xBFF0000000000000;
    }

    LODWORD(__y) = 67240704;
    HIDWORD(__y) = v15;
    v118 = 2050;
    *v119 = v107;
    *&v119[8] = 2050;
    *&v119[10] = v110;
    v98 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v98);
    if (v98 != buf)
    {
      goto LABEL_136;
    }

    return 0;
  }

  v40 = 16 * v17;
  v41 = **(*a3 + v40);
  sub_10029244C(v41);
  v42 = *(*a3 + v40);
  if (*(v42 + 24))
  {
    v43 = v19 / *(v41 + 40);
  }

  else
  {
    v43 = -(v19 / *(v41 + 40));
  }

  v45 = *v42;
  v44 = *(v42 + 8);
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v45)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101940114();
    }

    v51 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v47 = 0.0;
    if (!sub_10000A100(121, 0))
    {
      goto LABEL_87;
    }

LABEL_69:
    sub_10194013C(buf);
    LOWORD(__y) = 0;
    v52 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v52);
    goto LABEL_125;
  }

  v46 = (*(v45 + 18) - *(v45 + 17)) >> 4;
  if (v46 <= 0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101940114();
    }

    v53 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v47 = 0.0;
    if (!sub_10000A100(121, 2))
    {
      goto LABEL_87;
    }

    goto LABEL_124;
  }

  v47 = 0.0;
  if (v46 != 1)
  {
    sub_10029244C(v45);
    v54 = (*(v45 + 21) - *(v45 + 20)) >> 3;
    if (v54 == v46 - 1)
    {
      sub_10029244C(v45);
      v55 = v20 + v43;
      if (v55 < 0.000001)
      {
        v56 = *(v45 + 17);
        v50 = *v56;
        v49 = v56[1];
        v57 = v56[2];
        v58 = v56[3];
        *buf = 0.0;
        v116 = 0;
        __y = 0.0;
        sub_1001063B0(a1, buf, &__y, &v116, v50, v49, 0.0, v57, v58, 0.0);
LABEL_79:
        v59 = atan2(__y, *buf);
        if (v59 < 0.0)
        {
          v59 = v59 + 6.28318531;
        }

        v47 = v59 * 57.2957795;
        goto LABEL_110;
      }

      if (v55 >= 0.999999)
      {
        v69 = *(v45 + 17) + 16 * v54;
        v50 = *v69;
        v49 = *(v69 + 8);
        v70 = sub_1002926F4(a1, *(v69 - 16), *(v69 - 8), *v69, v49);
LABEL_109:
        v47 = v70;
LABEL_110:
        v48 = 1;
LABEL_88:
        if (!v44)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      v62 = *(v45 + 20);
      v63 = *(v45 + 21);
      if (v62 != v63)
      {
        v64 = 0.0;
        v65 = 2;
        v66 = 24;
        while (1)
        {
          v67 = *v62 / v45[5];
          if (vabdd_f64(v55, v64 + v67) < 0.000001)
          {
            break;
          }

          if (v64 + v67 > v55)
          {
            v81 = (*(v45 + 17) + v66);
            v82 = *(v81 - 2);
            v111 = *(v81 - 1);
            v113 = *(v81 - 3);
            v83 = sub_1002AADB4(v82, *v81);
            v84 = (v55 - v64) / v67;
            sub_10002DB04(v82 + v83 * v84);
            v49 = v85;
            v86 = (*(v45 + 17) + v66);
            v87 = *(v86 - 3);
            v88 = *(v86 - 2);
            v89 = *(v86 - 1);
            v90 = *v86;
            *buf = 0.0;
            v116 = 0;
            __y = 0.0;
            sub_1001063B0(a1, buf, &__y, &v116, v87, v88, 0.0, v89, v90, 0.0);
            v50 = v113 + (v111 - v113) * v84;
            goto LABEL_79;
          }

          ++v62;
          v66 += 16;
          ++v65;
          v64 = v64 + v67;
          if (v62 == v63)
          {
            goto LABEL_102;
          }
        }

        if (v65 < v46)
        {
          v71 = (*(v45 + 17) + v66);
          v50 = *(v71 - 1);
          v49 = *v71;
          v72 = *(v71 - 3);
          v73 = *(v71 - 2);
          *buf = 0.0;
          v116 = 0;
          __y = 0.0;
          sub_1001063B0(a1, buf, &__y, &v116, v72, v73, 0.0, v50, v49, 0.0);
          v74 = __y;
          v75 = *buf;
          v76 = *(v45 + 17) + v66;
          v77 = *(v76 + 8);
          v78 = *(v76 + 16);
          *buf = 0.0;
          v116 = 0;
          __y = 0.0;
          sub_1001063B0(a1, buf, &__y, &v116, v50, v49, 0.0, v77, v78, 0.0);
          v79 = atan2(v74, v75);
          if (v79 < 0.0)
          {
            v79 = v79 + 6.28318531;
          }

          v112 = v79 * 57.2957795;
          v80 = atan2(__y, *buf);
          if (v80 < 0.0)
          {
            v80 = v80 + 6.28318531;
          }

          sub_1004E60D8(v112, v80 * 57.2957795);
          goto LABEL_109;
        }

        if (qword_1025D46B0 != -1)
        {
          sub_101940114();
        }

        v91 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
        }

        v47 = 0.0;
        if (!sub_10000A100(121, 0))
        {
LABEL_87:
          v48 = 0;
          v49 = 0.0;
          v50 = 0.0;
          goto LABEL_88;
        }

        goto LABEL_69;
      }

LABEL_102:
      if (qword_1025D46B0 != -1)
      {
        sub_101940114();
      }

      v68 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101940114();
      }

      v60 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_87;
      }
    }

LABEL_124:
    sub_10194013C(buf);
    LOWORD(__y) = 0;
    v52 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v52);
LABEL_125:
    if (v52 != buf)
    {
      free(v52);
    }

    goto LABEL_87;
  }

  v48 = 1;
  v49 = 0.0;
  v50 = 0.0;
  if (v44)
  {
LABEL_89:
    sub_100008080(v44);
  }

LABEL_90:
  if (v48)
  {
    v61 = v47 + 180.0;
    if (*(*(*a3 + v40) + 24))
    {
      v61 = v47;
    }

    *(v18 + 1) = v50;
    *(v18 + 2) = v49;
    *(v18 + 6) = v61;
    v18[7] = 0x4024000000000000;
    *(v18 + 8) = v115;
    *(v18 + 3) = xmmword_101CA73D0;
    v18[5] = 0x4008000000000000;
    *(v18 + 9) = xmmword_101CA73E0;
    goto LABEL_94;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v104 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
  {
    v105 = *v18;
    *buf = 67240448;
    *&buf[4] = v15;
    v121 = 2050;
    *v122 = v105;
    _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_ERROR, "CLRS,interpolateOnRoad,interpolateProjections returned false,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v106 = *v18;
    LODWORD(__y) = 67240448;
    HIDWORD(__y) = v15;
    v118 = 2050;
    *v119 = v106;
    v98 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v98);
    goto LABEL_135;
  }

  return result;
}

void sub_1007E87A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007E87D0(int a1, char **a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = *(a3 + 16);
    v9 = *a2;
    do
    {
      if (v8 < *v9)
      {
        break;
      }

      v9 += 14;
      v6 += 112;
    }

    while (v7 != v9);
  }

  return sub_1007EE600(a4, *(a4 + 8), v6, v7, 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 4));
}

uint64_t sub_1007E882C(uint64_t result)
{
  for (i = 0; i != 112608; i += 1104)
  {
    v2 = result + i;
    *(v2 + 24) = 0x600000006;
    *v2 = off_102472200;
    *(v2 + 8) = xmmword_101CA73F0;
    *(v2 + 32) = result + i + 40;
    *(v2 + 352) = 0x100000006;
    *(v2 + 328) = off_102472178;
    *(v2 + 336) = xmmword_101CA7400;
    *(v2 + 360) = result + i + 368;
    *(v2 + 440) = 0x600000006;
    *(v2 + 416) = off_102472200;
    *(result + i + 424) = xmmword_101CA73F0;
    *(v2 + 448) = result + i + 456;
    *(v2 + 768) = 0x600000006;
    *(v2 + 744) = off_102472200;
    *(v2 + 752) = xmmword_101CA73F0;
    *(v2 + 776) = result + i + 784;
  }

  *(result + 112608) = 0;
  *(result + 112640) = 0x600000006;
  *(result + 112616) = off_102472200;
  *(result + 112624) = xmmword_101CA73F0;
  *(result + 112648) = result + 112656;
  *(result + 112968) = 0x600000006;
  *(result + 112944) = off_102472200;
  *(result + 112952) = xmmword_101CA73F0;
  *(result + 112976) = result + 112984;
  *(result + 113296) = 0x100000006;
  *(result + 113272) = off_102472178;
  *(result + 113280) = xmmword_101CA7400;
  *(result + 113304) = result + 113312;
  return result;
}

uint64_t sub_1007E8AD4(uint64_t a1)
{
  *a1 = off_1024722A8;
  sub_10000EC00((a1 + 8), "");
  *a1 = off_102472248;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 64) = xmmword_101CA7708;
  *(a1 + 80) = unk_101CA7718;
  *(a1 + 96) = xmmword_101CA7728;
  *(a1 + 120) = xmmword_101CA7740;
  *(a1 + 132) = *(&xmmword_101CA7740 + 12);
  *&v7 = 0xA00000006;
  v4 = xmmword_101CA775C;
  v5 = unk_101CA776C;
  v6 = xmmword_101CA777C;
  sub_1007EE9C0((a1 + 152), &v4, 7);
  v8[0] = xmmword_101CA77D8;
  v8[1] = unk_101CA77E8;
  v9 = xmmword_101CA77F8;
  v4 = xmmword_101CA7798;
  v5 = unk_101CA77A8;
  v6 = xmmword_101CA77B8;
  v7 = unk_101CA77C8;
  sub_1007EEC80((a1 + 176), &v4, 7);
  LOBYTE(v4) = 0;
  sub_1007EA340(&v4 + 1, a1 + 176);
  LOBYTE(v6) = 1;
  sub_1007EA340(&v6 + 1, a1 + 176);
  LOBYTE(v8[0]) = 2;
  sub_1007EA340(v8 + 1, a1 + 176);
  LOBYTE(v9) = 3;
  sub_1007EA340(&v9 + 1, a1 + 176);
  v10 = 4;
  sub_1007EA340(v11, a1 + 176);
  v12 = 5;
  sub_1007EA340(v13, a1 + 176);
  v14 = 6;
  sub_1007EA340(v15, a1 + 176);
  v16 = 7;
  sub_1007EA340(v17, a1 + 176);
  sub_1007EA660((a1 + 200), &v4, 8);
  for (i = 0; i != -32; i -= 4)
  {
    sub_1003C93BC(&v17[i], v17[i + 1]);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = xmmword_101CA7410;
  *(a1 + 248) = xmmword_101CA7420;
  *(a1 + 264) = 0x4006A09E667F3BCCLL;
  *(a1 + 272) = xmmword_101CA7430;
  *(a1 + 288) = 0x3FF921FF2E48E8A7;
  *(a1 + 296) = 0;
  return a1;
}

void sub_1007E8D9C(_Unwind_Exception *a1)
{
  v6 = v3 + 232;
  v7 = -256;
  do
  {
    sub_1003C93BC(v6, *(v6 + 8));
    v6 -= 32;
    v7 += 32;
  }

  while (v7);
  sub_1003C93BC(v1 + 176, *(v1 + 184));
  sub_1003C93BC(v1 + 152, *(v1 + 160));
  if (*(v1 + 63) < 0)
  {
    operator delete(*v4);
  }

  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1007E8E5C(uint64_t a1)
{
  *a1 = off_102472248;
  sub_10018F070(a1 + 200, *(a1 + 208));
  sub_1003C93BC(a1 + 176, *(a1 + 184));
  sub_1003C93BC(a1 + 152, *(a1 + 160));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *a1 = off_1024722A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1007E8F1C(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 32) = a3;
  sub_1007EA860(v26);
  v4 = v26[0];
  if ((*(&v26[4] + *(v26[0] - 3)) & 5) != 0)
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v23.__r_.__value_.__s.__data_[0] = 2;
    cnprint::CNPrinter::Print();
  }

  else
  {
    if (*(a1 + 31) < 0)
    {
      *(a1 + 16) = 0;
      v5 = *(a1 + 8);
    }

    else
    {
      *(a1 + 31) = 0;
      v5 = (a1 + 8);
    }

    *v5 = 0;
    memset(&__str, 0, sizeof(__str));
    while (1)
    {
      std::ios_base::getloc((v26 + *(v4 - 3)));
      v6 = std::locale::use_facet(&v23, &std::ctype<char>::id);
      v7 = (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(&v23);
      v8 = sub_100485630(v26, &__str, v7);
      v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      LOBYTE(v10) = *(&__str.__r_.__value_.__s + 23);
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        break;
      }

      size = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __str.__r_.__value_.__l.__size_;
      }

      if (v13 >= 1)
      {
        v14 = p_str + v13;
        v15 = p_str;
        do
        {
          v16 = memchr(v15, 35, v13);
          if (!v16)
          {
            break;
          }

          if (*v16 == 35)
          {
            if (v16 != v14 && v16 - p_str != -1)
            {
              std::string::basic_string(&v23, &__str, 0, v16 - p_str, &v25);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v23;
              v9 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
              size = v23.__r_.__value_.__l.__size_;
              v10 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
            }

            break;
          }

          v15 = (v16 + 1);
          v13 = v14 - v15;
        }

        while (v14 - v15 >= 1);
      }

      if ((v10 & 0x80u) != 0)
      {
        v9 = size;
      }

      sub_100070148(&v23, v9 + 1);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v23;
      }

      else
      {
        v17 = v23.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &__str;
        }

        else
        {
          v18 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v17, v18, v9);
      }

      *(&v17->__r_.__value_.__l.__data_ + v9) = 10;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v23;
      }

      else
      {
        v19 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v23.__r_.__value_.__l.__size_;
      }

      std::string::append((a1 + 8), v19, v20);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v4 = v26[0];
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v21 = (*(*a1 + 32))(a1);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v21;
}

void sub_1007E92F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007E936C(uint64_t a1, char *a2, char a3)
{
  *(a1 + 32) = a3;
  sub_100006044((a1 + 8), a2);
  v4 = *(*a1 + 32);

  return v4(a1);
}

uint64_t sub_1007E93CC(uint64_t a1)
{
  if ((sub_1007EAAEC(a1, (a1 + 40), "input_locationd_data_file", "") & 1) == 0)
  {
    v7 = sub_100038730(&std::cout, "Invalid input_locationd_data_file", 33);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(v114, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(v114);
    std::ostream::put();
    std::ostream::flush();
    v9 = 0;
    *(a1 + 296) = 0;
    return v9;
  }

  v2 = sub_1007EB568(a1, (a1 + 232), "vertical_process_noise_sigma_mps2");
  if ((v2 & 1) == 0)
  {
    *(a1 + 232) = 0x3FB999999999999ALL;
  }

  v114[0].__locale_ = 0;
  v114[1].__locale_ = 0;
  DWORD2(v115) = 0;
  *&v115 = 0;
  if (sub_1007EAB84(a1, v114, 7, "desired_lag_per_environment_array") != -1)
  {
    v3 = *(a1 + 152);
    if (v3 == (a1 + 160))
    {
      goto LABEL_16;
    }

    while (1)
    {
      v4 = *(v3 + 28);
      if (v4 > 6)
      {
        break;
      }

      *(v3 + 8) = *(&v114[0].__locale_ + v4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v72 = *v6 == v3;
          v3 = v6;
        }

        while (!v72);
      }

      v3 = v6;
      if (v6 == (a1 + 160))
      {
        goto LABEL_16;
      }
    }
  }

  v2 = 0;
LABEL_16:
  sub_10000EC00(__p, "horizontal_process_noise_sigma_mps2_unknown");
  v111 = 0;
  v114[0].__locale_ = &v111;
  v10 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v113 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v11) == -1)
  {
    v14 = 0;
  }

  else
  {
    v12 = v10[5];
    if (v12 == v10 + 6)
    {
      v14 = 1;
    }

    else
    {
      do
      {
        v13 = *(v12 + 32);
        v14 = v13 < 7;
        if (v13 > 6)
        {
          break;
        }

        v12[5] = v114[v13].__locale_;
        v15 = v12[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v12[2];
            v72 = *v16 == v12;
            v12 = v16;
          }

          while (!v72);
        }

        v12 = v16;
      }

      while (v16 != v10 + 6);
    }
  }

  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EC00(v109, "horizontal_process_noise_sigma_mps2_walking");
  v111 = 1;
  v114[0].__locale_ = &v111;
  v17 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v110 >= 0)
  {
    v18 = v109;
  }

  else
  {
    v18 = v109[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v18) == -1)
  {
    v21 = 0;
  }

  else
  {
    v19 = v17[5];
    if (v19 == v17 + 6)
    {
      v21 = 1;
    }

    else
    {
      do
      {
        v20 = *(v19 + 32);
        v21 = v20 < 7;
        if (v20 > 6)
        {
          break;
        }

        v19[5] = v114[v20].__locale_;
        v22 = v19[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v19[2];
            v72 = *v23 == v19;
            v19 = v23;
          }

          while (!v72);
        }

        v19 = v23;
      }

      while (v23 != v17 + 6);
    }
  }

  if (v110 < 0)
  {
    operator delete(v109[0]);
  }

  sub_10000EC00(v107, "horizontal_process_noise_sigma_mps2_running");
  v111 = 2;
  v114[0].__locale_ = &v111;
  v24 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v108 >= 0)
  {
    v25 = v107;
  }

  else
  {
    v25 = v107[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v25) == -1)
  {
    v28 = 0;
  }

  else
  {
    v26 = v24[5];
    if (v26 == v24 + 6)
    {
      v28 = 1;
    }

    else
    {
      do
      {
        v27 = *(v26 + 32);
        v28 = v27 < 7;
        if (v27 > 6)
        {
          break;
        }

        v26[5] = v114[v27].__locale_;
        v29 = v26[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v26[2];
            v72 = *v30 == v26;
            v26 = v30;
          }

          while (!v72);
        }

        v26 = v30;
      }

      while (v30 != v24 + 6);
    }
  }

  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  sub_10000EC00(v105, "horizontal_process_noise_sigma_mps2_cycling");
  v111 = 3;
  v114[0].__locale_ = &v111;
  v31 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v106 >= 0)
  {
    v32 = v105;
  }

  else
  {
    v32 = v105[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v32) == -1)
  {
    v35 = 0;
  }

  else
  {
    v33 = v31[5];
    if (v33 == v31 + 6)
    {
      v35 = 1;
    }

    else
    {
      do
      {
        v34 = *(v33 + 32);
        v35 = v34 < 7;
        if (v34 > 6)
        {
          break;
        }

        v33[5] = v114[v34].__locale_;
        v36 = v33[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v33[2];
            v72 = *v37 == v33;
            v33 = v37;
          }

          while (!v72);
        }

        v33 = v37;
      }

      while (v37 != v31 + 6);
    }
  }

  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  sub_10000EC00(v103, "horizontal_process_noise_sigma_mps2_swimming");
  v111 = 4;
  v114[0].__locale_ = &v111;
  v38 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v104 >= 0)
  {
    v39 = v103;
  }

  else
  {
    v39 = v103[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v39) == -1)
  {
    v42 = 0;
  }

  else
  {
    v40 = v38[5];
    if (v40 == v38 + 6)
    {
      v42 = 1;
    }

    else
    {
      do
      {
        v41 = *(v40 + 32);
        v42 = v41 < 7;
        if (v41 > 6)
        {
          break;
        }

        v40[5] = v114[v41].__locale_;
        v43 = v40[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v40[2];
            v72 = *v44 == v40;
            v40 = v44;
          }

          while (!v72);
        }

        v40 = v44;
      }

      while (v44 != v38 + 6);
    }
  }

  if (v104 < 0)
  {
    operator delete(v103[0]);
  }

  sub_10000EC00(v101, "horizontal_process_noise_sigma_mps2_golfing");
  v111 = 5;
  v114[0].__locale_ = &v111;
  v45 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v102 >= 0)
  {
    v46 = v101;
  }

  else
  {
    v46 = v101[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v46) == -1)
  {
    v49 = 0;
  }

  else
  {
    v47 = v45[5];
    if (v47 == v45 + 6)
    {
      v49 = 1;
    }

    else
    {
      do
      {
        v48 = *(v47 + 32);
        v49 = v48 < 7;
        if (v48 > 6)
        {
          break;
        }

        v47[5] = v114[v48].__locale_;
        v50 = v47[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v47[2];
            v72 = *v51 == v47;
            v47 = v51;
          }

          while (!v72);
        }

        v47 = v51;
      }

      while (v51 != v45 + 6);
    }
  }

  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  sub_10000EC00(v99, "horizontal_process_noise_sigma_mps2_downhillskiing");
  v111 = 6;
  v114[0].__locale_ = &v111;
  v52 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v100 >= 0)
  {
    v53 = v99;
  }

  else
  {
    v53 = v99[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v53) == -1)
  {
    v56 = 0;
  }

  else
  {
    v54 = v52[5];
    if (v54 == v52 + 6)
    {
      v56 = 1;
    }

    else
    {
      do
      {
        v55 = *(v54 + 32);
        v56 = v55 < 7;
        if (v55 > 6)
        {
          break;
        }

        v54[5] = v114[v55].__locale_;
        v57 = v54[1];
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = v54[2];
            v72 = *v58 == v54;
            v54 = v58;
          }

          while (!v72);
        }

        v54 = v58;
      }

      while (v58 != v52 + 6);
    }
  }

  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  sub_10000EC00(v97, "horizontal_process_noise_sigma_mps2_outdoorwheelchair");
  v111 = 7;
  v114[0].__locale_ = &v111;
  v59 = sub_1007EE8E0(a1 + 200, &v111);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v98 >= 0)
  {
    v60 = v97;
  }

  else
  {
    v60 = v97[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v60) == -1)
  {
    v64 = 0;
  }

  else
  {
    v61 = v59[5];
    v62 = v59 + 6;
    if (v61 == v59 + 6)
    {
      v64 = 1;
    }

    else
    {
      do
      {
        v63 = *(v61 + 32);
        v64 = v63 < 7;
        if (v63 > 6)
        {
          break;
        }

        v61[5] = v114[v63].__locale_;
        v65 = v61[1];
        if (v65)
        {
          do
          {
            v66 = v65;
            v65 = *v65;
          }

          while (v65);
        }

        else
        {
          do
          {
            v66 = v61[2];
            v72 = *v66 == v61;
            v61 = v66;
          }

          while (!v72);
        }

        v61 = v66;
      }

      while (v66 != v62);
    }
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  v114[0].__locale_ = 0;
  v114[1].__locale_ = 0;
  *&v115 = 0;
  if ((v2 & v14 & v21 & v28 & v35 & v42 & v49 & v56 & v64 & sub_1007EAAEC(a1, v114, "workout_type", "")) != 1)
  {
    goto LABEL_239;
  }

  v67 = BYTE7(v115);
  if ((SBYTE7(v115) & 0x80u) == 0)
  {
    v68 = v114 + BYTE7(v115);
  }

  else
  {
    v68 = v114[0].__locale_ + v114[1].__locale_;
  }

  if ((SBYTE7(v115) & 0x80u) == 0)
  {
    locale = v114;
  }

  else
  {
    locale = v114[0].__locale_;
  }

  if (locale != v68)
  {
    do
    {
      *locale = __tolower(*locale);
      ++locale;
    }

    while (locale != v68);
    v67 = BYTE7(v115);
  }

  if ((v67 & 0x80) != 0)
  {
    if (v114[1].__locale_ == 7)
    {
      if (*v114[0].__locale_ == 1852534389 && *(v114[0].__locale_ + 3) == 1853321070)
      {
        goto LABEL_241;
      }

      if (*v114[0].__locale_ == 1802264951 && *(v114[0].__locale_ + 3) == 1735289195)
      {
        goto LABEL_243;
      }

      if (*v114[0].__locale_ == 1852732786 && *(v114[0].__locale_ + 3) == 1735289198)
      {
        goto LABEL_244;
      }

      if (*v114[0].__locale_ == 1818458467 && *(v114[0].__locale_ + 3) == 1735289196)
      {
        goto LABEL_245;
      }
    }

    if (v114[1].__locale_ == 8 && *v114[0].__locale_ == 0x676E696D6D697773)
    {
      goto LABEL_240;
    }

    if (v114[1].__locale_ == 14)
    {
      if (*v114[0].__locale_ == 0x6C6C69686E776F64 && *(v114[0].__locale_ + 6) == 0x676E69696B736C6CLL)
      {
        goto LABEL_242;
      }
    }

    else if (v114[1].__locale_ == 7)
    {
      v72 = *v114[0].__locale_ == 1718382439 && *(v114[0].__locale_ + 3) == 1735289190;
      if (v72)
      {
LABEL_234:
        v79 = 5;
        goto LABEL_246;
      }
    }

    if (v114[1].__locale_ != 17)
    {
LABEL_239:
      v70 = 0;
      goto LABEL_247;
    }

    v71 = v114[0].__locale_;
    goto LABEL_186;
  }

  v70 = 0;
  v71 = v114;
  if (v67 > 0xDu)
  {
    if (v67 != 14)
    {
      if (v67 != 17)
      {
        goto LABEL_247;
      }

LABEL_186:
      v74 = v71->__locale_;
      v75 = v71[1].__locale_;
      locale_low = LOBYTE(v71[2].__locale_);
      if (v74 != 0x77726F6F6474756FLL || v75 != 0x696168636C656568 || locale_low != 114)
      {
        goto LABEL_239;
      }

      v79 = 7;
LABEL_246:
      *(a1 + 224) = v79;
      v70 = 1;
      goto LABEL_247;
    }

    if (v114[0].__locale_ != 0x6C6C69686E776F64 || *(&v114[0].__locale_ + 6) != 0x676E69696B736C6CLL)
    {
      goto LABEL_239;
    }

LABEL_242:
    v79 = 6;
    goto LABEL_246;
  }

  if (v67 == 7)
  {
    if (LODWORD(v114[0].__locale_) != 1852534389 || *(&v114[0].__locale_ + 3) != 1853321070)
    {
      if (LODWORD(v114[0].__locale_) != 1802264951 || *(&v114[0].__locale_ + 3) != 1735289195)
      {
        if (LODWORD(v114[0].__locale_) != 1852732786 || *(&v114[0].__locale_ + 3) != 1735289198)
        {
          if (LODWORD(v114[0].__locale_) != 1818458467 || *(&v114[0].__locale_ + 3) != 1735289196)
          {
            if (LODWORD(v114[0].__locale_) != 1718382439 || *(&v114[0].__locale_ + 3) != 1735289190)
            {
              goto LABEL_239;
            }

            goto LABEL_234;
          }

LABEL_245:
          v79 = 3;
          goto LABEL_246;
        }

LABEL_244:
        v79 = 2;
        goto LABEL_246;
      }

LABEL_243:
      v79 = 1;
      goto LABEL_246;
    }

LABEL_241:
    v79 = 0;
    goto LABEL_246;
  }

  if (v67 == 8)
  {
    if (v114[0].__locale_ == 0x676E696D6D697773)
    {
LABEL_240:
      v79 = 4;
      goto LABEL_246;
    }

    goto LABEL_239;
  }

LABEL_247:
  v90 = sub_1007EB568(a1, (a1 + 240), "velocity_uncertainty_scale_factor");
  if ((v90 & 1) == 0)
  {
    *(a1 + 240) = 0x3FF0000000000000;
  }

  v91 = sub_1007EB568(a1, (a1 + 248), "vertical_speed_limit_mps");
  if ((v91 & 1) == 0)
  {
    *(a1 + 248) = 0x4049000000000000;
  }

  v92 = sub_1007EB568(a1, (a1 + 256), "minimum_driving_speed_that_requires_speed_uncertainty_floor_mps");
  if ((v92 & 1) == 0)
  {
    *(a1 + 256) = 0x4024000000000000;
  }

  v93 = sub_1007EB568(a1, (a1 + 264), "minimum_driving_speed_uncertainty_mps");
  if ((v93 & 1) == 0)
  {
    *(a1 + 264) = 0x4006A09E667F3BCCLL;
  }

  v94 = sub_1007EB568(a1, (a1 + 280), "speed_uncertainty_threshold_multiplier");
  if ((v94 & 1) == 0)
  {
    *(a1 + 280) = 0x4000000000000000;
  }

  v95 = sub_1007EB568(a1, (a1 + 288), "course_uncertainty_threshold_rad");
  if ((v95 & 1) == 0)
  {
    *(a1 + 288) = 0x3FF921FF2E48E8A7;
  }

  v9 = v70 & v90 & v91 & v92 & v93 & v94 & v95;
  *(a1 + 296) = v9;
  if (SBYTE7(v115) < 0)
  {
    operator delete(v114[0].__locale_);
  }

  return v9;
}

void sub_1007EA270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007EA340(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007EA398(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1007EA398(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007EA420(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1007EA420(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *sub_1007EA4B8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1007EA4B8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_1007EA660(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1007EA6E0(a1, v4, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1007EA6E0(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  result = *sub_1007EA4B8(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1007EA764();
  }

  return result;
}

void sub_1007EA7E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007EA800(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007EA800(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1003C93BC((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void (__cdecl ***sub_1007EA860(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1007EA9EC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007EAA24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

uint64_t sub_1007EAAEC(uint64_t a1, std::string *a2, const char *a3, char *__s)
{
  sub_10000EC00(&__str, __s);
  v7 = sub_1007EAF98(a1, a2, a3);
  if ((v7 & 1) == 0)
  {
    std::string::operator=(a2, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1007EAB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EAB84(uint64_t a1, _DWORD *a2, int a3, const char *a4)
{
  if (!sub_1007EB01C(a1, __s, a4, ""))
  {
    if (*(a1 + 32) == 1)
    {
      LOWORD(v20[0]) = 0;
      v12.__r_.__value_.__s.__data_[0] = 2;
      cnprint::CNPrinter::Print();
    }

    return 0xFFFFFFFFLL;
  }

  sub_10000EC00(v38, __s);
  sub_1007EBEC4(&v34, " ,;", 0, 0);
  sub_1007EBF58(v29, v38, &v34);
  sub_1007EBBCC(v29, v20);
  for (i = 0; ; ++i)
  {
    sub_1007EBCB8(v29, &v12);
    if (v17 == 1 && (v26 & 1) != 0)
    {
      if (v15 != v24)
      {
        v8 = 0;
        goto LABEL_11;
      }

      v9 = v16 == v25;
    }

    else
    {
      v9 = v17 == v26;
    }

    v8 = v9;
LABEL_11:
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (v8)
    {
      goto LABEL_36;
    }

    if ((a3 & ~(a3 >> 31)) == i)
    {
      LOWORD(v12.__r_.__value_.__l.__data_) = 0;
      cnprint::CNPrinter::Print();
      goto LABEL_35;
    }

    if ((v26 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    v10 = v28 >= 0 ? &v27 : v27;
    if ((sub_1007EBDA8(a1, a2, v10) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 32) == 1)
    {
      std::to_string(&v12, a2[1]);
      cnprint::CNPrinter::Print();
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }

    ++a2;
    sub_1007EC8B8(v20);
  }

  LOWORD(v12.__r_.__value_.__l.__data_) = 0;
  if ((v26 & 1) == 0)
  {
    __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
  }

  cnprint::CNPrinter::Print();
LABEL_35:
  i = 0xFFFFFFFFLL;
LABEL_36:
  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  return i;
}

void sub_1007EAF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  sub_1007EC448(&a28);
  sub_100574E64(&a42);
  sub_1006E69AC(&a52);
  if (a65 < 0)
  {
    operator delete(*(v65 + 256));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EAF98(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = a1;
  result = sub_1007EB01C(a1, __s, a3, "");
  if (result)
  {
    return sub_1007EB494(v4, a2, __s);
  }

  return result;
}

uint64_t sub_1007EB01C(uint64_t a1, char *__dst, const char *a3, char *__src)
{
  v4 = __src;
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_99;
    }
  }

  else if (!*(a1 + 31))
  {
    goto LABEL_99;
  }

  sub_10000EC00(&v57, "\n");
  v8 = strlen(a3);
  v9 = std::string::append(&v57, a3, v8);
  v10 = std::string::append(v9, ":", 1uLL);
  v11 = (a1 + 8);
  v12 = *(a1 + 31);
  __s = a3;
  if (v12 < 0)
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
  }

  else
  {
    v13 = (a1 + 8);
    v14 = *(a1 + 31);
  }

  v15 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  if (v15 >= 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10->__r_.__value_.__r.__words[0];
  }

  if (v15 >= 0)
  {
    size = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v21 = 0;
LABEL_48:
    v38 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v57.__r_.__value_.__l.__size_;
    }

    v39 = v38 + v21;
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v40 = v12;
    if (v39 < v12)
    {
      while (v40 > v39)
      {
        v41 = a1 + 8;
        if ((v12 & 0x80000000) != 0)
        {
          v41 = *v11;
        }

        if (*(v41 + v39) != 58)
        {
          v42 = v12;
          if ((v12 & 0x80000000) != 0)
          {
            v42 = *(a1 + 16);
          }

          if (v42 <= v39)
          {
            break;
          }

          v43 = a1 + 8;
          if ((v12 & 0x80000000) != 0)
          {
            v43 = *v11;
          }

          if (*(v43 + v39) != 32)
          {
            v44 = v12;
            if ((v12 & 0x80000000) != 0)
            {
              v44 = *(a1 + 16);
            }

            if (v44 <= v39)
            {
              break;
            }

            v45 = a1 + 8;
            if ((v12 & 0x80000000) != 0)
            {
              v45 = *v11;
            }

            if (*(v45 + v39) != 9)
            {
              goto LABEL_72;
            }
          }
        }

        ++v39;
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_53:
        v40 = *(a1 + 16);
        if (v39 >= v40)
        {
          goto LABEL_72;
        }
      }

      sub_1003CC9DC();
    }

LABEL_72:
    for (i = 0; i != 255; ++i)
    {
      v47 = v39 + i;
      v48 = *(a1 + 31);
      if ((v48 & 0x8000000000000000) != 0)
      {
        if (v47 >= *(a1 + 16))
        {
          break;
        }
      }

      else if (v47 >= v48)
      {
        break;
      }

      v49 = a1 + 8;
      if ((v48 & 0x80000000) != 0)
      {
        v49 = *v11;
      }

      if (*(v49 + i + v39) == 10)
      {
        break;
      }

      if ((v48 & 0x80000000) != 0)
      {
        v50 = *(a1 + 16);
      }

      else
      {
        v50 = *(a1 + 31);
      }

      if (v50 <= v47)
      {
LABEL_104:
        sub_1003CC9DC();
      }

      v51 = a1 + 8;
      if ((v48 & 0x80000000) != 0)
      {
        v51 = *v11;
      }

      if (*(v51 + i + v39) == 13)
      {
        break;
      }

      if ((v48 & 0x80000000) != 0)
      {
        v52 = *(a1 + 16);
      }

      else
      {
        v52 = *(a1 + 31);
      }

      if (v52 <= v47)
      {
        goto LABEL_104;
      }

      v53 = a1 + 8;
      if ((v48 & 0x80000000) != 0)
      {
        v53 = *v11;
      }

      __dst[i] = *(v53 + i + v39);
    }

    v31 = 0;
    __dst[i] = 0;
    if (*(a1 + 32) == 1)
    {
      cnprint::CNPrinter::Print();
      v31 = 0;
    }

    goto LABEL_96;
  }

  if (v14 >= size)
  {
    v22 = &v13[v14];
    v23 = v16->__r_.__value_.__s.__data_[0];
    v24 = v13;
    do
    {
      v25 = v14 - size;
      if (v25 == -1)
      {
        break;
      }

      v26 = memchr(v24, v23, v25 + 1);
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if (!memcmp(v26, v16, size))
      {
        if (v27 != v22)
        {
          v21 = v27 - v13;
          if (v27 - v13 != -1)
          {
            goto LABEL_48;
          }
        }

        break;
      }

      v24 = v27 + 1;
      v14 = v22 - (v27 + 1);
    }

    while (v14 >= size);
  }

  sub_100006044(&v57, __s);
  v18 = std::string::append(&v57, ":", 1uLL);
  v12 = *(a1 + 31);
  if (v12 < 0)
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
  }

  else
  {
    v19 = (a1 + 8);
    v20 = *(a1 + 31);
  }

  v28 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
  if (v28 >= 0)
  {
    v29 = v18;
  }

  else
  {
    v29 = v18->__r_.__value_.__r.__words[0];
  }

  if (v28 >= 0)
  {
    v30 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v18->__r_.__value_.__l.__size_;
  }

  if (!v30)
  {
LABEL_47:
    v21 = 0;
    goto LABEL_48;
  }

  if (v20 >= v30)
  {
    v32 = &v19[v20];
    v33 = v29->__r_.__value_.__s.__data_[0];
    v34 = v19;
    do
    {
      v35 = v20 - v30;
      if (v35 == -1)
      {
        break;
      }

      v36 = memchr(v34, v33, v35 + 1);
      if (!v36)
      {
        break;
      }

      v37 = v36;
      if (!memcmp(v36, v29, v30))
      {
        v31 = 1;
        if (v37 == v32 || v37 != v19)
        {
          goto LABEL_96;
        }

        goto LABEL_47;
      }

      v34 = v37 + 1;
      v20 = v32 - (v37 + 1);
    }

    while (v20 >= v30);
  }

  v31 = 1;
LABEL_96:
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v4 = __src;
  if ((v31 & 1) == 0)
  {
    return 1;
  }

LABEL_99:
  strncpy(__dst, v4, 0x100uLL);
  if (*(a1 + 32) == 1)
  {
    LOWORD(v57.__r_.__value_.__l.__data_) = 0;
    cnprint::CNPrinter::Print();
  }

  return 0;
}

void sub_1007EB46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EB494(int a1, uint64_t a2, char *__s)
{
  memset(&v5, 0, sizeof(v5));
  sub_100006044(&v5, __s);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v5;
  return 1;
}

void sub_1007EB4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (**__p)(std::bad_cast *__hidden this), __int128 a11)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(exception_object);
    __p = &off_1024470A0;
    a11 = *(exception_ptr + 8);
    __cxa_begin_catch(exception_object);
    std::bad_cast::~bad_cast(&__p);
    __cxa_end_catch();
    JUMPOUT(0x1007EB4E4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EB568(uint64_t a1, void *a2, const char *a3)
{
  v4 = a1;
  result = sub_1007EB01C(a1, __dst, a3, "");
  if (result)
  {
    return sub_1007EB5EC(v4, a2, __dst);
  }

  return result;
}

uint64_t sub_1007EB5EC(int a1, void *a2, char *__s)
{
  v5 = 0;
  v6[0] = __s;
  v6[1] = &__s[strlen(__s)];
  if ((sub_1007EB708(v6, &v5) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = &off_1024470A0;
    sub_10038D4A0(&v7);
  }

  *a2 = v5;
  return 1;
}

void sub_1007EB690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12, __int128 a13)
{
  std::bad_cast::~bad_cast(&a12);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a12.__vftable = &off_1024470A0;
    a13 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::bad_cast::~bad_cast(&a12);
    __cxa_end_catch();
    JUMPOUT(0x1007EB638);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EB708(uint64_t a1, double *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    v3 = (v3 + 1);
  }

  v7 = v4 - v3;
  if (v4 - v3 < 3)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(v3 + v10);
    if (v12 != aNan_0[v10] && v12 != aNan[v10])
    {
      break;
    }

    v11 = v10++ > 1;
  }

  while (v10 != 3);
  if (!v11)
  {
    if (v7 == 3)
    {
      v20 = 0;
      v18 = 0;
      do
      {
        v21 = *(v3 + v20);
        if (v21 != aInfinity_0[v20] && v21 != aInfinity[v20])
        {
          break;
        }

        v18 = v20++ > 1;
      }

      while (v20 != 3);
    }

    else
    {
      if (v7 != 8)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(v3 + v17);
        if (v19 != aInfinity_0[v17] && v19 != aInfinity[v17])
        {
          break;
        }

        v18 = v17++ > 6;
      }

      while (v17 != 8);
    }

    if (v18)
    {
      v14 = v5 == 45;
      v15 = INFINITY;
      v16 = -INFINITY;
      goto LABEL_34;
    }

LABEL_8:
    result = sub_1007EB8F0(a1);
    if (result)
    {
      v9 = *(*(a1 + 8) - 1) - 43;
      if (v9 <= 0x3A)
      {
        return result & ((0x400000004000005uLL >> v9) ^ 1);
      }
    }

    return result;
  }

  v13 = v3 + 3;
  if (v13 != v4 && (v4 - v13 < 2 || *v13 != 40 || *(v4 - 1) != 41))
  {
    goto LABEL_8;
  }

  v14 = v5 == 45;
  v15 = NAN;
  v16 = NAN;
LABEL_34:
  if (v14)
  {
    v15 = v16;
  }

  *a2 = v15;
  return 1;
}

BOOL sub_1007EB8F0(std::locale::__imp **a1)
{
  std::locale::locale(v14);
  memset(&v14[4], 0, 24);
  v2 = *a1;
  v3 = a1[1];
  __sb = off_1024722E0;
  v14[1].__locale_ = v2;
  v14[2].__locale_ = v2;
  v14[3].__locale_ = v3;
  v10.__loc_ = 0;
  v9[1] = 0;
  std::ios_base::init(&v10, &__sb);
  v11 = 0;
  v12 = -1;
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= ~0x1000u;
  *(&v9[2] + *(v5 - 24)) = 17;
  v6 = std::istream::operator>>();
  v7 = (*(v6 + *(*v6 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  std::locale::~locale(v14);
  return v7;
}

void sub_1007EBAD4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

std::locale *sub_1007EBB24(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1007EBB68(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

void sub_1007EBBCC(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100007244(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100007244(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1007EC030(a2, v4, *a1, *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1007EBC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EBCB8(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100007244(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100007244(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1007EC030(a2, v4, *(a1 + 8), *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1007EBD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EBDA8(int a1, _DWORD *a2, char *__s)
{
  v5 = 0;
  v6[0] = __s;
  v6[1] = &__s[strlen(__s)];
  if ((sub_1007EC49C(v6, &v5) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v7);
    v7.__vftable = &off_1024470A0;
    sub_10038D4A0(&v7);
  }

  *a2 = v5;
  return 1;
}

void sub_1007EBE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12, __int128 a13)
{
  std::bad_cast::~bad_cast(&a12);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a12.__vftable = &off_1024470A0;
    a13 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::bad_cast::~bad_cast(&a12);
    __cxa_end_catch();
    JUMPOUT(0x1007EBDF4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EBEC4(uint64_t a1, char *a2, char *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10000EC00((a1 + 24), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = a4;
  *(a1 + 56) = 0;
  if (a3)
  {
    sub_100006044(a1, a3);
  }

  return a1;
}

void sub_1007EBF24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EBF58(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a1 = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  *(a1 + 8) = v7 + v6;
  if (*(a3 + 23) < 0)
  {
    sub_100007244((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 47) < 0)
  {
    sub_100007244((a1 + 40), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v9 = *(a3 + 24);
    *(a1 + 56) = *(a3 + 5);
    *(a1 + 40) = v9;
  }

  v10 = *(a3 + 6);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 64) = v10;
  return a1;
}

void sub_1007EC014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007EC030(char *__dst, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v9;
  }

  v10 = *(a2 + 6);
  __dst[56] = *(a2 + 56);
  *(__dst + 6) = v10;
  *(__dst + 8) = a3;
  *(__dst + 9) = a4;
  __dst[80] = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_1007EC120(__dst);
  return __dst;
}

void sub_1007EC0E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EC120(uint64_t result)
{
  if ((*(result + 80) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 72);
    if (*(result + 64) == v2)
    {
      result = 0;
    }

    else
    {
      result = sub_1007EC174(result, (result + 64), v2, (result + 88));
    }

    *(v1 + 80) = result;
  }

  return result;
}

uint64_t sub_1007EC174(uint64_t a1, std::string::value_type **a2, std::string::value_type *a3, std::string *this)
{
  v8 = *a2;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  if (v8 != a3)
  {
    do
    {
      v9 = sub_1007EC354(a1, *v8);
      v8 = *a2;
      if (!v9)
      {
        break;
      }

      *a2 = ++v8;
    }

    while (v8 != a3);
    if (*(a1 + 52))
    {
LABEL_2:
      if (v8 == a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v12 = 1;
          *(a1 + 56) = 1;
          sub_10038D358(this, a3, a3, 0);
          return v12;
        }

        return 0;
      }

      if (sub_1007EC3D0(a1, *v8))
      {
        if (*(a1 + 56))
        {
          ++*a2;
          *(a1 + 56) = 0;
LABEL_28:
          sub_10038D358(this, v8, *a2, *a2 - v8);
          return 1;
        }
      }

      else if ((*(a1 + 56) & 1) != 0 || !sub_1007EC354(a1, **a2))
      {
        v13 = sub_1007EC354(a1, **a2);
        v14 = *a2;
        if (v13)
        {
          *a2 = ++v14;
          v8 = v14;
        }

        while (v14 != a3 && !sub_1007EC354(a1, *v14) && !sub_1007EC3D0(a1, **a2))
        {
          v14 = *a2 + 1;
          *a2 = v14;
        }
      }

      *(a1 + 56) = 1;
      goto LABEL_28;
    }
  }

  if (v8 != a3)
  {
    v10 = sub_1007EC3D0(a1, *v8);
    v11 = *a2;
    if (v10)
    {
      *a2 = v11 + 1;
    }

    else
    {
      while (v11 != a3 && !sub_1007EC354(a1, *v11) && !sub_1007EC3D0(a1, **a2))
      {
        v11 = *a2 + 1;
        *a2 = v11;
      }
    }

    goto LABEL_28;
  }

  return 0;
}

BOOL sub_1007EC354(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v3 = std::string::find((a1 + 24), a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x4000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x4000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

BOOL sub_1007EC3D0(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = std::string::find(a1, a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x2000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x2000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

uint64_t sub_1007EC448(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007EC49C(unsigned __int8 **a1, _DWORD *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v7 = *v5;
  if (v7 == 45 || v7 == 43)
  {
    *a1 = ++v5;
  }

  v9[0] = 0;
  v10 = 1;
  v11 = a2;
  v12 = v5;
  v13 = v4;
  result = sub_1007EC528(v9);
  if (v7 == 45)
  {
    *a2 = -*a2;
  }

  return result;
}

uint64_t sub_1007EC528(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 24) = v1 - 1;
  v3 = *(a1 + 8);
  *v3 = 0;
  if (v2 <= v1 - 1)
  {
    v4 = *(v1 - 1);
    if ((v4 - 58) >= 0xF6u)
    {
      *v3 = (v4 - 48);
      *(a1 + 24) = v1 - 2;
      std::locale::locale(&v30);
      v7 = std::locale::classic();
      if (std::locale::operator==(&v30, v7))
      {
        v5 = sub_1007EC7D0(a1);
LABEL_39:
        std::locale::~locale(&v30);
        return v5;
      }

      v8 = std::locale::use_facet(&v30, &std::numpunct<char>::id);
      (v8->__vftable[1].__on_zero_shared)(&__p);
      v9 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v9 = v28;
        if (!v28)
        {
          goto LABEL_36;
        }

        p_p = __p;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (*p_p >= 1)
      {
        v11 = (v8->__vftable[1].~facet_0)(v8);
        v12 = *(a1 + 16);
        v13 = *(a1 + 24);
        if (v13 >= v12)
        {
          v14 = 0;
          v15 = __p;
          if (v29 >= 0)
          {
            v15 = &__p;
          }

          v16 = *v15 - 1;
          do
          {
            if (v16)
            {
              v17 = *(a1 + 4);
              v18 = *a1 | (v17 > 0x19999999);
              *a1 = v18;
              v19 = 10 * v17;
              *(a1 + 4) = v19;
              v20 = *v13;
              if ((*v13 - 58) < 0xF6u)
              {
                goto LABEL_41;
              }

              v21 = v20 - 48;
              v22 = (v20 - 48) * v19;
              if (v21)
              {
                if (v18)
                {
                  goto LABEL_41;
                }

                if (((v21 * v19) & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_41;
                }

                v23 = *(a1 + 8);
                v24 = *v23;
                if (__CFADD__(v22, *v23))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v23 = *(a1 + 8);
                v24 = *v23;
              }

              *v23 = v24 + v22;
              --v16;
            }

            else
            {
              if (*v13 != v11)
              {
                goto LABEL_36;
              }

              if (v13 == v12)
              {
LABEL_41:
                v5 = 0;
                goto LABEL_37;
              }

              if (v9 - 1 > v14)
              {
                ++v14;
              }

              if (v29 >= 0)
              {
                v25 = &__p;
              }

              else
              {
                v25 = __p;
              }

              v16 = v25[v14];
            }

            *(a1 + 24) = --v13;
          }

          while (v13 >= v12);
        }

        v5 = 1;
        goto LABEL_37;
      }

LABEL_36:
      v5 = sub_1007EC7D0(a1);
LABEL_37:
      if (v29 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_39;
    }
  }

  return 0;
}

void sub_1007EC79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EC7D0(uint64_t a1)
{
  if (*(a1 + 24) < *(a1 + 16))
  {
    return 1;
  }

  do
  {
    result = sub_1007EC828(a1);
    if (!result)
    {
      break;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24) - 1;
    *(a1 + 24) = v4;
  }

  while (v4 >= v3);
  return result;
}

uint64_t sub_1007EC828(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *a1 | (v1 > 0x19999999);
  *a1 = v2;
  v3 = 10 * v1;
  *(a1 + 4) = v3;
  v4 = **(a1 + 24);
  if ((**(a1 + 24) - 58) < 0xF6u)
  {
    return 0;
  }

  v5 = v4 - 48;
  v6 = (v4 - 48) * v3;
  if (v5)
  {
    if ((v2 & 1) == 0 && ((v5 * v3) & 0xFFFFFFFF00000000) == 0)
    {
      v7 = *(a1 + 8);
      v8 = *v7;
      if (!__CFADD__(v6, *v7))
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *v7;
LABEL_9:
  *v7 = v8 + v6;
  return 1;
}

uint64_t sub_1007EC8B8(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    sub_1019401AC();
  }

  result = sub_1007EC174(a1, (a1 + 64), *(a1 + 72), (a1 + 88));
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1007EC8F8(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  if (!sub_1007EB01C(a1, __s, a4, ""))
  {
    if (*(a1 + 32) == 1)
    {
      LOWORD(v20[0]) = 0;
      v12.__r_.__value_.__s.__data_[0] = 2;
      cnprint::CNPrinter::Print();
    }

    return 0xFFFFFFFFLL;
  }

  sub_10000EC00(v38, __s);
  sub_1007EBEC4(&v34, " ,;", 0, 0);
  sub_1007EBF58(v29, v38, &v34);
  sub_1007EBBCC(v29, v20);
  for (i = 0; ; ++i)
  {
    sub_1007EBCB8(v29, &v12);
    if (v17 == 1 && (v26 & 1) != 0)
    {
      if (v15 != v24)
      {
        v8 = 0;
        goto LABEL_11;
      }

      v9 = v16 == v25;
    }

    else
    {
      v9 = v17 == v26;
    }

    v8 = v9;
LABEL_11:
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (v8)
    {
      goto LABEL_36;
    }

    if ((a3 & ~(a3 >> 31)) == i)
    {
      LOWORD(v12.__r_.__value_.__l.__data_) = 0;
      cnprint::CNPrinter::Print();
      goto LABEL_35;
    }

    if ((v26 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    v10 = v28 >= 0 ? &v27 : v27;
    if ((sub_1007EB5EC(a1, a2, v10) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 32) == 1)
    {
      std::to_string(&v12, *(a2 + 8));
      cnprint::CNPrinter::Print();
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }

    a2 += 8;
    sub_1007EC8B8(v20);
  }

  LOWORD(v12.__r_.__value_.__l.__data_) = 0;
  if ((v26 & 1) == 0)
  {
    __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
  }

  cnprint::CNPrinter::Print();
LABEL_35:
  i = 0xFFFFFFFFLL;
LABEL_36:
  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  return i;
}

void sub_1007ECC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  sub_1007EC448(&a28);
  sub_100574E64(&a42);
  sub_1006E69AC(&a52);
  if (a65 < 0)
  {
    operator delete(*(v65 + 256));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007ECD0C(uint64_t a1)
{
  *a1 = off_102472248;
  sub_10018F070(a1 + 200, *(a1 + 208));
  sub_1003C93BC(a1 + 176, *(a1 + 184));
  sub_1003C93BC(a1 + 152, *(a1 + 160));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *a1 = off_1024722A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1007ECDAC(uint64_t a1)
{
  v1 = 111808;
  *(a1 + 113576) = off_1024721D0;
  *(a1 + 113248) = off_1024721D0;
  *(a1 + 112920) = off_1024721D0;
  v2 = a1 + 112552;
  v3 = -112608;
  do
  {
    v4 = (a1 + v1);
    v4[93] = off_1024721D0;
    v4[52] = off_1024721D0;
    v4[41] = off_1024721D0;
    *v4 = off_1024721D0;
    v2 -= 1104;
    v1 -= 1104;
    v3 += 1104;
  }

  while (v3);
  return sub_1007ECD0C(a1);
}

void sub_1007ECEBC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 56;
        v7 = (v4 - 40);
        sub_1004CA974(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1007ECF68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1007ED0F0(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1007ED16C(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1007ED458(&v17, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v15 = v14 - 56;
        v18 = (v14 - 40);
        sub_1004CA974(&v18);
        v14 = v15;
      }

      while (v15 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1007ED458(&v16, a2, a2 + v11, v8);
    *(a1 + 8) = sub_1007ED1BC(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void sub_1007ED0F0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 56;
        v6 = (v3 - 40);
        sub_1004CA974(&v6);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1007ED16C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1007ED6D8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1007ED1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      sub_1007ED280(v4 + 16, *(v6 + 16), *(v6 + 24), (*(v6 + 24) - *(v6 + 16)) >> 4);
      *(v4 + 40) = *(v6 + 40);
      v6 += 56;
      v4 = v11 + 56;
      v11 += 56;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1007ED3C8(v8);
  return v4;
}

uint64_t sub_1007ED280(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA834(result, a4);
  }

  return result;
}

void sub_1007ED2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004CA974(&a9);
  _Unwind_Resume(a1);
}

void *sub_1007ED308(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1007ED390(v7);
  return v4;
}

uint64_t sub_1007ED390(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA930(a1);
  }

  return a1;
}

uint64_t sub_1007ED3C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007ED400(a1);
  }

  return a1;
}

void sub_1007ED400(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 56;
      v4 = (v1 - 40);
      sub_1004CA974(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_1007ED458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 24;
    do
    {
      v8 = v7 - 24;
      *a4 = *(v7 - 24);
      if (a4 != v7 - 24)
      {
        sub_1007ED4E0((a4 + 16), *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 4);
      }

      *(a4 + 40) = *(v7 + 16);
      a4 += 56;
      v7 += 56;
    }

    while (v8 + 56 != a3);
    return a3;
  }

  return result;
}

void sub_1007ED4E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_1007ED620(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1004CA834(a1, v11);
    }

    sub_10028C64C();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1007ED660(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_100008080(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_1007ED660(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_1007ED308(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_1007ED620(uint64_t *a1)
{
  if (*a1)
  {
    sub_1004C9BF4(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_1007ED660(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_100008080(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1007ED6D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1007ED734(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1007ED798(result, a2);
  }

  return result;
}

void sub_1007ED77C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ED798(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_1007ED850(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1007ED7E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = v2 + 112 * a2;
    v4 = v2 + 56;
    __asm { FMOV            V2.2D, #-1.0 }

    v10 = 112 * a2;
    do
    {
      *(v4 + 48) = 0;
      *(v4 - 56) = xmmword_101CA73A0;
      *(v4 - 40) = xmmword_101CA73B0;
      *(v4 - 24) = 0x7FF8000000000000;
      *(v4 - 16) = _Q2;
      *v4 = _Q2;
      *(v4 + 16) = _Q2;
      *(v4 + 32) = _Q2;
      v4 += 112;
      v10 -= 112;
    }

    while (v10);
  }

  else
  {
    v3 = *(result + 8);
  }

  *(result + 8) = v3;
  return result;
}

void sub_1007ED850(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1007ED8AC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 4) >= a2)
  {

    sub_1007ED7E8(a1, a2);
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x249249249249249)
    {
      sub_10028C64C();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x124924924924924)
    {
      v9 = 0x249249249249249;
    }

    else
    {
      v9 = v8;
    }

    v17 = a1;
    if (v9)
    {
      sub_1007ED850(a1, v9);
    }

    v14 = 0;
    v15 = 112 * v6;
    v16 = (112 * v6);
    sub_1007EDA60(&v14, a2);
    v10 = *(a1 + 8) - *a1;
    v11 = v15 - v10;
    memcpy((v15 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    if (v12)
    {
      operator delete(v12);
    }
  }
}

void sub_1007EDA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EDA60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (a2)
  {
    v3 = v2 + 112 * a2;
    v4 = v2 + 56;
    __asm { FMOV            V2.2D, #-1.0 }

    v10 = 112 * a2;
    do
    {
      *(v4 + 48) = 0;
      *(v4 - 56) = xmmword_101CA73A0;
      *(v4 - 40) = xmmword_101CA73B0;
      *(v4 - 24) = 0x7FF8000000000000;
      *(v4 - 16) = _Q2;
      *v4 = _Q2;
      *(v4 + 16) = _Q2;
      *(v4 + 32) = _Q2;
      v4 += 112;
      v10 -= 112;
    }

    while (v10);
  }

  else
  {
    v3 = *(result + 16);
  }

  *(result + 16) = v3;
  return result;
}

char *sub_1007EDAC8(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 4) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 4);
    if (v12 > 0x249249249249249)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_1007ED850(a1, v15);
    }

    v39 = 16 * (v13 >> 4);
    v40 = 112 * a5;
    v41 = (v39 + 112 * a5);
    v42 = v39;
    do
    {
      v43 = *v7;
      v44 = *(v7 + 2);
      v42[1] = *(v7 + 1);
      v42[2] = v44;
      *v42 = v43;
      v45 = *(v7 + 3);
      v46 = *(v7 + 4);
      v47 = *(v7 + 6);
      v42[5] = *(v7 + 5);
      v42[6] = v47;
      v42[3] = v45;
      v42[4] = v46;
      v42 += 7;
      v7 += 112;
      v40 -= 112;
    }

    while (v40);
    memcpy(v41, v5, *(a1 + 8) - v5);
    v48 = *a1;
    v49 = &v41[*(a1 + 8) - v5];
    *(a1 + 8) = v5;
    v50 = v5 - v48;
    v51 = (v39 - (v5 - v48));
    memcpy(v51, v48, v50);
    v52 = *a1;
    *a1 = v51;
    *(a1 + 8) = v49;
    *(a1 + 16) = 0;
    if (v52)
    {
      operator delete(v52);
    }

    return v39;
  }

  v16 = v10 - __dst;
  if (0x6DB6DB6DB6DB6DB7 * ((v10 - __dst) >> 4) >= a5)
  {
    v31 = &__dst[112 * a5];
    v32 = (v10 - 112 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[2];
      v33[1] = v32[1];
      v33[2] = v35;
      *v33 = v34;
      v36 = v32[3];
      v37 = v32[4];
      v38 = v32[6];
      v33[5] = v32[5];
      v33[6] = v38;
      v33[3] = v36;
      v33[4] = v37;
      v32 += 7;
      v33 += 7;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(v31, __dst, v10 - v31 - 7);
    }

    v30 = 112 * a5 - 7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], v18 - 7);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[112 * a5];
    v21 = v10 + v18;
    if (&v19[-112 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -112 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        v24[1] = *(v23 - v7 + 16);
        v24[2] = v26;
        *v24 = v25;
        v27 = *(v23 - v7 + 48);
        v28 = *(v23 - v7 + 64);
        v29 = *(v23 - v7 + 96);
        v24[5] = *(v23 - v7 + 80);
        v24[6] = v29;
        v24[3] = v27;
        v24[4] = v28;
        v23 += 112;
        v22 += 112;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(v20, v5, v19 - v20 - 7);
    }

    v30 = v16 - 7;
LABEL_28:
    memmove(v5, v7, v30);
  }

  return v5;
}

void *sub_1007EDDB0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x249249249249249)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x124924924924924)
      {
        v11 = 0x249249249249249;
      }

      else
      {
        v11 = v10;
      }

      sub_1007ED798(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 4) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 7);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 7);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

uint64_t sub_1007EDF28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

uint64_t sub_1007EE034(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v25 = a1;
  if (v6)
  {
    sub_1007EE1B4(a1, v6);
  }

  v7 = 176 * v2;
  v22 = 0;
  v23 = v7;
  *(&v24 + 1) = 0;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 32);
  *(176 * v2 + 0x10) = *(a2 + 16);
  *(176 * v2 + 0x20) = v9;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 96);
  *(176 * v2 + 0x50) = *(a2 + 80);
  *(176 * v2 + 0x60) = v12;
  *(176 * v2 + 0x30) = v10;
  *(176 * v2 + 0x40) = v11;
  v13 = *(a2 + 112);
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  *(176 * v2 + 0x9C) = *(a2 + 156);
  *(176 * v2 + 0x80) = v14;
  *(176 * v2 + 0x90) = v15;
  *(176 * v2 + 0x70) = v13;
  *&v24 = v7 + 176;
  v16 = a1[1];
  v17 = (v7 + *a1 - v16);
  sub_1007EE210(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_1007EE360(&v22);
  return v21;
}

void sub_1007EE1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007EE360(va);
  _Unwind_Resume(a1);
}

void sub_1007EE1B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1007EE210(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v19 = a4;
  v18 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 96);
      v9 = *(v6 + 48);
      v8 = *(v6 + 64);
      a4[5] = *(v6 + 80);
      a4[6] = v7;
      a4[3] = v9;
      a4[4] = v8;
      v11 = *(v6 + 128);
      v10 = *(v6 + 144);
      v12 = *(v6 + 112);
      *(a4 + 156) = *(v6 + 156);
      a4[8] = v11;
      a4[9] = v10;
      a4[7] = v12;
      v13 = *(v6 + 32);
      a4[1] = *(v6 + 16);
      a4[2] = v13;
      v6 += 176;
      a4 += 11;
    }

    while (v6 != a3);
    v19 = a4;
    v17 = 1;
    while (v5 != a3)
    {
      v14 = *(v5 + 8);
      if (v14)
      {
        sub_100008080(v14);
      }

      v5 += 176;
    }
  }

  return sub_1007EE2E4(v16);
}

uint64_t sub_1007EE2E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007EE31C(a1);
  }

  return a1;
}

void sub_1007EE31C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 168);
    if (v3)
    {
      sub_100008080(v3);
    }

    v1 -= 176;
  }
}

void **sub_1007EE360(void **a1)
{
  sub_1007EE394(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007EE394(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 176;
    v4 = *(v1 - 168);
    if (v4)
    {
      sub_100008080(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 176;
    }
  }
}

void sub_1007EE3E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007EE43C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007EE43C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 176)
  {
    v4 = *(i - 168);
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1007EE4B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA834(result, a4);
  }

  return result;
}

void sub_1007EE520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004CA974(&a9);
  _Unwind_Resume(a1);
}

void *sub_1007EE540(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1007EE5C8(v7);
  return v4;
}

uint64_t sub_1007EE5C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA930(a1);
  }

  return a1;
}

void *sub_1007EE600(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 4) >= a5)
    {
      v16 = v9 - __dst;
      if (0x6DB6DB6DB6DB6DB7 * ((v9 - __dst) >> 4) >= a5)
      {
        v25 = &__dst[112 * a5];
        v26 = &v9[-112 * a5];
        v27 = a1[1];
        while (v26 < v9)
        {
          v28 = *v26;
          v29 = *(v26 + 2);
          v27[1] = *(v26 + 1);
          v27[2] = v29;
          *v27 = v28;
          v30 = *(v26 + 3);
          v31 = *(v26 + 4);
          v32 = *(v26 + 6);
          v27[5] = *(v26 + 5);
          v27[6] = v32;
          v27[3] = v30;
          v27[4] = v31;
          v26 += 112;
          v27 += 7;
        }

        a1[1] = v27;
        if (v9 != v25)
        {
          memmove(v25, __dst, v9 - v25 - 7);
        }

        v41 = 112 * a5 - 7;
      }

      else
      {
        v17 = &__src[v16];
        v18 = a1[1];
        v19 = v18;
        while (v17 != a4)
        {
          v20 = *v17;
          v21 = *(v17 + 2);
          *(v19 + 1) = *(v17 + 1);
          *(v19 + 2) = v21;
          *v19 = v20;
          v22 = *(v17 + 3);
          v23 = *(v17 + 4);
          v24 = *(v17 + 6);
          *(v19 + 5) = *(v17 + 5);
          *(v19 + 6) = v24;
          *(v19 + 3) = v22;
          *(v19 + 4) = v23;
          v17 += 112;
          v19 += 112;
          v18 += 112;
        }

        a1[1] = v18;
        if (v16 < 1)
        {
          return v5;
        }

        v33 = &__dst[112 * a5];
        v34 = &v18[-112 * a5];
        v35 = v18;
        while (v34 < v9)
        {
          v36 = *v34;
          v37 = *(v34 + 2);
          *(v35 + 1) = *(v34 + 1);
          *(v35 + 2) = v37;
          *v35 = v36;
          v38 = *(v34 + 3);
          v39 = *(v34 + 4);
          v40 = *(v34 + 6);
          *(v35 + 5) = *(v34 + 5);
          *(v35 + 6) = v40;
          *(v35 + 3) = v38;
          *(v35 + 4) = v39;
          v34 += 112;
          v35 += 112;
        }

        a1[1] = v35;
        if (v19 != v33)
        {
          memmove(&__dst[112 * a5], __dst, v18 - v33 - 7);
        }

        v41 = v16 - 7;
      }

      memmove(v5, v7, v41);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * (&v9[-*a1] >> 4);
    if (v12 > 0x249249249249249)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_1007ED850(a1, v15);
    }

    v42 = 16 * (v13 >> 4);
    v43 = 112 * a5;
    v44 = (v42 + 112 * a5);
    v45 = v42;
    do
    {
      v46 = *v7;
      v47 = v7[2];
      v45[1] = v7[1];
      v45[2] = v47;
      *v45 = v46;
      v48 = v7[3];
      v49 = v7[4];
      v50 = v7[6];
      v45[5] = v7[5];
      v45[6] = v50;
      v45[3] = v48;
      v45[4] = v49;
      v45 += 7;
      v7 += 7;
      v43 -= 112;
    }

    while (v43);
    memcpy(v44, v5, a1[1] - v5);
    v51 = *a1;
    v52 = &v44[a1[1] - v5];
    a1[1] = v5;
    v53 = v5 - v51;
    v54 = (v42 - (v5 - v51));
    memcpy(v54, v51, v53);
    v55 = *a1;
    *a1 = v54;
    a1[1] = v52;
    a1[2] = 0;
    if (v55)
    {
      operator delete(v55);
    }

    return v42;
  }

  return v5;
}

uint64_t *sub_1007EE8E0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1007EE9C0(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1007EEA40(a1, v4, a2);
      a2 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1007EEA40(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *sub_1007EEAD8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1007EEAD8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 28), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 28) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 28))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_1007EEC80(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_1007EA420(a1, v4, a2);
      a2 += 16;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}