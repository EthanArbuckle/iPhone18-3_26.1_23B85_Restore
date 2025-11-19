@interface CLAvailabilityTileParser
+ (BOOL)generateAvlTileFromJSON:(id)a3 atPath:(id)a4;
+ (void)_setParamOverrides:(void *)a3 fromDict:(id)a4;
- (BOOL)_openTileFileForIncrementalIO;
- (CLAvailabilityTileParser)init;
- (CLAvailabilityTileParser)initWithEmptyTile;
- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)a3;
- (id).cxx_construct;
- (int)numVenuesExpected;
@end

@implementation CLAvailabilityTileParser

- (int)numVenuesExpected
{
  if ([(CLAvailabilityTileParser *)self tileIsOpenForIncrementalIO])
  {
    return *(self->_avlTile.__ptr_ + 14);
  }

  else
  {
    return [(CLAvailabilityTileParser *)self venuesCount];
  }
}

- (BOOL)_openTileFileForIncrementalIO
{
  path = self->_path;
  if (!path)
  {
    if (qword_10045B060 == -1)
    {
      v7 = qword_10045B068;
      if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      sub_100382E38();
      v7 = qword_10045B068;
      if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "_openTileFileForIncrementalIO: Must specify a valid path to deserialize the availability tile!", &v10, 2u);
    return 0;
  }

  v3 = [(NSURL *)path path];
  v4 = [v3 UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v13 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;

  sub_100002F5C(&__dst, 0, &v10);
  if (v10 > 1)
  {
    v11 = 1;
    sub_10016F9C0();
  }

  if (qword_10045B060 == -1)
  {
    v8 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_100382E10();
  v8 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "_openTileFileForIncrementalIO: tile doesn't exist on-disk. attempting to deserialize will fail", &v10, 2u);
  }

LABEL_17:
  if (v13 < 0)
  {
    operator delete(__dst);
  }

  return 0;
}

