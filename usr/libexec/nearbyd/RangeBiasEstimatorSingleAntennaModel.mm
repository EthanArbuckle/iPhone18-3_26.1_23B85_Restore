@interface RangeBiasEstimatorSingleAntennaModel
- (BOOL)checkCirsValid:(id)valid;
- (BOOL)configureWithResourceFileHandler:(id)handler;
- (BOOL)predictBiasEstimate:(unsigned __int8)estimate scaledInputFeatures:(id)features output:(id *)output;
- (RangeBiasEstimatorSingleAntennaModel)init;
- (id).cxx_construct;
- (id)consumeInputFeatures:(id)features;
- (id)createAndPopulateBiasEstimatorInput:(const void *)input ofDimension:(id)dimension;
- (id)getResourcePathWithBundleName:()basic_string<char bundleDir:()std:(std::allocator<char>> *)data :char_traits<char> resourceName:resourceExtension:;
- (id)loadResourcesWithResourceIndex:(int)index;
- (id)predictOutput:(id)output;
- (id)preprocessInputFeatures:(id)features;
- (id)scaleCirValuesIfRequired:(id)required;
- (pair<std::vector<double>,)getNormalizedCirAndPeakMagnitude:(RangeBiasEstimatorSingleAntennaModel *)self;
- (vector<double,)getNormalizedFftCir:(RangeBiasEstimatorSingleAntennaModel *)self;
- (void)addBundleNameToModelResourcePackage:()basic_string<char andBundleDirectory:()std:(std::allocator<char>> *)std :char_traits<char>;
@end

@implementation RangeBiasEstimatorSingleAntennaModel

- (RangeBiasEstimatorSingleAntennaModel)init
{
  v63.receiver = self;
  v63.super_class = RangeBiasEstimatorSingleAntennaModel;
  v2 = [(RangeBiasEstimatorSingleAntennaModel *)&v63 init];

  if (v2)
  {
    if (byte_1009F841F < 0)
    {
      sub_1000056BC(__dst, xmmword_1009F8408, *(&xmmword_1009F8408 + 1));
    }

    else
    {
      *__dst = xmmword_1009F8408;
      v53 = unk_1009F8418;
    }

    if (byte_1009F8437 < 0)
    {
      sub_1000056BC(&v54, xmmword_1009F8420, *(&xmmword_1009F8420 + 1));
    }

    else
    {
      v54 = xmmword_1009F8420;
      v55 = unk_1009F8430;
    }

    v56 = 0;
    LOBYTE(v57) = 0;
    v59 = 0;
    LOBYTE(v60) = 0;
    v62 = 0;
    if (byte_1009F844F < 0)
    {
      sub_1000056BC(v41, xmmword_1009F8438, *(&xmmword_1009F8438 + 1));
    }

    else
    {
      *v41 = xmmword_1009F8438;
      v42 = unk_1009F8448;
    }

    if (byte_1009F8467 < 0)
    {
      sub_1000056BC(&v43, xmmword_1009F8450, *(&xmmword_1009F8450 + 1));
    }

    else
    {
      v43 = xmmword_1009F8450;
      v44 = unk_1009F8460;
    }

    v45 = 0;
    LOBYTE(v46) = 0;
    v48 = 0;
    LOBYTE(v49) = 0;
    v51 = 0;
    if (byte_1009F847F < 0)
    {
      sub_1000056BC(v30, xmmword_1009F8468, *(&xmmword_1009F8468 + 1));
    }

    else
    {
      *v30 = xmmword_1009F8468;
      v31 = unk_1009F8478;
    }

    if (byte_1009F8497 < 0)
    {
      sub_1000056BC(&v32, xmmword_1009F8480, *(&xmmword_1009F8480 + 1));
    }

    else
    {
      v32 = xmmword_1009F8480;
      v33 = unk_1009F8490;
    }

    v34 = 1;
    LOBYTE(v35) = 0;
    v37 = 0;
    LOBYTE(v38) = 0;
    v40 = 0;
    if (byte_1009F84AF < 0)
    {
      sub_1000056BC(v19, xmmword_1009F8498, *(&xmmword_1009F8498 + 1));
    }

    else
    {
      *v19 = xmmword_1009F8498;
      v20 = unk_1009F84A8;
    }

    if (byte_1009F84C7 < 0)
    {
      sub_1000056BC(&v21, xmmword_1009F84B0, *(&xmmword_1009F84B0 + 1));
    }

    else
    {
      v21 = xmmword_1009F84B0;
      v22 = unk_1009F84C0;
    }

    v23 = 1;
    LOBYTE(v24) = 0;
    v26 = 0;
    LOBYTE(__p) = 0;
    v29 = 0;
    sub_1003E2530(v67, __dst);
    sub_1003E2530(v68, v41);
    v15 = 0uLL;
    v16 = 0;
    sub_1003E2754(&v15, v67, &v69, 2uLL);
    sub_1003E2530(v65, v30);
    sub_1003E2530(v66, v19);
    v17 = 0uLL;
    v18 = 0;
    sub_1003E2754(&v17, v65, v67, 2uLL);
    sub_1003E2620(&v2->_modelResourcePackage);
    *&v2->_modelResourcePackage.trainedModelResources.__begin_ = v15;
    v2->_modelResourcePackage.trainedModelResources.__cap_ = v16;
    v15 = 0uLL;
    v16 = 0;
    sub_1003E2620(&v2->_modelResourcePackage.dataTranformerResources);
    *&v2->_modelResourcePackage.dataTranformerResources.__begin_ = v17;
    v2->_modelResourcePackage.dataTranformerResources.__cap_ = v18;
    v17 = 0uLL;
    v18 = 0;
    v64 = &v17;
    sub_1003E2700(&v64);
    v64 = &v15;
    sub_1003E2700(&v64);
    for (i = 0; i != -240; i -= 120)
    {
      v4 = &v65[i];
      if (v66[i + 112] == 1 && v4[231] < 0)
      {
        operator delete(*(v4 + 26));
      }

      if (v4[200] == 1 && v66[i + 79] < 0)
      {
        operator delete(*(v4 + 22));
      }

      v5 = &v65[i];
      if (v66[i + 47] < 0)
      {
        operator delete(*(v5 + 18));
      }

      if (v5[143] < 0)
      {
        operator delete(*(v4 + 15));
      }
    }

    for (j = 0; j != -240; j -= 120)
    {
      v7 = &v67[j];
      if (v68[j + 112] == 1 && v7[231] < 0)
      {
        operator delete(*(v7 + 26));
      }

      if (v7[200] == 1 && v68[j + 79] < 0)
      {
        operator delete(*(v7 + 22));
      }

      v8 = &v67[j];
      if (v68[j + 47] < 0)
      {
        operator delete(*(v8 + 18));
      }

      if (v8[143] < 0)
      {
        operator delete(*(v7 + 15));
      }
    }

    remoteTxAntennaMask = v2->_remoteTxAntennaMask;
    v2->_remoteTxAntennaMask = 0;

    biasCorrectionEstimate = v2->_biasCorrectionEstimate;
    v2->_biasCorrectionEstimate = 0;

    neuralNetworkRangeBiasEstimatorModelAntennaMask1 = v2->_neuralNetworkRangeBiasEstimatorModelAntennaMask1;
    v2->_neuralNetworkRangeBiasEstimatorModelAntennaMask1 = 0;

    neuralNetworkRangeBiasEstimatorModelAntennaMask2 = v2->_neuralNetworkRangeBiasEstimatorModelAntennaMask2;
    v2->_neuralNetworkRangeBiasEstimatorModelAntennaMask2 = 0;

    if (v29 == 1 && v28 < 0)
    {
      operator delete(__p);
    }

    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    if (v51 == 1 && v50 < 0)
    {
      operator delete(v49);
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[0]);
    }

    if (v62 == 1 && v61 < 0)
    {
      operator delete(v60);
    }

    if (v59 == 1 && v58 < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  v13 = v2;

  return v13;
}

- (BOOL)configureWithResourceFileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#bias-est, Configuring bias estimator with resource file handler", buf, 2u);
  }

  if (!handlerCopy)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CB7F8();
    }

    goto LABEL_20;
  }

  bundleName = [handlerCopy bundleName];
  v7 = bundleName;
  sub_100004A08(v22, [bundleName UTF8String]);
  resourceBundleDir = [handlerCopy resourceBundleDir];
  v9 = resourceBundleDir;
  sub_100004A08(__p, [resourceBundleDir UTF8String]);
  [(RangeBiasEstimatorSingleAntennaModel *)self addBundleNameToModelResourcePackage:v22 andBundleDirectory:__p];
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v10 = [(RangeBiasEstimatorSingleAntennaModel *)self loadResourcesWithResourceIndex:0];
  neuralNetworkRangeBiasEstimatorModelAntennaMask1 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask1;
  self->_neuralNetworkRangeBiasEstimatorModelAntennaMask1 = v10;

  if (!self->_neuralNetworkRangeBiasEstimatorModelAntennaMask1)
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v25 = 1;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#bias-est, Unable to initialize Model with resources for antenna %d, bypassing bias estimation.", buf, 8u);
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v12 = [(RangeBiasEstimatorSingleAntennaModel *)self loadResourcesWithResourceIndex:1];
  neuralNetworkRangeBiasEstimatorModelAntennaMask2 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask2;
  p_neuralNetworkRangeBiasEstimatorModelAntennaMask2 = &self->_neuralNetworkRangeBiasEstimatorModelAntennaMask2;
  *p_neuralNetworkRangeBiasEstimatorModelAntennaMask2 = v12;

  v15 = *p_neuralNetworkRangeBiasEstimatorModelAntennaMask2;
  v16 = qword_1009F9820;
  v17 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (v17)
    {
      *buf = 67109120;
      v25 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v17)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#bias-est, Espresso Model initialized for both antennas", buf, 2u);
  }

  v18 = 1;
