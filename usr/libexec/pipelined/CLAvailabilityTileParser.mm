@interface CLAvailabilityTileParser
+ (BOOL)generateAvlTileFromJSON:(id)n atPath:(id)path;
+ (void)_setParamOverrides:(void *)overrides fromDict:(id)dict;
- (BOOL)_openTileFileForIncrementalIO;
- (CLAvailabilityTileParser)init;
- (CLAvailabilityTileParser)initWithEmptyTile;
- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)o;
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

  path = [(NSURL *)path path];
  uTF8String = [path UTF8String];
  v5 = strlen(uTF8String);
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
    memmove(&__dst, uTF8String, v5);
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

- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)o
{
  oCopy = o;
  v10.receiver = self;
  v10.super_class = CLAvailabilityTileParser;
  v6 = [(CLAvailabilityTileParser *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_path, o), ![(CLAvailabilityTileParser *)v7 _openTileFileForIncrementalIO]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (void)_setParamOverrides:(void *)overrides fromDict:(id)dict
{
  dictCopy = dict;
  v6 = [dictCopy valueForKey:@"notifyIntervalNanos"];

  if (v6)
  {
    v7 = [dictCopy objectForKeyedSubscript:@"notifyIntervalNanos"];
    unsignedIntValue = [v7 unsignedIntValue];
    *(overrides + 75) |= 1u;
    *(overrides + 2) = unsignedIntValue;
  }

  v9 = [dictCopy valueForKey:@"numParticles"];

  if (v9)
  {
    v10 = [dictCopy objectForKeyedSubscript:@"numParticles"];
    unsignedIntValue2 = [v10 unsignedIntValue];
    *(overrides + 75) |= 2u;
    *(overrides + 6) = unsignedIntValue2;
  }

  v12 = [dictCopy valueForKey:@"localizerType"];

  if (v12)
  {
    v13 = [dictCopy objectForKeyedSubscript:@"localizerType"];
    unsignedIntValue3 = [v13 unsignedIntValue];
    *(overrides + 75) |= 4u;
    *(overrides + 7) = unsignedIntValue3;
  }

  v15 = [dictCopy valueForKey:@"modeEstimator"];

  if (v15)
  {
    v16 = [dictCopy objectForKeyedSubscript:@"modeEstimator"];
    unsignedIntValue4 = [v16 unsignedIntValue];
    *(overrides + 75) |= 0x10u;
    *(overrides + 9) = unsignedIntValue4;
  }

  v18 = [dictCopy valueForKey:@"confidenceFactor"];

  if (v18)
  {
    v19 = [dictCopy objectForKeyedSubscript:@"confidenceFactor"];
    [v19 floatValue];
    *(overrides + 75) |= 0x20u;
    *(overrides + 10) = v20;
  }

  v21 = [dictCopy valueForKey:@"motionPdrUnmodelledHeadingVariancePerSecond"];

  if (v21)
  {
    v22 = [dictCopy objectForKeyedSubscript:@"motionPdrUnmodelledHeadingVariancePerSecond"];
    [v22 floatValue];
    *(overrides + 75) |= 0x40u;
    *(overrides + 11) = v23;
  }

  v24 = [dictCopy valueForKey:@"time2dMotionVariancePerSecond"];

  if (v24)
  {
    v25 = [dictCopy objectForKeyedSubscript:@"time2dMotionVariancePerSecond"];
    [v25 floatValue];
    *(overrides + 75) |= 0x800u;
    *(overrides + 24) = v26;
  }

  v27 = [dictCopy valueForKey:@"secondsBetweenVenueTransitions"];

  if (v27)
  {
    v28 = [dictCopy objectForKeyedSubscript:@"secondsBetweenVenueTransitions"];
    [v28 doubleValue];
    *(overrides + 75) |= 0x8000u;
    *(overrides + 14) = v29;
  }

  v30 = [dictCopy valueForKey:@"coarseIndoorFloorSelection"];

  if (v30)
  {
    v31 = [dictCopy objectForKeyedSubscript:@"coarseIndoorFloorSelection"];
    unsignedIntValue5 = [v31 unsignedIntValue];
    *(overrides + 75) |= 1u;
    *(overrides + 2) = unsignedIntValue5;
  }

  v33 = [dictCopy valueForKey:@"gpsStrobeDistance"];

  if (v33)
  {
    v34 = [dictCopy objectForKeyedSubscript:@"gpsStrobeDistance"];
    [v34 floatValue];
    *(overrides + 75) |= 0x20000u;
    *(overrides + 30) = v35;
  }

  v36 = [dictCopy valueForKey:@"lifespanDeepIndoors"];

  if (v36)
  {
    v37 = [dictCopy objectForKeyedSubscript:@"lifespanDeepIndoors"];
    [v37 floatValue];
    *(overrides + 75) |= 0x40000u;
    *(overrides + 31) = v38;
  }

  v39 = [dictCopy valueForKey:@"lifespanNearVenueEdge"];

  if (v39)
  {
    v40 = [dictCopy objectForKeyedSubscript:@"lifespanNearVenueEdge"];
    [v40 floatValue];
    *(overrides + 75) |= 0x80000u;
    *(overrides + 32) = v41;
  }

  v42 = [dictCopy valueForKey:@"lifespanAuxiliary"];

  if (v42)
  {
    v43 = [dictCopy objectForKeyedSubscript:@"lifespanAuxiliary"];
    [v43 floatValue];
    *(overrides + 75) |= 0x100000u;
    *(overrides + 33) = v44;
  }

  v45 = [dictCopy valueForKey:@"wifiLikelihoodOnMapPriorFactor"];

  if (v45)
  {
    v46 = [dictCopy objectForKeyedSubscript:@"wifiLikelihoodOnMapPriorFactor"];
    [v46 floatValue];
    *(overrides + 75) |= 0x200000u;
    *(overrides + 34) = v47;
  }

  v48 = [dictCopy valueForKey:@"coarseIndoorRadioOddsTransform"];

  if (v48)
  {
    v49 = [dictCopy objectForKeyedSubscript:@"coarseIndoorRadioOddsTransform"];
    unsignedIntValue6 = [v49 unsignedIntValue];
    *(overrides + 75) |= 0x800000u;
    *(overrides + 35) = unsignedIntValue6;
  }

  v51 = [dictCopy valueForKey:@"feasibleLocationRequiredPrbIndoor"];

  if (v51)
  {
    v52 = [dictCopy objectForKeyedSubscript:@"feasibleLocationRequiredPrbIndoor"];
    [v52 doubleValue];
    *(overrides + 75) |= 0x1000000u;
    *(overrides + 19) = v53;
  }

  v54 = [dictCopy valueForKey:@"assignFloorWeightsByLikelihood"];

  if (v54)
  {
    v55 = [dictCopy objectForKeyedSubscript:@"assignFloorWeightsByLikelihood"];
    bOOLValue = [v55 BOOLValue];
    *(overrides + 75) |= 0x10000000u;
    *(overrides + 192) = bOOLValue;
  }

  v57 = [dictCopy valueForKey:@"priorOnMapWeightFraction"];

  if (v57)
  {
    v58 = [dictCopy objectForKeyedSubscript:@"priorOnMapWeightFraction"];
    [v58 doubleValue];
    *(overrides + 75) |= 0x20000000u;
    *(overrides + 23) = v59;
  }

  v60 = [dictCopy valueForKey:@"enableBaroAidedFloorTransition"];

  if (v60)
  {
    v61 = [dictCopy objectForKeyedSubscript:@"enableBaroAidedFloorTransition"];
    bOOLValue2 = [v61 BOOLValue];
    *(overrides + 75) |= 0x40000000u;
    *(overrides + 193) = bOOLValue2;
  }

  v63 = [dictCopy valueForKey:@"time2dMotionVariancePerSecondWifi2"];

  if (v63)
  {
    v64 = [dictCopy objectForKeyedSubscript:@"time2dMotionVariancePerSecondWifi2"];
    [v64 floatValue];
    *(overrides + 75) |= 0x80000000;
    *(overrides + 49) = v65;
  }

  v66 = [dictCopy valueForKey:@"bilinearObservations"];

  if (v66)
  {
    v67 = [dictCopy objectForKeyedSubscript:@"bilinearObservations"];
    bOOLValue3 = [v67 BOOLValue];
    *(overrides + 76) |= 2u;
    *(overrides + 194) = bOOLValue3;
  }

  v69 = [dictCopy valueForKey:@"walkableBlueDotSearchRadius"];

  if (v69)
  {
    v70 = [dictCopy objectForKeyedSubscript:@"walkableBlueDotSearchRadius"];
    [v70 floatValue];
    *(overrides + 76) |= 0x10u;
    *(overrides + 56) = v71;
  }

  v72 = [dictCopy valueForKey:@"motionPdrUnmodelledHeadingVariancePerSecondWifi2"];

  if (v72)
  {
    v73 = [dictCopy objectForKeyedSubscript:@"motionPdrUnmodelledHeadingVariancePerSecondWifi2"];
    [v73 floatValue];
    *(overrides + 76) |= 0x40u;
    *(overrides + 57) = v74;
  }

  v75 = [dictCopy valueForKey:@"particleFilterOffMapProbabilityFloor"];

  if (v75)
  {
    v76 = [dictCopy objectForKeyedSubscript:@"particleFilterOffMapProbabilityFloor"];
    [v76 floatValue];
    *(overrides + 76) |= 0x100u;
    *(overrides + 62) = v77;
  }

  v78 = [dictCopy valueForKey:@"coarseOutdoorProbabilityFloor"];

  if (v78)
  {
    v79 = [dictCopy objectForKeyedSubscript:@"coarseOutdoorProbabilityFloor"];
    [v79 floatValue];
    *(overrides + 76) |= 0x200u;
    *(overrides + 63) = v80;
  }

  v81 = [dictCopy valueForKey:@"pdr"];

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
  v83 = [dictCopy valueForKey:@"pedomCompassMotionWifi2"];

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
  v85 = [dictCopy valueForKey:@"deadReckoning"];

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
  v87 = [dictCopy valueForKey:@"coarseIndoor"];

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
  v89 = [dictCopy valueForKey:@"gpsFusionGlobalParams"];

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
  v91 = [dictCopy valueForKey:@"wifi"];

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
  v93 = [dictCopy valueForKey:@"bodyFixed"];

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
  v95 = [dictCopy valueForKey:@"motionTruth"];

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
  v97 = [dictCopy valueForKey:@"multiphoneDbm"];

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
  v99 = [dictCopy valueForKey:@"pedomCompassMotion"];

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
  v101 = [dictCopy valueForKey:@"injection"];

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
  v103 = [dictCopy valueForKey:@"beacon"];

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
  v105 = [dictCopy valueForKey:@"wallBehavior"];

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
  v107 = [dictCopy valueForKey:@"dynamicUniverseParameters"];

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
  v109 = [dictCopy valueForKey:@"dynamicUniverseParameters"];

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
  v111 = [dictCopy valueForKey:@"altitude"];

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

+ (BOOL)generateAvlTileFromJSON:(id)n atPath:(id)path
{
  nCopy = n;
  pathCopy = path;
  v180 = nCopy;
  v174 = pathCopy;
  if (nCopy)
  {
    if (pathCopy)
    {
      [nCopy dataUsingEncoding:4];
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
          uTF8String = [v7 UTF8String];
          v10 = v180;
          uTF8String2 = [v180 UTF8String];
          *buf = 136315394;
          *&buf[4] = uTF8String;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String2;
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
                        uTF8String3 = [v50 UTF8String];
                        v53 = uTF8String3;
                        v54 = *(v18 + 28);
                        v55 = *(v18 + 24);
                        if (v55 >= v54)
                        {
                          if (v54 == *(v18 + 32))
                          {
                            uTF8String3 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 16), v54 + 1);
                            v54 = *(v18 + 28);
                          }

                          *(v18 + 28) = v54 + 1;
                          v57 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(uTF8String3);
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
                          uTF8String4 = [v50 UTF8String];
                          LODWORD(v205[0]) = 136315138;
                          *(v205 + 4) = uTF8String4;
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, added venue ID %s", v205, 0xCu);
                        }
                      }

                      v47 = [v46 countByEnumeratingWithState:&v192 objects:v207 count:16];
                    }

                    while (v47);
                  }

                  v63 = [v178 valueForKey:@"context"];
                  intValue = [v63 intValue];

                  if (intValue - 1 < 2)
                  {
                    *(v18 + 104) |= 8u;
                    *(v18 + 96) = intValue;
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

                        unsignedIntValue = [*(*(&v188 + 1) + 8 * n) unsignedIntValue];
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
                        *(v72 + 4 * v74) = unsignedIntValue;
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
                unsignedIntValue2 = [v87 unsignedIntValue];
                *(v86 + 36) |= 1u;
                *(v86 + 16) = unsignedIntValue2;
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
                unsignedIntValue3 = [v92 unsignedIntValue];
                *(v91 + 36) |= 2u;
                *(v91 + 20) = unsignedIntValue3;
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
                unsignedIntValue4 = [v97 unsignedIntValue];
                *(v96 + 36) |= 4u;
                *(v96 + 24) = unsignedIntValue4;
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
                unsignedIntValue5 = [v102 unsignedIntValue];
                *(v101 + 36) |= 8u;
                *(v101 + 28) = unsignedIntValue5;
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
              unsignedIntValue6 = [v110 unsignedIntValue];
              v226 |= 8u;
              v214 = unsignedIntValue6;
            }

            v112 = [v179 valueForKey:@"regionalPrefetchRadiusKM"];
            v113 = v112 == 0;

            if (!v113)
            {
              v114 = [v179 valueForKey:@"regionalPrefetchRadiusKM"];
              unsignedIntValue7 = [v114 unsignedIntValue];
              v226 |= 0x10u;
              v215 = unsignedIntValue7;
            }

            v116 = [v179 valueForKey:@"indoorPrefetchMaxFloorCount"];
            v117 = v116 == 0;

            if (!v117)
            {
              v118 = [v179 valueForKey:@"indoorPrefetchMaxFloorCount"];
              unsignedIntValue8 = [v118 unsignedIntValue];
              v226 |= 0x20u;
              v216 = unsignedIntValue8;
            }

            v120 = [v179 valueForKey:@"regionalPrefetchMaxFloorCount"];
            v121 = v120 == 0;

            if (!v121)
            {
              v122 = [v179 valueForKey:@"regionalPrefetchMaxFloorCount"];
              unsignedIntValue9 = [v122 unsignedIntValue];
              v226 |= 0x40u;
              v217 = unsignedIntValue9;
            }

            v124 = [v179 valueForKey:@"indoorPrefetchMaxTotalBytes"];
            v125 = v124 == 0;

            if (!v125)
            {
              v126 = [v179 valueForKey:@"indoorPrefetchMaxTotalBytes"];
              unsignedIntValue10 = [v126 unsignedIntValue];
              v226 |= 0x80u;
              v218 = unsignedIntValue10;
            }

            v128 = [v179 valueForKey:@"regionalPrefetchMaxTotalBytes"];
            v129 = v128 == 0;

            if (!v129)
            {
              v130 = [v179 valueForKey:@"regionalPrefetchMaxTotalBytes"];
              unsignedIntValue11 = [v130 unsignedIntValue];
              v226 |= 0x100u;
              v219 = unsignedIntValue11;
            }

            v132 = [v179 valueForKey:@"indoorLocationOfInterestMergeRadiusKM"];
            v133 = v132 == 0;

            if (!v133)
            {
              v134 = [v179 valueForKey:@"indoorLocationOfInterestMergeRadiusKM"];
              unsignedIntValue12 = [v134 unsignedIntValue];
              v226 |= 0x200u;
              v220 = unsignedIntValue12;
            }

            v136 = [v179 valueForKey:@"regionalLocationOfInterestMergeRadiusKM"];
            v137 = v136 == 0;

            if (!v137)
            {
              v138 = [v179 valueForKey:@"regionalLocationOfInterestMergeRadiusKM"];
              unsignedIntValue13 = [v138 unsignedIntValue];
              v226 |= 0x400u;
              v221 = unsignedIntValue13;
            }

            v140 = [v179 valueForKey:@"preferPredictionWithinNActivityCycles"];
            v141 = v140 == 0;

            if (!v141)
            {
              v142 = [v179 valueForKey:@"preferPredictionWithinNActivityCycles"];
              unsignedIntValue14 = [v142 unsignedIntValue];
              v226 |= 0x800u;
              v222 = unsignedIntValue14;
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

            path = [v174 path];
            v153 = path;
            uTF8String5 = [path UTF8String];
            v155 = strlen(uTF8String5);
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
              memmove(&__dst, uTF8String5, v155);
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
            uTF8String6 = [v180 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String6;
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
            uTF8String7 = [v180 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String7;
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