- (CLAvailabilityTileParser)init
{
  v7.receiver = self;
  v7.super_class = CLAvailabilityTileParser;
  v2 = [(CLAvailabilityTileParser *)&v7 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  path = v2->_path;
  v2->_path = 0;

  cntrl = v3->_avlTile.__cntrl_;
  v3->_avlTile.__ptr_ = 0;
  v3->_avlTile.__cntrl_ = 0;
  if (!cntrl || atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v3;
  }

  (cntrl->__on_zero_shared)(cntrl);
  std::__shared_weak_count::__release_weak(cntrl);
  return v3;
}

- (CLAvailabilityTileParser)initWithEmptyTile
{
  v5.receiver = self;
  v5.super_class = CLAvailabilityTileParser;
  v2 = [(CLAvailabilityTileParser *)&v5 init];
  if (v2)
  {
    path = v2->_path;
    v2->_path = 0;

    operator new();
  }

  return 0;
}

- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CLAvailabilityTileParser;
  v6 = [(CLAvailabilityTileParser *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_path, a3), ![(CLAvailabilityTileParser *)v7 _openTileFileForIncrementalIO]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (void)_setParamOverrides:(void *)a3 fromDict:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForKey:@"notifyIntervalNanos"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"notifyIntervalNanos"];
    v8 = [v7 unsignedIntValue];
    *(a3 + 75) |= 1u;
    *(a3 + 2) = v8;
  }

  v9 = [v5 valueForKey:@"numParticles"];

  if (v9)
  {
    v10 = [v5 objectForKeyedSubscript:@"numParticles"];
    v11 = [v10 unsignedIntValue];
    *(a3 + 75) |= 2u;
    *(a3 + 6) = v11;
  }

  v12 = [v5 valueForKey:@"localizerType"];

  if (v12)
  {
    v13 = [v5 objectForKeyedSubscript:@"localizerType"];
    v14 = [v13 unsignedIntValue];
    *(a3 + 75) |= 4u;
    *(a3 + 7) = v14;
  }

  v15 = [v5 valueForKey:@"modeEstimator"];

  if (v15)
  {
    v16 = [v5 objectForKeyedSubscript:@"modeEstimator"];
    v17 = [v16 unsignedIntValue];
    *(a3 + 75) |= 0x10u;
    *(a3 + 9) = v17;
  }

  v18 = [v5 valueForKey:@"confidenceFactor"];

  if (v18)
  {
    v19 = [v5 objectForKeyedSubscript:@"confidenceFactor"];
    [v19 floatValue];
    *(a3 + 75) |= 0x20u;
    *(a3 + 10) = v20;
  }

  v21 = [v5 valueForKey:@"motionPdrUnmodelledHeadingVariancePerSecond"];

  if (v21)
  {
    v22 = [v5 objectForKeyedSubscript:@"motionPdrUnmodelledHeadingVariancePerSecond"];
    [v22 floatValue];
    *(a3 + 75) |= 0x40u;
    *(a3 + 11) = v23;
  }

  v24 = [v5 valueForKey:@"time2dMotionVariancePerSecond"];

  if (v24)
  {
    v25 = [v5 objectForKeyedSubscript:@"time2dMotionVariancePerSecond"];
    [v25 floatValue];
    *(a3 + 75) |= 0x800u;
    *(a3 + 24) = v26;
  }

  v27 = [v5 valueForKey:@"secondsBetweenVenueTransitions"];

  if (v27)
  {
    v28 = [v5 objectForKeyedSubscript:@"secondsBetweenVenueTransitions"];
    [v28 doubleValue];
    *(a3 + 75) |= 0x8000u;
    *(a3 + 14) = v29;
  }

  v30 = [v5 valueForKey:@"coarseIndoorFloorSelection"];

  if (v30)
  {
    v31 = [v5 objectForKeyedSubscript:@"coarseIndoorFloorSelection"];
    v32 = [v31 unsignedIntValue];
    *(a3 + 75) |= 1u;
    *(a3 + 2) = v32;
  }

  v33 = [v5 valueForKey:@"gpsStrobeDistance"];

  if (v33)
  {
    v34 = [v5 objectForKeyedSubscript:@"gpsStrobeDistance"];
    [v34 floatValue];
    *(a3 + 75) |= 0x20000u;
    *(a3 + 30) = v35;
  }

  v36 = [v5 valueForKey:@"lifespanDeepIndoors"];

  if (v36)
  {
    v37 = [v5 objectForKeyedSubscript:@"lifespanDeepIndoors"];
    [v37 floatValue];
    *(a3 + 75) |= 0x40000u;
    *(a3 + 31) = v38;
  }

  v39 = [v5 valueForKey:@"lifespanNearVenueEdge"];

  if (v39)
  {
    v40 = [v5 objectForKeyedSubscript:@"lifespanNearVenueEdge"];
    [v40 floatValue];
    *(a3 + 75) |= 0x80000u;
    *(a3 + 32) = v41;
  }

  v42 = [v5 valueForKey:@"lifespanAuxiliary"];

  if (v42)
  {
    v43 = [v5 objectForKeyedSubscript:@"lifespanAuxiliary"];
    [v43 floatValue];
    *(a3 + 75) |= 0x100000u;
    *(a3 + 33) = v44;
  }

  v45 = [v5 valueForKey:@"wifiLikelihoodOnMapPriorFactor"];

  if (v45)
  {
    v46 = [v5 objectForKeyedSubscript:@"wifiLikelihoodOnMapPriorFactor"];
    [v46 floatValue];
    *(a3 + 75) |= 0x200000u;
    *(a3 + 34) = v47;
  }

  v48 = [v5 valueForKey:@"coarseIndoorRadioOddsTransform"];

  if (v48)
  {
    v49 = [v5 objectForKeyedSubscript:@"coarseIndoorRadioOddsTransform"];
    v50 = [v49 unsignedIntValue];
    *(a3 + 75) |= 0x800000u;
    *(a3 + 35) = v50;
  }

  v51 = [v5 valueForKey:@"feasibleLocationRequiredPrbIndoor"];

  if (v51)
  {
    v52 = [v5 objectForKeyedSubscript:@"feasibleLocationRequiredPrbIndoor"];
    [v52 doubleValue];
    *(a3 + 75) |= 0x1000000u;
    *(a3 + 19) = v53;
  }

  v54 = [v5 valueForKey:@"assignFloorWeightsByLikelihood"];

  if (v54)
  {
    v55 = [v5 objectForKeyedSubscript:@"assignFloorWeightsByLikelihood"];
    v56 = [v55 BOOLValue];
    *(a3 + 75) |= 0x10000000u;
    *(a3 + 192) = v56;
  }

  v57 = [v5 valueForKey:@"priorOnMapWeightFraction"];

  if (v57)
  {
    v58 = [v5 objectForKeyedSubscript:@"priorOnMapWeightFraction"];
    [v58 doubleValue];
    *(a3 + 75) |= 0x20000000u;
    *(a3 + 23) = v59;
  }

  v60 = [v5 valueForKey:@"enableBaroAidedFloorTransition"];

  if (v60)
  {
    v61 = [v5 objectForKeyedSubscript:@"enableBaroAidedFloorTransition"];
    v62 = [v61 BOOLValue];
    *(a3 + 75) |= 0x40000000u;
    *(a3 + 193) = v62;
  }

  v63 = [v5 valueForKey:@"time2dMotionVariancePerSecondWifi2"];

  if (v63)
  {
    v64 = [v5 objectForKeyedSubscript:@"time2dMotionVariancePerSecondWifi2"];
    [v64 floatValue];
    *(a3 + 75) |= 0x80000000;
    *(a3 + 49) = v65;
  }

  v66 = [v5 valueForKey:@"bilinearObservations"];

  if (v66)
  {
    v67 = [v5 objectForKeyedSubscript:@"bilinearObservations"];
    v68 = [v67 BOOLValue];
    *(a3 + 76) |= 2u;
    *(a3 + 194) = v68;
  }

  v69 = [v5 valueForKey:@"walkableBlueDotSearchRadius"];

  if (v69)
  {
    v70 = [v5 objectForKeyedSubscript:@"walkableBlueDotSearchRadius"];
    [v70 floatValue];
    *(a3 + 76) |= 0x10u;
    *(a3 + 56) = v71;
  }

  v72 = [v5 valueForKey:@"motionPdrUnmodelledHeadingVariancePerSecondWifi2"];

  if (v72)
  {
    v73 = [v5 objectForKeyedSubscript:@"motionPdrUnmodelledHeadingVariancePerSecondWifi2"];
    [v73 floatValue];
    *(a3 + 76) |= 0x40u;
    *(a3 + 57) = v74;
  }

  v75 = [v5 valueForKey:@"particleFilterOffMapProbabilityFloor"];

  if (v75)
  {
    v76 = [v5 objectForKeyedSubscript:@"particleFilterOffMapProbabilityFloor"];
    [v76 floatValue];
    *(a3 + 76) |= 0x100u;
    *(a3 + 62) = v77;
  }

  v78 = [v5 valueForKey:@"coarseOutdoorProbabilityFloor"];

  if (v78)
  {
    v79 = [v5 objectForKeyedSubscript:@"coarseOutdoorProbabilityFloor"];
    [v79 floatValue];
    *(a3 + 76) |= 0x200u;
    *(a3 + 63) = v80;
  }

  v81 = [v5 valueForKey:@"pdr"];

  if (v81)
  {
    if (qword_10045B060 == -1)
    {
      v82 = qword_10045B068;
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      sub_100382E38();
      v82 = qword_10045B068;
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }
    }

    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pdr is not currently supported", v113, 2u);
    goto LABEL_55;
  }