LABEL_21:

  return v18;
}

- (id)consumeInputFeatures:(id)features
{
  featuresCopy = features;
  if ((atomic_load_explicit(&qword_1009F8500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F8500))
  {
    dword_1009F84F8 = *(sub_1000054A8() + 186);
    __cxa_guard_release(&qword_1009F8500);
  }

  biasCorrectionEstimate = self->_biasCorrectionEstimate;
  self->_biasCorrectionEstimate = 0;

  if (featuresCopy)
  {
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [featuresCopy antennaMask]);
    remoteTxAntennaMask = self->_remoteTxAntennaMask;
    self->_remoteTxAntennaMask = v6;

    cirPacket1 = [featuresCopy cirPacket1];
    if ([cirPacket1 count] != 8)
    {
      __assert_rtn("[RangeBiasEstimatorSingleAntennaModel consumeInputFeatures:]", "NRBYRangeBiasEstimator.mm", 226, "[CIRValuesPacket1 count] == kDimCIRSamples");
    }

    v9 = [(RangeBiasEstimatorSingleAntennaModel *)self checkCirsValid:cirPacket1];
    cirPacket2 = [featuresCopy cirPacket2];
    if ([cirPacket2 count] != 8)
    {
      __assert_rtn("[RangeBiasEstimatorSingleAntennaModel consumeInputFeatures:]", "NRBYRangeBiasEstimator.mm", 230, "[CIRValuesPacket2 count] == kDimCIRSamples");
    }

    v11 = v9 & [(RangeBiasEstimatorSingleAntennaModel *)self checkCirsValid:cirPacket2];
    v12 = qword_1009F9820;
    v13 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if ((v11 & 1) == 0)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#bias-est, Invalid CIRs, not calculating bias estimate.", buf, 2u);
      }

      v38 = 0;
      goto LABEL_43;
    }

    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#bias-est, Valid CIRs, continuing ... ", buf, 2u);
    }

    v14 = [(RangeBiasEstimatorSingleAntennaModel *)self scaleCirValuesIfRequired:cirPacket1];
    v15 = [(RangeBiasEstimatorSingleAntennaModel *)self scaleCirValuesIfRequired:cirPacket2];
    v16 = v15;
    if (v14 && v15)
    {
      [(RangeBiasEstimatorSingleAntennaModel *)self getNormalizedCirAndPeakMagnitude:v14];
      [(RangeBiasEstimatorSingleAntennaModel *)self getNormalizedCirAndPeakMagnitude:v16];
      [(RangeBiasEstimatorSingleAntennaModel *)self getNormalizedFftCir:v14];
      [(RangeBiasEstimatorSingleAntennaModel *)self getNormalizedFftCir:v16];
      if (v72 - v71 == 56)
      {
        if (v70 - __p == 56)
        {
          [featuresCopy rttInitiator];
          v18 = v17;
          [featuresCopy tatInitiator];
          v20 = v19;
          [featuresCopy rttResponder];
          v22 = v21;
          [featuresCopy tatResponder];
          v24 = v23;
          v25 = v22 + v23;
          if (v22 + v23 == 0.0)
          {
            __assert_rtn("[RangeBiasEstimatorSingleAntennaModel consumeInputFeatures:]", "NRBYRangeBiasEstimator.mm", 266, "(tat_r + rtt_r) != 0");
          }

          [featuresCopy leadingEdgePacket1];
          v27 = v26;
          [featuresCopy firstPathIndexPacket1];
          v29 = v28;
          [featuresCopy leadingEdgePacket2];
          v31 = v30;
          [featuresCopy firstPathIndexPacket2];
          v33 = v31 - v32;
          if (dword_1009F84F8 == 1)
          {
            v34 = v33 + -1.0;
          }

          else
          {
            v34 = v33;
          }

          if (dword_1009F84F8 == 1)
          {
            v35 = v27 - v29 + -1.0;
          }

          else
          {
            v35 = v27 - v29;
          }

          [featuresCopy toaNoiseRms];
          if (v36 == 0.0 || v78 == 0.0 || v75 == 0.0)
          {
            v37 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#bias-est, Cannot calculate snr, returning nil", buf, 2u);
            }

            v38 = 0;
          }

          else
          {
            [featuresCopy toaNoiseRms];
            __xa = v41;
            v63 = log10(v78);
            v62 = log10(__xa);
            [featuresCopy toaNoiseRms];
            v43 = v42;
            __x = log10(v75);
            v61 = log10(v43);
            [featuresCopy soiRssiDbm];
            v45 = v44;
            [featuresCopy rssiDbm];
            v60 = v46;
            v59 = v45;
            [featuresCopy tofPicSecond];
            v58 = v47;
            if (dword_1009F84F8 == 1)
            {
              v48 = 0.100000001;
            }

            else
            {
              v48 = 1.0;
            }

            [featuresCopy toaNoiseRms];
            v57 = v49;
            [featuresCopy toaPpwinRms];
            v56 = v50;
            [featuresCopy toaPpwinPeak];
            *buf = v60;
            v80 = v59;
            v81 = v58;
            v82 = v57 * v48;
            v83 = v48 * v56;
            v84 = v48 * v51;
            v85 = v62 * -20.0 + v63 * 20.0;
            v86 = v61 * -20.0 + __x * 20.0;
            v87 = v35;
            v88 = v34;
            v89 = v18 - v24;
            v90 = v22 - v20;
            v91 = (v18 + v20 - v25) / v25 * 1000000.0;
            v92 = *v71;
            v93 = *(v71 + 1);
            v94 = *(v71 + 2);
            v95 = *(v71 + 3);
            v96 = *(v71 + 4);
            v97 = *(v71 + 5);
            v98 = *(v71 + 6);
            v99 = *__p;
            v100 = *(__p + 1);
            v101 = *(__p + 2);
            v102 = *(__p + 3);
            v103 = *(__p + 4);
            v104 = *(__p + 5);
            v105 = *(__p + 6);
            v106 = *v76;
            v107 = *(v76 + 1);
            v108 = *(v76 + 2);
            v109 = *(v76 + 3);
            v110 = *(v76 + 4);
            v111 = *(v76 + 5);
            v112 = *(v76 + 6);
            v113 = *(v76 + 7);
            v114 = *v73;
            v115 = *(v73 + 1);
            v116 = *(v73 + 2);
            v117 = *(v73 + 3);
            v118 = *(v73 + 4);
            v119 = *(v73 + 5);
            v120 = *(v73 + 6);
            v121 = *(v73 + 7);
            v67 = 0;
            v68 = 0;
            v66 = 0;
            sub_100019AC4(&v66, buf, &v122, 0x2BuLL);
            if (v67 - v66 != 344)
            {
              __assert_rtn("[RangeBiasEstimatorSingleAntennaModel consumeInputFeatures:]", "NRBYRangeBiasEstimator.mm", 347, "rangeBiasEstimatorModelInputParams.size() == kDimInputFeaturesSingleAntennaRangeBiasModel");
            }

            v52 = [NSNumber numberWithInt:43];
            v38 = [(RangeBiasEstimatorSingleAntennaModel *)self createAndPopulateBiasEstimatorInput:&v66 ofDimension:v52];

            if (v38)
            {
              v53 = v38;
            }

            else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004CB834();
            }

            if (v66)
            {
              v67 = v66;
              operator delete(v66);
            }
          }

          if (__p)
          {
            v70 = __p;
            operator delete(__p);
          }

          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          if (v73)
          {
            v74 = v73;
            operator delete(v73);
          }

          if (v76)
          {
            v77 = v76;
            operator delete(v76);
          }

LABEL_42:

LABEL_43:
          goto LABEL_44;
        }

        v54 = "normalizedFftCirPacket1.size() == normalizedFftCirPacket2.size()";
        v55 = 257;
      }

      else
      {
        v54 = "normalizedFftCirPacket1.size() == kDimExtractedFftCir";
        v55 = 256;
      }

      __assert_rtn("[RangeBiasEstimatorSingleAntennaModel consumeInputFeatures:]", "NRBYRangeBiasEstimator.mm", v55, v54);
    }

    v39 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#bias-est, Scaling CIRs failed, not calculating bias estimate.", buf, 2u);
    }

    v38 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CB868();
  }

  v38 = 0;
LABEL_44:

  return v38;
}

- (id)preprocessInputFeatures:(id)features
{
  featuresCopy = features;
  v5 = featuresCopy;
  if (featuresCopy)
  {
    v6 = [featuresCopy featureValueForName:@"input"];
    multiArrayValue = [v6 multiArrayValue];

    if ([multiArrayValue count] == 43)
    {
      if ([multiArrayValue count] > 12)
      {
        v8 = 0;
        __p = 0;
        v31 = 0;
        v32 = 0;
        do
        {
          v9 = [multiArrayValue objectAtIndexedSubscript:v8];
          [v9 doubleValue];
          *buf = v10;
          sub_100009734(&__p, buf);

          ++v8;
        }

        while (v8 != 13);
        v11 = [NSNumber numberWithInt:13];
        v12 = [(RangeBiasEstimatorSingleAntennaModel *)self createAndPopulateBiasEstimatorInput:&__p ofDimension:v11];

        if (v12)
        {
          if ([(NSNumber *)self->_remoteTxAntennaMask intValue]!= 1 && [(NSNumber *)self->_remoteTxAntennaMask intValue]!= 2)
          {
            __assert_rtn("[RangeBiasEstimatorSingleAntennaModel preprocessInputFeatures:]", "NRBYRangeBiasEstimator.mm", 380, "[_remoteTxAntennaMask intValue] == kAntennaMask1 || [_remoteTxAntennaMask intValue] == kAntennaMask2");
          }

          v13 = qword_1009F9820;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [(NSNumber *)self->_remoteTxAntennaMask intValue];
            *buf = 67109120;
            *&buf[4] = intValue;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#bias-est, Using Antenna %d NN bias model", buf, 8u);
          }

          intValue2 = [(NSNumber *)self->_remoteTxAntennaMask intValue];
          if (intValue2 == 2)
          {
            rangeBiasEstimatorModelDataTransformer = [(NeuralNetworkModelWithDataTransformer *)self->_neuralNetworkRangeBiasEstimatorModelAntennaMask2 rangeBiasEstimatorModelDataTransformer];
            v17 = [rangeBiasEstimatorModelDataTransformer applyTransformation:v12];
          }

          else
          {
            if (intValue2 != 1)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
              {
                sub_1004CB8D0();
              }

              v29 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/NearbyAlgorithms/RangeBiasEstimation/NRBYRangeBiasEstimator.mm";
                v34 = 1024;
                v35 = 392;
                v36 = 2080;
                v37 = "[RangeBiasEstimatorSingleAntennaModel preprocessInputFeatures:]";
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "#bias-est, %s:%d: assertion failure in %s", buf, 0x1Cu);
              }

              abort();
            }

            rangeBiasEstimatorModelDataTransformer = [(NeuralNetworkModelWithDataTransformer *)self->_neuralNetworkRangeBiasEstimatorModelAntennaMask1 rangeBiasEstimatorModelDataTransformer];
            v17 = [rangeBiasEstimatorModelDataTransformer applyTransformation:v12];
          }

          v19 = v17;

          if (v19)
          {
            v20 = [v19 featureValueForName:@"input"];
            multiArrayValue2 = [v20 multiArrayValue];

            for (i = 0; i != 13; ++i)
            {
              v23 = [multiArrayValue2 objectAtIndexedSubscript:i];
              [multiArrayValue setObject:v23 atIndexedSubscript:i];
            }

            v24 = [[RangeBiasEstimatorInput alloc] initWithData:multiArrayValue];
            v18 = v24;
            if (v24)
            {
              v25 = v24;
            }

            else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004CB834();
            }
          }

          else
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004CB89C();
            }

            v18 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004CB834();
          }

          v18 = 0;
        }

        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }

        goto LABEL_36;
      }

      v27 = "kStartIdxOfFeaturesThatRequireScaling+kLengthOfFeaturesThatRequireScaling <= [inputFeatureMultiArray count]";
      v28 = 366;
    }

    else
    {
      v27 = "[inputFeatureMultiArray count] == kDimInputFeaturesSingleAntennaRangeBiasModel";
      v28 = 365;
    }

    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel preprocessInputFeatures:]", "NRBYRangeBiasEstimator.mm", v28, v27);
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CB90C();
  }

  v18 = 0;