LABEL_56:
  v83 = [v5 valueForKey:@"pedomCompassMotionWifi2"];

  if (!v83)
  {
    goto LABEL_61;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v84 = qword_10045B068;
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v84 = qword_10045B068;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
LABEL_59:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pedomCompassMotionWifi2 is not currently supported", v113, 2u);
  }

LABEL_60:

LABEL_61:
  v85 = [v5 valueForKey:@"deadReckoning"];

  if (!v85)
  {
    goto LABEL_66;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v86 = qword_10045B068;
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v86 = qword_10045B068;
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
LABEL_64:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning deadReckoning is not currently supported", v113, 2u);
  }

LABEL_65:

LABEL_66:
  v87 = [v5 valueForKey:@"coarseIndoor"];

  if (!v87)
  {
    goto LABEL_71;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v88 = qword_10045B068;
    if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v88 = qword_10045B068;
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
LABEL_69:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning coarseIndoor is not currently supported", v113, 2u);
  }

LABEL_70:

LABEL_71:
  v89 = [v5 valueForKey:@"gpsFusionGlobalParams"];

  if (!v89)
  {
    goto LABEL_76;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v90 = qword_10045B068;
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v90 = qword_10045B068;
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
LABEL_74:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning gpsFusionGlobalParams is not currently supported", v113, 2u);
  }

LABEL_75:

LABEL_76:
  v91 = [v5 valueForKey:@"wifi"];

  if (!v91)
  {
    goto LABEL_81;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v92 = qword_10045B068;
    if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v92 = qword_10045B068;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
LABEL_79:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning wifi is not currently supported", v113, 2u);
  }

LABEL_80:

LABEL_81:
  v93 = [v5 valueForKey:@"bodyFixed"];

  if (!v93)
  {
    goto LABEL_86;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v94 = qword_10045B068;
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v94 = qword_10045B068;
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
LABEL_84:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning bodyFixed is not currently supported", v113, 2u);
  }

LABEL_85:

LABEL_86:
  v95 = [v5 valueForKey:@"motionTruth"];

  if (!v95)
  {
    goto LABEL_91;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v96 = qword_10045B068;
    if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v96 = qword_10045B068;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
LABEL_89:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning motionTruth is not currently supported", v113, 2u);
  }

LABEL_90:

LABEL_91:
  v97 = [v5 valueForKey:@"multiphoneDbm"];

  if (!v97)
  {
    goto LABEL_96;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v98 = qword_10045B068;
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v98 = qword_10045B068;
  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
  {
LABEL_94:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning multiphoneDbm is not currently supported", v113, 2u);
  }

LABEL_95:

LABEL_96:
  v99 = [v5 valueForKey:@"pedomCompassMotion"];

  if (!v99)
  {
    goto LABEL_101;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v100 = qword_10045B068;
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v100 = qword_10045B068;
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
LABEL_99:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pedomCompassMotion is not currently supported", v113, 2u);
  }

LABEL_100:

LABEL_101:
  v101 = [v5 valueForKey:@"injection"];

  if (!v101)
  {
    goto LABEL_106;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v102 = qword_10045B068;
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v102 = qword_10045B068;
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
LABEL_104:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning injection is not currently supported", v113, 2u);
  }

LABEL_105:

LABEL_106:
  v103 = [v5 valueForKey:@"beacon"];

  if (!v103)
  {
    goto LABEL_111;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v104 = qword_10045B068;
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  v104 = qword_10045B068;
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
LABEL_109:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning beacon is not currently supported", v113, 2u);
  }

LABEL_110:

LABEL_111:
  v105 = [v5 valueForKey:@"wallBehavior"];

  if (!v105)
  {
    goto LABEL_116;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v106 = qword_10045B068;
    if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v106 = qword_10045B068;
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
LABEL_114:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning wallBehavior is not currently supported", v113, 2u);
  }

LABEL_115:

LABEL_116:
  v107 = [v5 valueForKey:@"dynamicUniverseParameters"];

  if (!v107)
  {
    goto LABEL_121;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v108 = qword_10045B068;
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  v108 = qword_10045B068;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
LABEL_119:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning dynamicUniverseParameters is not currently supported", v113, 2u);
  }

LABEL_120:

LABEL_121:
  v109 = [v5 valueForKey:@"dynamicUniverseParameters"];

  if (!v109)
  {
    goto LABEL_126;
  }

  if (qword_10045B060 != -1)
  {
    sub_100382E10();
    v110 = qword_10045B068;
    if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  v110 = qword_10045B068;
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
LABEL_124:
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning dynamicUniverseParameters is not currently supported", v113, 2u);
  }

LABEL_125:

LABEL_126:
  v111 = [v5 valueForKey:@"altitude"];

  if (v111)
  {
    if (qword_10045B060 == -1)
    {
      v112 = qword_10045B068;
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
LABEL_130:

        goto LABEL_131;
      }
    }

    else
    {
      sub_100382E10();
      v112 = qword_10045B068;
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_130;
      }
    }

    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning altitude is not currently supported", v113, 2u);
    goto LABEL_130;
  }

LABEL_131:
}