LABEL_36:

  return v18;
}

- (id)predictOutput:(id)output
{
  outputCopy = output;
  if (!outputCopy)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB9F0();
    }

    goto LABEL_13;
  }

  if (![(RangeBiasEstimatorSingleAntennaModel *)self predictBiasEstimate:[(NSNumber *)self->_remoteTxAntennaMask intValue] scaledInputFeatures:outputCopy output:v20])
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB940();
    }

LABEL_13:
    v13 = 0;
    goto LABEL_21;
  }

  if (v20[10] != 11)
  {
    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel predictOutput:]", "NRBYRangeBiasEstimator.mm", 449, "output.width == kDimOutputSingleAntennaRangeBiasModel");
  }

  v5 = [[NSMutableArray alloc] initWithCapacity:11];
  v6 = 0;
  v7 = 0.0;
  *&v8 = 67109376;
  v19 = v8;
  v9 = 0.0;
  do
  {
    v10 = *(v20[0] + 4 * v6);
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      *buf = v19;
      *v22 = v6;
      *&v22[4] = 2048;
      *&v22[6] = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#bias-est, Output Probability index = %d, value = %f", buf, 0x12u);
    }

    v12 = [NSNumber numberWithDouble:v10, v19];
    [v5 setObject:v12 atIndexedSubscript:v6];

    v7 = v7 + v10;
    v9 = v9 + dbl_100570FC0[v6++] * v10;
  }

  while (v6 != 11);
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v22 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#bias-est, biasCorrectionEstimate = %f", buf, 0xCu);
  }

  v15 = [NSNumber numberWithDouble:v9];
  biasCorrectionEstimate = self->_biasCorrectionEstimate;
  self->_biasCorrectionEstimate = v15;

  if (v7 >= 1.00001 || v7 <= 0.99999)
  {
    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel predictOutput:]", "NRBYRangeBiasEstimator.mm", 467, "(totalProbability < 1.0 + epsilon) && (totalProbability > 1.0 - epsilon)");
  }

  v17 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CB974(v17, v7);
  }

  v13 = [v5 copy];

LABEL_21:

  return v13;
}

- (void)addBundleNameToModelResourcePackage:()basic_string<char andBundleDirectory:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v4 = v3;
  begin = self->_modelResourcePackage.trainedModelResources.__begin_;
  if (self->_modelResourcePackage.trainedModelResources.__end_ != begin)
  {
    v8 = 0;
    v9 = 56;
    do
    {
      sub_10029E970((begin + v9 + 32), std);
      sub_10029E970((self->_modelResourcePackage.trainedModelResources.__begin_ + v9), v4);
      ++v8;
      begin = self->_modelResourcePackage.trainedModelResources.__begin_;
      v9 += 120;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((self->_modelResourcePackage.trainedModelResources.__end_ - begin) >> 3) > v8);
  }

  v10 = self->_modelResourcePackage.dataTranformerResources.__begin_;
  if (self->_modelResourcePackage.dataTranformerResources.__end_ != v10)
  {
    v11 = 0;
    v12 = 56;
    do
    {
      sub_10029E970((v10 + v12 + 32), std);
      sub_10029E970((self->_modelResourcePackage.dataTranformerResources.__begin_ + v12), v4);
      ++v11;
      v10 = self->_modelResourcePackage.dataTranformerResources.__begin_;
      v12 += 120;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((self->_modelResourcePackage.dataTranformerResources.__end_ - v10) >> 3) > v11);
  }
}

- (id)getResourcePathWithBundleName:()basic_string<char bundleDir:()std:(std::allocator<char>> *)data :char_traits<char> resourceName:resourceExtension:
{
  v6 = v5;
  v7 = v4;
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v9 = [NSString stringWithUTF8String:v3];
  if (*(&data->__rep_.__l + 23) < 0)
  {
    data = data->__rep_.__l.__data_;
  }

  v10 = [NSString stringWithUTF8String:data];
  v11 = [v9 stringByAppendingPathComponent:v10];

  v12 = [NSBundle bundleWithPath:v11];
  uTF8String = [v11 UTF8String];
  sub_1003030B0(&v22.__pn_, &uTF8String);
  std::__fs::filesystem::__status(&v22, 0);
  v13 = v21;
  if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__pn_.__r_.__value_.__l.__data_);
  }

  if (v13 != 255 && v13)
  {
    if (*(v7 + 23) < 0)
    {
      v7 = *v7;
    }

    v17 = [NSString stringWithUTF8String:v7];
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v18 = [NSString stringWithUTF8String:v6];
    v14 = [v12 pathForResource:v17 ofType:v18];

    if (v14)
    {
      v14 = v14;
      v16 = v14;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CBA6C();
      }

      v16 = 0;
    }
  }

  else
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v11;
      sub_1004CBA24([v11 UTF8String], &v22, v14);
    }

    v16 = 0;
  }

  return v16;
}

- (id)loadResourcesWithResourceIndex:(int)index
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sub_1003E2A10(&v62, self->_modelResourcePackage.trainedModelResources.__begin_, self->_modelResourcePackage.trainedModelResources.__end_, 0xEEEEEEEEEEEEEEEFLL * ((self->_modelResourcePackage.trainedModelResources.__end_ - self->_modelResourcePackage.trainedModelResources.__begin_) >> 3));
  v59 = 0;
  v60 = 0;
  v61 = 0;
  sub_1003E2A10(&v59, self->_modelResourcePackage.dataTranformerResources.__begin_, self->_modelResourcePackage.dataTranformerResources.__end_, 0xEEEEEEEEEEEEEEEFLL * ((self->_modelResourcePackage.dataTranformerResources.__end_ - self->_modelResourcePackage.dataTranformerResources.__begin_) >> 3));
  if (v63 - v62 != v60 - v59)
  {
    v37 = "trainedModelResourceArray.size() == dataTransformerResourceArray.size()";
    v38 = 514;
    goto LABEL_88;
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((v63 - v62) >> 3) <= index)
  {
    v37 = "trainedModelResourceArray.size() > index";
    v38 = 515;
LABEL_88:
    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel loadResourcesWithResourceIndex:]", "NRBYRangeBiasEstimator.mm", v38, v37);
  }

  v5 = 0;
  indexCopy = index;
  v41 = index + 1;
  v7 = 1;
  v8 = "trainedModelResourceArray[index].bundleDirectory.has_value() && trainedModelResourceArray[index].bundleName.has_value()";
  do
  {
    v9 = v7;
    memset(&v42, 0, sizeof(v42));
    memset(&v57, 0, sizeof(v57));
    memset(&v56, 0, sizeof(v56));
    memset(&v55, 0, sizeof(v55));
    if (v7)
    {
      v10 = v62 + 120 * indexCopy;
      if (*(v10 + 80) == 1 && (*(v10 + 112) & 1) != 0)
      {
        std::string::operator=(&v56, (v10 + 56));
        v11 = v62 + 120 * indexCopy;
        if ((*(v11 + 112) & 1) == 0)
        {
          goto LABEL_90;
        }

        std::string::operator=(&v55, (v11 + 88));
        std::string::operator=(&v42, (v62 + 120 * indexCopy));
        v12 = v62 + 120 * indexCopy;
        v13 = *(v12 + 48);
        std::string::operator=(&v57, (v12 + 24));
        goto LABEL_13;
      }

      v36 = 533;
LABEL_85:
      __assert_rtn("[RangeBiasEstimatorSingleAntennaModel loadResourcesWithResourceIndex:]", "NRBYRangeBiasEstimator.mm", v36, v8);
    }

    v14 = v59 + 120 * indexCopy;
    if (*(v14 + 80) != 1 || *(v14 + 112) != 1)
    {
      v36 = 541;
      v8 = "dataTransformerResourceArray[index].bundleDirectory.has_value() && dataTransformerResourceArray[index].bundleName.has_value()";
      goto LABEL_85;
    }

    std::string::operator=(&v56, (v14 + 56));
    v15 = v59 + 120 * indexCopy;
    if (*(v15 + 112) != 1)
    {
LABEL_90:
      sub_1000195BC();
    }

    std::string::operator=(&v55, (v15 + 88));
    std::string::operator=(&v42, (v59 + 120 * indexCopy));
    v16 = v59 + 120 * indexCopy;
    v13 = *(v16 + 48);
    std::string::operator=(&v57, (v16 + 24));
LABEL_13:
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(&__dst, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v55;
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(&v53, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
    }

    else
    {
      v53 = v56;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(&v52, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    }

    else
    {
      v52 = v42;
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(&__p, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v57;
    }

    v17 = [(RangeBiasEstimatorSingleAntennaModel *)self getResourcePathWithBundleName:&__dst bundleDir:&v53 resourceName:&v52 resourceExtension:&__p, v39, v40];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v18 = v17;
    sub_100004A08(&v50, [v17 UTF8String]);
    v19 = sub_1001B9424(&buf, &v50);
    std::__fs::filesystem::__status(v19, 0);
    v20 = v66[0];
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v20 == 255 || !v20)
    {
      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        v31 = &v50;
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v50.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v31;
        _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "#bias-est, Unable to locate resource file %s, bypassing bias estimation.", &buf, 0xCu);
      }

LABEL_38:
      v22 = 0;
      goto LABEL_39;
    }

    if (v13 == 1)
    {
      v25 = [RangeBiasEstimatorModelDataTransformer alloc];
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v50;
      }

      else
      {
        v26 = v50.__r_.__value_.__r.__words[0];
      }

      v27 = [NSString stringWithUTF8String:v26];
      v28 = [NSURL fileURLWithPath:v27];
      v29 = [(RangeBiasEstimatorModelDataTransformer *)v25 initWithContentsOfURL:v28];

      v30 = qword_1009F9820;
      if (v29)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v41;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#bias-est, Loaded data transformer model %d", &buf, 8u);
        }

        v22 = 1;
        v5 = v29;
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004CBAA8(&v44, v45);
        }

        v22 = 0;
        v5 = 0;
      }
    }

    else if (v13)
    {
      v22 = 1;
    }

    else
    {
      context = espresso_create_context();
      plan = espresso_create_plan();
      if (espresso_plan_add_network())
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004CBAD4(&v48, v49);
        }

        goto LABEL_38;
      }

      if (espresso_plan_build())
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004CBB00(&v46, v47);
        }

        goto LABEL_38;
      }

      v58 = *&buf.__r_.__value_.__l.__data_;
      v32 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v66 = 67109120;
        *&v66[4] = v41;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#bias-est, Loaded NN model %d", v66, 8u);
      }

      v22 = 1;
      v39 = plan;
      v40 = context;
    }