+ (BOOL)generateAvlTileFromJSON:(id)a3 atPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v180 = v5;
  v174 = v6;
  if (v5)
  {
    if (v6)
    {
      [v5 dataUsingEncoding:4];
      v173 = v204 = 0;
      v179 = [NSJSONSerialization JSONObjectWithData:"JSONObjectWithData:options:error:" options:? error:?];
      v176 = 0;
      if (v176)
      {
        if (qword_10045B060 != -1)
        {
          sub_100382E10();
        }

        log = qword_10045B068;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v7 = [v176 description];
          v8 = v7;
          v9 = [v7 UTF8String];
          v10 = v180;
          v11 = [v180 UTF8String];
          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v11;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, failed to generate, error=%s, str=\n%s\n", buf, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        v13 = [v179 objectForKey:@"venues"];
        v172 = v13;
        if (v13)
        {
          if ([v13 count])
          {
            sub_100342230(buf);
            if (qword_10045B060 != -1)
            {
              sub_100382E10();
            }

            v14 = qword_10045B068;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = [v172 count];
              LODWORD(v205[0]) = 134217984;
              *(v205 + 4) = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, adding %lu venues", v205, 0xCu);
            }

            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            log = v172;
            v170 = [log countByEnumeratingWithState:&v200 objects:v209 count:16];
            if (v170)
            {
              v171 = *v201;
              do
              {
                for (i = 0; i != v170; i = i + 1)
                {
                  if (*v201 != v171)
                  {
                    objc_enumerationMutation(log);
                  }

                  v178 = *(*(&v200 + 1) + 8 * i);
                  v16 = *v211;
                  v17 = *&buf[24];
                  if (*&buf[24] >= *v211)
                  {
                    if (*v211 == *&v211[4])
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&buf[16], *v211 + 1);
                      v16 = *v211;
                    }

                    *v211 = v16 + 1;
                    operator new();
                  }

                  ++*&buf[24];
                  v18 = *(*&buf[16] + 8 * v17);
                  v19 = [v178 objectForKey:@"exteriors"];
                  v198 = 0u;
                  v199 = 0u;
                  v196 = 0u;
                  v197 = 0u;
                  obj = v19;
                  v20 = [obj countByEnumeratingWithState:&v196 objects:v208 count:16];
                  if (v20)
                  {
                    v182 = *v197;
                    do
                    {
                      v183 = v20;
                      for (j = 0; j != v183; j = j + 1)
                      {
                        if (*v197 != v182)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v22 = *(*(&v196 + 1) + 8 * j);
                        v23 = *(v18 + 52);
                        v24 = *(v18 + 48);
                        if (v24 >= v23)
                        {
                          if (v23 == *(v18 + 56))
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 40), v23 + 1);
                            v23 = *(v18 + 52);
                          }

                          *(v18 + 52) = v23 + 1;
                          operator new();
                        }

                        v25 = *(v18 + 40);
                        *(v18 + 48) = v24 + 1;
                        v26 = *(v25 + 8 * v24);
                        v27 = [v22 objectForKey:@"latitude"];
                        v184 = v22;
                        v28 = [v22 objectForKey:@"longitude"];
                        if (qword_10045B060 != -1)
                        {
                          sub_100382E10();
                        }

                        v29 = qword_10045B068;
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                        {
                          v30 = [v27 count];
                          LODWORD(v205[0]) = 134217984;
                          *(v205 + 4) = v30;
                          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, adding %lu exterior points", v205, 0xCu);
                        }

                        for (k = 0; k < [v27 count]; ++k)
                        {
                          v32 = [v27 objectAtIndex:k];
                          [v32 doubleValue];
                          v34 = *(v26 + 24);
                          v35 = *(v26 + 16);
                          if (v34 == *(v26 + 28))
                          {
                            if (2 * v34 <= v34 + 1)
                            {
                              v36 = v34 + 1;
                            }

                            else
                            {
                              v36 = 2 * v34;
                            }

                            if (v36 <= 4)
                            {
                              v36 = 4;
                            }

                            *(v26 + 28) = v36;
                            operator new[]();
                          }

                          v37 = *(v26 + 16);
                          *(v26 + 24) = v34 + 1;
                          *(v37 + 8 * v34) = v33;

                          v38 = [v28 objectAtIndex:k];
                          [v38 doubleValue];
                          v40 = *(v26 + 48);
                          v41 = *(v26 + 40);
                          if (v40 == *(v26 + 52))
                          {
                            if (2 * v40 <= v40 + 1)
                            {
                              v42 = v40 + 1;
                            }

                            else
                            {
                              v42 = 2 * v40;
                            }

                            if (v42 <= 4)
                            {
                              v42 = 4;
                            }

                            *(v26 + 52) = v42;
                            operator new[]();
                          }

                          v43 = *(v26 + 40);
                          *(v26 + 48) = v40 + 1;
                          *(v43 + 8 * v40) = v39;
                        }

                        v44 = [v184 valueForKey:@"tolerance"];
                        [v44 doubleValue];
                        *(v26 + 76) |= 4u;
                        *(v26 + 64) = v45;
                      }

                      v20 = [obj countByEnumeratingWithState:&v196 objects:v208 count:16];
                    }

                    while (v20);
                  }

                  v194 = 0u;
                  v195 = 0u;
                  v193 = 0u;
                  v192 = 0u;
                  v46 = [v178 objectForKey:@"ids"];
                  v47 = [v46 countByEnumeratingWithState:&v192 objects:v207 count:16];
                  if (v47)
                  {
                    v48 = *v193;
                    do
                    {
                      for (m = 0; m != v47; m = m + 1)
                      {
                        if (*v193 != v48)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v50 = *(*(&v192 + 1) + 8 * m);
                        v51 = v50;
                        v52 = [v50 UTF8String];
                        v53 = v52;
                        v54 = *(v18 + 28);
                        v55 = *(v18 + 24);
                        if (v55 >= v54)
                        {
                          if (v54 == *(v18 + 32))
                          {
                            v52 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 16), v54 + 1);
                            v54 = *(v18 + 28);
                          }

                          *(v18 + 28) = v54 + 1;
                          v57 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v52);
                          v58 = *(v18 + 16);
                          v59 = *(v18 + 24);
                          *(v18 + 24) = v59 + 1;
                          *(v58 + 8 * v59) = v57;
                        }

                        else
                        {
                          v56 = *(v18 + 16);
                          *(v18 + 24) = v55 + 1;
                          v57 = *(v56 + 8 * v55);
                        }

                        std::string::assign(v57, v53);
                        if (qword_10045B060 != -1)
                        {
                          sub_100382E10();
                        }

                        v60 = qword_10045B068;
                        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                        {
                          v61 = v50;
                          v62 = [v50 UTF8String];
                          LODWORD(v205[0]) = 136315138;
                          *(v205 + 4) = v62;
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, added venue ID %s", v205, 0xCu);
                        }
                      }

                      v47 = [v46 countByEnumeratingWithState:&v192 objects:v207 count:16];
                    }

                    while (v47);
                  }

                  v63 = [v178 valueForKey:@"context"];
                  v64 = [v63 intValue];

                  if (v64 - 1 < 2)
                  {
                    *(v18 + 104) |= 8u;
                    *(v18 + 96) = v64;
                  }

                  v65 = [v178 objectForKey:@"tileDownloadConfiguration"];
                  v66 = [v65 objectForKey:@"floorIdxsForWifiDownloadOnly"];
                  *(v18 + 104) |= 4u;
                  v67 = *(v18 + 64);
                  if (!v67)
                  {
                    operator new();
                  }

                  v190 = 0u;
                  v191 = 0u;
                  v188 = 0u;
                  v189 = 0u;
                  v68 = v66;
                  v69 = [v68 countByEnumeratingWithState:&v188 objects:v206 count:16];
                  if (v69)
                  {
                    v70 = *v189;
                    do
                    {
                      for (n = 0; n != v69; n = n + 1)
                      {
                        if (*v189 != v70)
                        {
                          objc_enumerationMutation(v68);
                        }

                        v73 = [*(*(&v188 + 1) + 8 * n) unsignedIntValue];
                        v74 = *(v67 + 24);
                        v75 = *(v67 + 16);
                        if (v74 == *(v67 + 28))
                        {
                          if (2 * v74 <= v74 + 1)
                          {
                            v76 = v74 + 1;
                          }

                          else
                          {
                            v76 = 2 * v74;
                          }

                          if (v76 <= 4)
                          {
                            v76 = 4;
                          }

                          *(v67 + 28) = v76;
                          operator new[]();
                        }

                        v72 = *(v67 + 16);
                        *(v67 + 24) = v74 + 1;
                        *(v72 + 4 * v74) = v73;
                      }

                      v69 = [v68 countByEnumeratingWithState:&v188 objects:v206 count:16];
                    }

                    while (v69);
                  }
                }

                v170 = [log countByEnumeratingWithState:&v200 objects:v209 count:16];
              }

              while (v170);
            }

            v77 = [v179 valueForKey:@"parameterOverrides"];
            v78 = v77 == 0;

            if (!v78)
            {
              v226 |= 2u;
              v79 = v212;
              if (!v212)
              {
                operator new();
              }

              v80 = [v179 objectForKeyedSubscript:@"parameterOverrides"];
              [CLAvailabilityTileParser _setParamOverrides:v79 fromDict:v80];
            }

            v81 = [v179 objectForKey:@"motionActivityDebounceParameters"];
            v82 = v81 == 0;

            if (!v82)
            {
              v83 = [v179 objectForKey:@"motionActivityDebounceParameters"];
              v84 = [v83 valueForKey:@"nonFitnessToCyclingSeconds"];
              v85 = v84 == 0;

              if (!v85)
              {
                v226 |= 0x4000u;
                v86 = v224;
                if (!v224)
                {
                  operator new();
                }

                v87 = [v83 valueForKey:@"nonFitnessToCyclingSeconds"];
                v88 = [v87 unsignedIntValue];
                *(v86 + 36) |= 1u;
                *(v86 + 16) = v88;
              }

              v89 = [v83 valueForKey:@"nonFitnessToRunningSeconds"];
              v90 = v89 == 0;

              if (!v90)
              {
                v226 |= 0x4000u;
                v91 = v224;
                if (!v224)
                {
                  operator new();
                }

                v92 = [v83 valueForKey:@"nonFitnessToRunningSeconds"];
                v93 = [v92 unsignedIntValue];
                *(v91 + 36) |= 2u;
                *(v91 + 20) = v93;
              }

              v94 = [v83 valueForKey:@"runningToNonFitnessSeconds"];
              v95 = v94 == 0;

              if (!v95)
              {
                v226 |= 0x4000u;
                v96 = v224;
                if (!v224)
                {
                  operator new();
                }

                v97 = [v83 valueForKey:@"runningToNonFitnessSeconds"];
                v98 = [v97 unsignedIntValue];
                *(v96 + 36) |= 4u;
                *(v96 + 24) = v98;
              }

              v99 = [v83 valueForKey:@"cyclingToNonFitnessSeconds"];
              v100 = v99 == 0;

              if (!v100)
              {
                v226 |= 0x4000u;
                v101 = v224;
                if (!v224)
                {
                  operator new();
                }

                v102 = [v83 valueForKey:@"cyclingToNonFitnessSeconds"];
                v103 = [v102 unsignedIntValue];
                *(v101 + 36) |= 8u;
                *(v101 + 28) = v103;
              }
            }

            v104 = [v179 valueForKey:@"availabilityZScoreConfidenceInterval"];
            v105 = v104 == 0;

            if (!v105)
            {
              v106 = [v179 valueForKey:@"availabilityZScoreConfidenceInterval"];
              [v106 doubleValue];
              v226 |= 4u;
              v213 = v107;
            }

            v108 = [v179 valueForKey:@"indoorPrefetchRadiusKM"];
            v109 = v108 == 0;

            if (!v109)
            {
              v110 = [v179 valueForKey:@"indoorPrefetchRadiusKM"];
              v111 = [v110 unsignedIntValue];
              v226 |= 8u;
              v214 = v111;
            }

            v112 = [v179 valueForKey:@"regionalPrefetchRadiusKM"];
            v113 = v112 == 0;

            if (!v113)
            {
              v114 = [v179 valueForKey:@"regionalPrefetchRadiusKM"];
              v115 = [v114 unsignedIntValue];
              v226 |= 0x10u;
              v215 = v115;
            }

            v116 = [v179 valueForKey:@"indoorPrefetchMaxFloorCount"];
            v117 = v116 == 0;

            if (!v117)
            {
              v118 = [v179 valueForKey:@"indoorPrefetchMaxFloorCount"];
              v119 = [v118 unsignedIntValue];
              v226 |= 0x20u;
              v216 = v119;
            }

            v120 = [v179 valueForKey:@"regionalPrefetchMaxFloorCount"];
            v121 = v120 == 0;

            if (!v121)
            {
              v122 = [v179 valueForKey:@"regionalPrefetchMaxFloorCount"];
              v123 = [v122 unsignedIntValue];
              v226 |= 0x40u;
              v217 = v123;
            }

            v124 = [v179 valueForKey:@"indoorPrefetchMaxTotalBytes"];
            v125 = v124 == 0;

            if (!v125)
            {
              v126 = [v179 valueForKey:@"indoorPrefetchMaxTotalBytes"];
              v127 = [v126 unsignedIntValue];
              v226 |= 0x80u;
              v218 = v127;
            }

            v128 = [v179 valueForKey:@"regionalPrefetchMaxTotalBytes"];
            v129 = v128 == 0;

            if (!v129)
            {
              v130 = [v179 valueForKey:@"regionalPrefetchMaxTotalBytes"];
              v131 = [v130 unsignedIntValue];
              v226 |= 0x100u;
              v219 = v131;
            }

            v132 = [v179 valueForKey:@"indoorLocationOfInterestMergeRadiusKM"];
            v133 = v132 == 0;

            if (!v133)
            {
              v134 = [v179 valueForKey:@"indoorLocationOfInterestMergeRadiusKM"];
              v135 = [v134 unsignedIntValue];
              v226 |= 0x200u;
              v220 = v135;
            }

            v136 = [v179 valueForKey:@"regionalLocationOfInterestMergeRadiusKM"];
            v137 = v136 == 0;

            if (!v137)
            {
              v138 = [v179 valueForKey:@"regionalLocationOfInterestMergeRadiusKM"];
              v139 = [v138 unsignedIntValue];
              v226 |= 0x400u;
              v221 = v139;
            }

            v140 = [v179 valueForKey:@"preferPredictionWithinNActivityCycles"];
            v141 = v140 == 0;

            if (!v141)
            {
              v142 = [v179 valueForKey:@"preferPredictionWithinNActivityCycles"];
              v143 = [v142 unsignedIntValue];
              v226 |= 0x800u;
              v222 = v143;
            }

            v144 = [v179 valueForKey:@"indoorNumberOfDaysBeforeTileRedownload"];
            v145 = v144 == 0;

            if (!v145)
            {
              v146 = [v179 valueForKey:@"indoorNumberOfDaysBeforeTileRedownload"];
              [v146 floatValue];
              v226 |= 0x1000u;
              v223 = v147;
            }

            v148 = [v179 valueForKey:@"regionalNumberOfDaysBeforeTileRedownload"];
            v149 = v148 == 0;

            if (!v149)
            {
              v150 = [v179 valueForKey:@"regionalNumberOfDaysBeforeTileRedownload"];
              [v150 floatValue];
              v226 |= 0x2000u;
              v225 = v151;
            }

            v152 = [v174 path];
            v153 = v152;
            v154 = [v152 UTF8String];
            v155 = strlen(v154);
            if (v155 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_10000D39C();
            }

            v156 = v155;
            if (v155 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v155;
            if (v155)
            {
              memmove(&__dst, v154, v155);
            }

            __dst.__r_.__value_.__s.__data_[v156] = 0;

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100003228(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __dst;
            }

            HIBYTE(v205[2]) = 16;
            strcpy(v205, ".protoToFile-tmp");
            sub_10001AEA8(&__p, v205);
            if (SHIBYTE(v205[2]) < 0)
            {
              operator delete(v205[0]);
            }

            sub_100170A3C(&__p, 2, &v185);
            wireless_diagnostics::google::protobuf::io::FileOutputStream::FileOutputStream(v205, v185, -1);
            sub_10002B4FC(buf);
            wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(v205);
            sub_100170CB4(&v185);
            sub_10001A224(&__p, &__dst, 0);
            if (qword_10045B060 != -1)
            {
              sub_100382E10();
            }

            v163 = qword_10045B068;
            if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
            {
              p_dst = &__dst;
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              LODWORD(v205[0]) = 136315138;
              *(v205 + 4) = p_dst;
              _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, find tile at %s", v205, 0xCu);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            sub_100346238(buf);
            v12 = 1;
            goto LABEL_154;
          }

          if (qword_10045B060 != -1)
          {
            sub_100382E10();
          }

          v157 = qword_10045B068;
          if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            v160 = v180;
            v161 = [v180 UTF8String];
            *buf = 136315138;
            *&buf[4] = v161;
            _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, expected at least one venue, str=\n%s\n", buf, 0xCu);
          }
        }

        else
        {
          if (qword_10045B060 != -1)
          {
            sub_100382E10();
          }

          v157 = qword_10045B068;
          if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            v158 = v180;
            v159 = [v180 UTF8String];
            *buf = 136315138;
            *&buf[4] = v159;
            _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, no venues given in avl tile json??, str=\n%s\n", buf, 0xCu);
          }
        }

        v12 = 0;
        log = v172;
      }

LABEL_154:

      return v12;
    }

    v168 = sub_10002833C();
    if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v211 = 2081;
      *&v211[2] = "path != nullptr";
      _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v169 = sub_10002833C();
    if (os_signpost_enabled(v169))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v211 = 2081;
      *&v211[2] = "path != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v169, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path", "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v167 = sub_10002833C();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v211 = 2081;
      *&v211[2] = "path != nullptr";
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  else
  {
    v165 = sub_10002833C();
    if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v211 = 2081;
      *&v211[2] = "jsonStr != nullptr";
      _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v166 = sub_10002833C();
    if (os_signpost_enabled(v166))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v211 = 2081;
      *&v211[2] = "jsonStr != nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v166, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string", "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v167 = sub_10002833C();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v211 = 2081;
      *&v211[2] = "jsonStr != nullptr";
      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end