LABEL_39:
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if ((v22 & 1) == 0)
    {
      v33 = 0;
      goto LABEL_80;
    }

    v7 = 0;
    v8 = "trainedModelResourceArray[index].bundleDirectory.has_value() && trainedModelResourceArray[index].bundleName.has_value()";
  }

  while ((v9 & 1) != 0);
  if (!v5)
  {
    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel loadResourcesWithResourceIndex:]", "NRBYRangeBiasEstimator.mm", 603, "rangeBiasEstimatorModelDataTransformer != nil");
  }

  v34 = [NeuralNetworkModelWithDataTransformer alloc];
  *&v42.__r_.__value_.__l.__data_ = v58;
  v42.__r_.__value_.__r.__words[2] = v39;
  v43 = v40;
  v33 = [(NeuralNetworkModelWithDataTransformer *)v34 initWithNeuralNetworkModel:&v42 andDataTransformer:v5];
LABEL_80:

  v42.__r_.__value_.__r.__words[0] = &v59;
  sub_1003E2700(&v42);
  v42.__r_.__value_.__r.__words[0] = &v62;
  sub_1003E2700(&v42);

  return v33;
}

- (BOOL)checkCirsValid:(id)valid
{
  validCopy = valid;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [validCopy objectAtIndex:v4];
    real = [v6 real];
    [real doubleValue];
    if (v8 == 0.0)
    {
      v9 = [validCopy objectAtIndex:v4];
      imag = [v9 imag];
      [imag doubleValue];
      v12 = v11;

      if (v12 == 0.0)
      {
        ++v5;
      }
    }

    else
    {
    }

    ++v4;
  }

  while (v4 != 8);
  if (v5 == 8)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CBB60();
    }

LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  v13 = 0;
  v14 = 0.0;
  v15 = 0.0;
  do
  {
    v16 = [validCopy objectAtIndex:v13];
    real2 = [v16 real];
    [real2 doubleValue];
    v19 = v18;

    v20 = [validCopy objectAtIndex:v13];
    imag2 = [v20 imag];
    [imag2 doubleValue];
    v15 = v15 + v19;
    v14 = v14 + v22;

    ++v13;
  }

  while (v13 != 8);
  v23 = 1;
  if (v15 == 0.0 && v14 == 0.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CBB2C();
    }

    goto LABEL_17;
  }

LABEL_18:

  return v23;
}

- (id)createAndPopulateBiasEstimatorInput:(const void *)input ofDimension:(id)dimension
{
  v5 = [NSArray arrayWithObject:dimension];
  v16 = 0;
  v6 = [[MLMultiArray alloc] initWithShape:v5 dataType:65600 error:&v16];
  v7 = v16;
  v8 = qword_1009F9820;
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CBB94();
    }

    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#bias-est, Created biasEstimatorInputMLArray, populating values.", v15, 2u);
    }

    if (*(input + 1) != *input)
    {
      v10 = 0;
      do
      {
        v11 = [NSNumber numberWithInt:v10];
        v12 = [NSNumber numberWithDouble:*(*input + 8 * v10)];
        v17 = v11;
        v13 = [NSArray arrayWithObjects:&v17 count:1];
        [v6 setObject:v12 forKeyedSubscript:v13];

        ++v10;
      }

      while (v10 < (*(input + 1) - *input) >> 3);
    }

    v9 = [[RangeBiasEstimatorInput alloc] initWithData:v6];
  }

  return v9;
}

- (BOOL)predictBiasEstimate:(unsigned __int8)estimate scaledInputFeatures:(id)features output:(id *)output
{
  outputCopy = output;
  estimateCopy = estimate;
  __src = 0;
  v35 = 0;
  v36 = 0;
  featuresCopy = features;
  v7 = [featuresCopy featureValueForName:@"input"];
  multiArrayValue = [v7 multiArrayValue];

  for (i = 0; i != 43; ++i)
  {
    v10 = [multiArrayValue objectAtIndexedSubscript:{i, outputCopy}];
    [v10 doubleValue];
    v12 = v11;
    v13 = v35;
    if (v35 >= v36)
    {
      v15 = __src;
      v16 = v35 - __src;
      v17 = (v35 - __src) >> 2;
      v18 = v17 + 1;
      if ((v17 + 1) >> 62)
      {
        sub_100019B38();
      }

      v19 = v36 - __src;
      if ((v36 - __src) >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        sub_10004F51C(&__src, v20);
      }

      *(4 * v17) = v12;
      v14 = 4 * v17 + 4;
      memcpy(0, v15, v16);
      v21 = __src;
      __src = 0;
      v35 = v14;
      v36 = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v35 = v12;
      v14 = (v13 + 1);
    }

    v35 = v14;
  }

  v38 = 43;
  if (espresso_buffer_pack_tensor_shape())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CBC08();
    }

    goto LABEL_18;
  }

  if (estimateCopy == 2)
  {
    neuralNetworkRangeBiasEstimatorModelAntennaMask2 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask2;
    if (neuralNetworkRangeBiasEstimatorModelAntennaMask2)
    {
      [(NeuralNetworkModelWithDataTransformer *)neuralNetworkRangeBiasEstimatorModelAntennaMask2 neuralNetworkModel];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    if (espresso_network_bind_buffer())
    {
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        v22 = 0;
        goto LABEL_19;
      }

LABEL_29:
      sub_1004CBC3C();
      goto LABEL_18;
    }

    v26 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask2;
    if (v26)
    {
      [(NeuralNetworkModelWithDataTransformer *)v26 neuralNetworkModel];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    if (espresso_network_bind_buffer())
    {
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_41:
      sub_1004CBC70();
      goto LABEL_18;
    }

    v28 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask2;
    if (v28)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (estimateCopy != 1)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CB8D0();
      }

      v31 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/NearbyAlgorithms/RangeBiasEstimation/NRBYRangeBiasEstimator.mm";
        *&buf[12] = 1024;
        *&buf[14] = 723;
        *&buf[18] = 2080;
        *&buf[20] = "[RangeBiasEstimatorSingleAntennaModel predictBiasEstimate:scaledInputFeatures:output:]";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "#bias-est, %s:%d: assertion failure in %s", buf, 0x1Cu);
      }

      abort();
    }

    neuralNetworkRangeBiasEstimatorModelAntennaMask1 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask1;
    if (neuralNetworkRangeBiasEstimatorModelAntennaMask1)
    {
      [(NeuralNetworkModelWithDataTransformer *)neuralNetworkRangeBiasEstimatorModelAntennaMask1 neuralNetworkModel];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    if (espresso_network_bind_buffer())
    {
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

    v27 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask1;
    if (v27)
    {
      [(NeuralNetworkModelWithDataTransformer *)v27 neuralNetworkModel];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    if (espresso_network_bind_buffer())
    {
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    v28 = self->_neuralNetworkRangeBiasEstimatorModelAntennaMask1;
    if (v28)
    {
LABEL_49:
      [(NeuralNetworkModelWithDataTransformer *)v28 neuralNetworkModel];
      goto LABEL_51;
    }
  }

  memset(buf, 0, sizeof(buf));
LABEL_51:
  v29 = espresso_plan_execute_sync();
  v30 = qword_1009F9820;
  if (v29)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CBCA4();
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#bias-est, Executed espresso plan.", buf, 2u);
  }

  v22 = 1;
LABEL_19:

  return v22;
}

- (pair<std::vector<double>,)getNormalizedCirAndPeakMagnitude:(RangeBiasEstimatorSingleAntennaModel *)self
{
  v5 = a4;
  v6 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  do
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
    real = [v7 real];
    [real doubleValue];
    v10 = v9;
    v11 = [v5 objectAtIndexedSubscript:v6];
    imag = [v11 imag];
    [imag doubleValue];
    v14 = v13;

    __p = COERCE_VOID_(hypot(v10, v14));
    sub_100009734(&v28, &__p);
    ++v6;
  }

  while (v6 != 8);
  v15 = v28;
  if (v28 != v29)
  {
    v16 = (v28 + 8);
    if (v28 + 8 != v29)
    {
      v17 = *v28;
      v18 = (v28 + 8);
      do
      {
        v19 = *v18++;
        v20 = v19;
        if (v17 < v19)
        {
          v17 = v20;
          v15 = v16;
        }

        v16 = v18;
      }

      while (v18 != v29);
    }
  }

  v21 = *v15;
  __p = 0;
  v26 = 0;
  v27 = 0;
  if (v21 == 0.0)
  {
    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel getNormalizedCirAndPeakMagnitude:]", "NRBYRangeBiasEstimator.mm", 749, "maxMagnitude != 0");
  }

  for (i = 0; i != 64; i += 8)
  {
    v24 = log10(fmax(*(v28 + i), 1.0e-12) / v21) * 20.0;
    sub_100009734(&__p, &v24);
  }

  retstr->var0.var0 = 0;
  retstr->var0.var1 = 0;
  retstr->var0.var2 = 0;
  sub_100012F38(retstr, __p, v26, (v26 - __p) >> 3);
  retstr->var1 = v21;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return result;
}

- (vector<double,)getNormalizedFftCir:(RangeBiasEstimatorSingleAntennaModel *)self
{
  v5 = a4;
  v6 = 0;
  v7.i64[0] = 0x1000000010;
  v7.i64[1] = 0x1000000010;
  do
  {
    v8 = vaddq_s32(xmmword_100571018[v6 / 4], v7);
    *&v71[v6] = vsubq_s32(v8, (*&vsraq_n_u32(v8, vcltzq_s32(v8), 0x1CuLL) & __PAIR128__(0xFFFFFFF0FFFFFFF0, 0xFFFFFFF0FFFFFFF0)));
    v6 += 4;
  }

  while (v6 != 8);
  v9 = 0;
  __src = 0;
  v69 = 0;
  v10 = 16;
  v70 = 0;
  do
  {
    if (v9 >= v70)
    {
      v11 = __src;
      v12 = v9 - __src;
      v13 = (v9 - __src) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        sub_100019B38();
      }

      v15 = v70 - __src;
      if ((v70 - __src) >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_10004EF68(&__src, v16);
      }

      v17 = (v9 - __src) >> 4;
      v18 = (16 * v13);
      v9 = (16 * v13 + 16);
      v19 = (16 * v13 - 16 * v17);
      *v18 = 0;
      v18[1] = 0;
      memcpy(&v18[-2 * v17], v11, v12);
      v20 = __src;
      __src = v19;
      v69 = v9;
      v70 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      v9 += 16;
    }

    v69 = v9;
    --v10;
  }

  while (v10);
  for (i = 0; i != 8; ++i)
  {
    v22 = [v5 objectAtIndexedSubscript:i];
    real = [v22 real];
    [real doubleValue];
    v25 = v24;
    v26 = [v5 objectAtIndexedSubscript:i];
    imag = [v26 imag];
    [imag doubleValue];
    v28 = __src + 16 * v71[i];
    *v28 = v25;
    v28[1] = v29;
  }

  if ((v69 - __src) <= 0xFF)
  {
    __assert_rtn("fft_NpointCIR", "NRBYRangeBiasEstimator.mm", 887, "fft_in.size() >= N");
  }

  v30 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  do
  {
    *__p = *__src;
    v31 = v30;
    for (j = 16; j != 256; j += 16)
    {
      v33 = __src;
      v72[0] = -0.0;
      v72[1] = v31 * -0.392699082;
      sub_100171968(v72);
      v60 = v34;
      v61 = v35;
      v36.f64[0] = sub_10017190C(&v33[j], &v60);
      v36.f64[1] = v37;
      *__p = vaddq_f64(v36, *__p);
      v31 += v30;
    }

    sub_10017158C(&v65, __p);
    ++v30;
  }

  while (v30 != 16);
  __p[1] = 0;
  v64 = 0;
  __p[0] = 0;
  sub_1003E2B3C(__p, v65 + 128, v66, (v66 - (v65 + 128)) >> 4);
  sub_1003E2BB8(__p, __p[1], v65, v65 + 128, 8);
  if ((__p[1] - __p[0]) != 256)
  {
    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel getNormalizedFftCir:]", "NRBYRangeBiasEstimator.mm", 789, "calculatedFftCir16ptShifted.size() == kDimFft");
  }

  v38 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  do
  {
    sub_10017158C(&v60, __p[0] + dword_100571038[v38++]);
  }

  while (v38 != 7);
  v40 = v60;
  v39 = v61;
  v41 = v60[6];
  v42 = v60[7];
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if (v39 == v40)
  {
    goto LABEL_45;
  }

  if (hypot(v41, v42) == 0.0)
  {
    __assert_rtn("[RangeBiasEstimatorSingleAntennaModel getNormalizedFftCir:]", "NRBYRangeBiasEstimator.mm", 804, "std::abs(peakCir) != 0");
  }

  v43 = 0;
  v44 = 0;
  do
  {
    v45 = sub_1004993DC(v40[v43], v40[v43 + 1], v41, v42);
    v47 = hypot(v45, v46);
    if (v47 == 0.0)
    {
      __assert_rtn("[RangeBiasEstimatorSingleAntennaModel getNormalizedFftCir:]", "NRBYRangeBiasEstimator.mm", 806, "normalizedFftMagnitude != 0");
    }

    v48 = log10(v47) * 20.0;
    var1 = retstr->var1;
    var2 = retstr->var2;
    if (var1 >= var2)
    {
      var0 = retstr->var0;
      v53 = var1 - retstr->var0;
      v54 = v53 >> 3;
      v55 = (v53 >> 3) + 1;
      if (v55 >> 61)
      {
        sub_100019B38();
      }

      v56 = var2 - var0;
      if (v56 >> 2 > v55)
      {
        v55 = v56 >> 2;
      }

      if (v56 >= 0x7FFFFFFFFFFFFFF8)
      {
        v57 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v55;
      }

      if (v57)
      {
        sub_100012564(retstr, v57);
      }

      *(8 * v54) = v48;
      v51 = (8 * v54 + 8);
      memcpy(0, var0, v53);
      v58 = retstr->var0;
      retstr->var0 = 0;
      retstr->var1 = v51;
      retstr->var2 = 0;
      if (v58)
      {
        operator delete(v58);
      }
    }

    else
    {
      *var1 = v48;
      v51 = var1 + 1;
    }

    retstr->var1 = v51;
    ++v44;
    v40 = v60;
    v43 += 2;
  }

  while (v44 < (v61 - v60) >> 4);
  if (v60)
  {
LABEL_45:
    v61 = v40;
    operator delete(v40);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (__src)
  {
    v69 = __src;
    operator delete(__src);
  }

  return result;
}

- (id)scaleCirValuesIfRequired:(id)required
{
  requiredCopy = required;
  v5 = *(sub_1000054A8() + 186);
  if (!v5)
  {
    v3 = [requiredCopy copy];
    goto LABEL_16;
  }

  if (v5 == 2)
  {
    v32 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#bias-est, Unknown platform", v34, 2u);
    }

    goto LABEL_15;
  }

  if (v5 != 1)
  {
    goto LABEL_16;
  }

  v6 = 0;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v9 = [requiredCopy objectAtIndexedSubscript:v6];
    real = [v9 real];
    [real doubleValue];
    v12 = v11;

    v13 = [requiredCopy objectAtIndexedSubscript:v6];
    imag = [v13 imag];
    [imag doubleValue];
    v7 = fmax(fabs(v12), v7);
    v8 = fmax(fabs(v15), v8);

    ++v6;
  }

  while (v6 != 8);
  v16 = fmaxf(v7, v8);
  if (v16 <= 0.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CBCD8();
    }

LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  v17 = objc_alloc_init(NSMutableArray);
  v18 = 0;
  v19 = (32767.0 / v16);
  do
  {
    v20 = [requiredCopy objectAtIndexedSubscript:v18];
    real2 = [v20 real];
    [real2 doubleValue];
    v23 = v22;

    v24 = [requiredCopy objectAtIndexedSubscript:v18];
    imag2 = [v24 imag];
    [imag2 doubleValue];
    v27 = v26;

    v28 = [Complex alloc];
    v29 = [NSNumber numberWithDouble:v23 * v19];
    v30 = [NSNumber numberWithDouble:v27 * v19];
    v31 = [(Complex *)v28 initWithRealPart:v29 imagPart:v30];
    [v17 addObject:v31];

    ++v18;
  }

  while (v18 != 8);
  v3 = [v17 copy];

LABEL_16:

  return v3;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end