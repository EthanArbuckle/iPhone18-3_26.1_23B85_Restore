@interface CLContextManagerAbsoluteAltimeter
- (void)calculateAndSendAltitudeFromBaro;
- (void)calculateAndSendAltitudeFromLocation;
@end

@implementation CLContextManagerAbsoluteAltimeter

- (void)calculateAndSendAltitudeFromBaro
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = [(CLBarometerCalibrationContextClient *)self->super.super._delegate copyCurrentBias];
  [v4 timestamp];
  if (vabdd_f64(Current, v5) > 1800.0)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101A72D40();
    }

    v6 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      [v4 timestamp];
      *buf = 134217984;
      v124 = vabdd_f64(Current, v7);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "bias age is %f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A73388(v4);
    }

    [(CLContextManagerAbsoluteAltimeter *)self turnOnLocationPowerAssertion:Current];
  }

  v110 = 0.0;
  v111 = 0.0;
  v109 = 0.0;
  [(CLContextManagerAbsoluteAltimeter *)self filteredElevation:&v111 absAltUncertainty:&v110 withTimestamp:&v109];
  v8 = v111;
  if (v111 != 1.79769313e308)
  {
    v19 = 0.0;
    v20 = v111;
    if (!self->_useAOPAltimeter)
    {
      [v4 biasInMeters];
      v22 = v21;
      [v4 weatherEstimateInMeter];
      v19 = v22 - v23;
      v20 = v111;
    }

    v111 = v19 + v20;
    goto LABEL_18;
  }

  fDataBuffers = self->super.super.fDataBuffers;
  v10 = fDataBuffers[11];
  if (v10)
  {
    v11 = (*(fDataBuffers[7] + (((v10 + fDataBuffers[10] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v10 + *(fDataBuffers + 80) - 1));
    v13 = *v11;
    v12 = v11[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v13[1] * 1000.0;
    v15 = sub_1000A6C00(v14, 101320.0);
    [v4 biasInMeters];
    v17 = v16;
    [v4 weatherEstimateInMeter];
    v111 = v17 + v15 - v18;
    v109 = *v13;
    if (v12)
    {
      sub_100008080(v12);
    }

LABEL_18:
    v24 = objc_opt_new();
    [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:v110];
    v108 = v25;
    if ([(CLBarometerCalibrationContextClient *)self->super.super._delegate inOutdoorWorkout])
    {
      [(CLContextManagerAbsoluteAltimeter *)self chooseUncertaintyDuringWorkout:&v108 withAltitude:v111 atTime:v109];
    }

    v26 = [(CLBarometerCalibrationContextClient *)self->super.super._delegate isInVisit];
    if (v108 > 25.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if ((v27 & 1) != 0 || v108 == 500.0)
    {
      self->_uncalibratedState = 1;
      if (qword_1025D4410 != -1)
      {
        sub_101A72B28();
      }

      v30 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v124 = v111;
        v125 = 2048;
        v126 = v108;
        v127 = 2048;
        v128 = v109;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "switch to wet behavior due to large uncertainty,alt2,%f,alt2Unc,%f,timestamp,%f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v112 = 134218496;
        v113 = v111;
        v114 = 2048;
        v115 = v108;
        v116 = 2048;
        v117 = v109;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }

    else
    {
      self->_uncalibratedState = 0;
      [v24 setTimestamp:v109];
      [v24 setAltitude:v111];
      [v24 setAccuracy:v108];
      [v24 setPrecision:0.5];
      [v4 timestamp];
      if (v28 == 1.79769313e308)
      {
        v29 = 1;
      }

      else
      {
        v29 = [v4 statusInfo];
      }

      [v24 setStatusInfo:v29];
      lastAltitudeSentTimestamp = self->_lastAltitudeSentTimestamp;
      [v24 timestamp];
      if (lastAltitudeSentTimestamp != v42)
      {
        sub_10001A3E8();
        if (((v8 == 1.79769313e308) & sub_10001CF3C()) == 0)
        {
          [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v24];
        }

        [v24 timestamp];
        self->_lastAltitudeSentTimestamp = v43;
        self->_currentStatusInfo = [v24 statusInfo];
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v44 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
        {
          [v24 altitude];
          v46 = v45;
          [v24 altitude];
          v48 = v47;
          [v4 weatherEstimateInMeter];
          v50 = v49;
          [v4 weatherEstimateInMeter];
          v51 = self->_lastAltitudeSentTimestamp;
          *buf = 134218752;
          v124 = v46;
          v125 = 2048;
          v126 = v48 + v50;
          v127 = 2048;
          v128 = v52;
          v129 = 2048;
          *v130 = v51;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "absolute altitude corrected %f, absolute altitude before correction %f, weather %f, timestamp %f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          [v24 altitude];
          v75 = v74;
          [v24 altitude];
          v77 = v76;
          [v4 weatherEstimateInMeter];
          v79 = v78;
          [v4 weatherEstimateInMeter];
          v80 = self->_lastAltitudeSentTimestamp;
          v112 = 134218752;
          v113 = v75;
          v114 = 2048;
          v115 = v77 + v79;
          v116 = 2048;
          v117 = v81;
          v118 = 2048;
          *v119 = v80;
          v82 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v82);
          if (v82 != buf)
          {
            free(v82);
          }
        }

        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v53 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
        {
          [v24 altitude];
          v55 = v54;
          [v24 accuracy];
          v57 = v56;
          [v24 precision];
          v59 = v58;
          currentStatusInfo = self->_currentStatusInfo;
          v61 = self->_lastAltitudeSentTimestamp;
          [v4 uncertaintyInMeters];
          *buf = 134219520;
          v124 = v55;
          v125 = 2048;
          v126 = v57;
          v127 = 2048;
          v128 = v59;
          v129 = 1024;
          *v130 = currentStatusInfo;
          *&v130[4] = 1024;
          *&v130[6] = 0;
          *v131 = 2048;
          *&v131[2] = v61;
          v132 = 2048;
          v133 = v62;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp, %f, bias uncertainty, %f", buf, 0x40u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          [v24 altitude];
          v84 = v83;
          [v24 accuracy];
          v86 = v85;
          [v24 precision];
          v88 = v87;
          v89 = self->_currentStatusInfo;
          v90 = self->_lastAltitudeSentTimestamp;
          [v4 uncertaintyInMeters];
          v112 = 134219520;
          v113 = v84;
          v114 = 2048;
          v115 = v86;
          v116 = 2048;
          v117 = v88;
          v118 = 1024;
          *v119 = v89;
          *&v119[4] = 1024;
          *&v119[6] = 0;
          *v120 = 2048;
          *&v120[2] = v90;
          v121 = 2048;
          v122 = v91;
          v92 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v92);
          if (v92 != buf)
          {
            free(v92);
          }
        }

        if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v63 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            [v24 altitude];
            v65 = v64;
            [v24 accuracy];
            v67 = v66;
            [v24 precision];
            v69 = v68;
            v70 = self->_currentStatusInfo;
            v71 = self->_lastAltitudeSentTimestamp;
            [v4 uncertaintyInMeters];
            *buf = 134219520;
            v124 = v65;
            v125 = 2048;
            v126 = v67;
            v127 = 2048;
            v128 = v69;
            v129 = 1024;
            *v130 = v70;
            *&v130[4] = 1024;
            *&v130[6] = 0;
            *v131 = 2048;
            *&v131[2] = v71;
            v132 = 2048;
            v133 = v72;
            _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp, %f, bias uncertainty, %f", buf, 0x40u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101A72B28();
            }

            [v24 altitude];
            v99 = v98;
            [v24 accuracy];
            v101 = v100;
            [v24 precision];
            v103 = v102;
            v104 = self->_currentStatusInfo;
            v105 = self->_lastAltitudeSentTimestamp;
            [v4 uncertaintyInMeters];
            v112 = 134219520;
            v113 = v99;
            v114 = 2048;
            v115 = v101;
            v116 = 2048;
            v117 = v103;
            v118 = 1024;
            *v119 = v104;
            *&v119[4] = 1024;
            *&v119[6] = 0;
            *v120 = 2048;
            *&v120[2] = v105;
            v121 = 2048;
            v122 = v106;
            v107 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v107);
            if (v107 != buf)
            {
              free(v107);
            }
          }

          self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
        }
      }
    }

    return;
  }

  v32 = fDataBuffers[35];
  if (v32)
  {
    v33 = *(fDataBuffers[31] + (((v32 + fDataBuffers[34] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v32 + *(fDataBuffers + 272) - 1);
    v34 = *v33;
    v35 = *(v33 + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (qword_1025D4410 != -1)
    {
      sub_101A72B28();
    }

    v36 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v37 = *v34;
      v38 = v34[1];
      v39 = *(v34 + 2);
      v40 = *(v34 + 3);
      *buf = 134219008;
      v124 = Current;
      v125 = 2048;
      v126 = v37;
      v127 = 2048;
      v128 = v38;
      v129 = 2048;
      *v130 = v39;
      *&v130[8] = 2048;
      *v131 = v40;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "#altimeter,KF pressure data unusable and no pressure data available,now,%.3lf,fTimestamp,%.3lf,fKFElevation,%.1lf,fKFPressure,%.1lf,fAbsAltUncertainty,%.1lf", buf, 0x34u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A73054(buf);
      v93 = *v34;
      v94 = v34[1];
      v95 = *(v34 + 2);
      v96 = *(v34 + 3);
      v112 = 134219008;
      v113 = Current;
      v114 = 2048;
      v115 = v93;
      v116 = 2048;
      v117 = v94;
      v118 = 2048;
      *v119 = v95;
      *&v119[8] = 2048;
      *v120 = v96;
      v97 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v97);
      if (v97 != buf)
      {
        free(v97);
      }
    }

    if (v35)
    {
      sub_100008080(v35);
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101A72B28();
    }

    v73 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v124 = Current;
      _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_FAULT, "#altimeter,KF pressure data and pressure data are unavailable,now,%.3lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A734A8();
    }
  }
}

- (void)calculateAndSendAltitudeFromLocation
{
  fDataBuffers = self->super.super.fDataBuffers;
  v4 = fDataBuffers[5] + fDataBuffers[4] - 1;
  v5 = *(*(fDataBuffers[1] + ((v4 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v4);
  v152 = v5;
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    v155 = v5;
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v155 = v5;
  }

  v153 = -1.0;
  v154 = 1.79769313e308;
  [CLBarometerCalibrationBiasEstimator getLocationSampleAltitudeAndUncertainty:&v155 andRefAltitude:&v154 andRefUncertainty:&v153];
  v6 = [(CLBarometerCalibrationContextClient *)self->super.super._delegate inOutdoorWorkout];
  v7 = *(v152 + 100);
  if (!v6)
  {
    if (v7 == 1)
    {
      if (*(v152 + 56) <= 0.0 || vabdd_f64(*(v152 + 24), *(v152 + 48)) > 10.0)
      {
        goto LABEL_84;
      }

      v11 = objc_opt_new();
      [v11 setTimestamp:*v152];
      [v11 setAltitude:*(v152 + 48)];
      [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:vabdd_f64(*(v152 + 24), *(v152 + 48))];
      [v11 setAccuracy:?];
      [v11 setPrecision:5.0];
      [v11 setStatusInfo:2];
      lastAltitudeSentTimestamp = self->_lastAltitudeSentTimestamp;
      [v11 timestamp];
      if (lastAltitudeSentTimestamp != v32)
      {
        [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v11];
        [v11 timestamp];
        self->_lastAltitudeSentTimestamp = v33;
        self->_currentStatusInfo = 2;
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v34 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
        {
          [v11 altitude];
          v36 = v35;
          [v11 accuracy];
          v38 = v37;
          [v11 precision];
          currentStatusInfo = self->_currentStatusInfo;
          v40 = self->_lastAltitudeSentTimestamp;
          *buf = 134219264;
          v169 = v36;
          v170 = 2048;
          v171 = v38;
          v172 = 2048;
          v173 = v41;
          v174 = 1024;
          v175 = currentStatusInfo;
          v176 = 1024;
          v177 = 2;
          v178 = 2048;
          v179 = v40;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A73054(buf);
          [v11 altitude];
          v121 = v120;
          [v11 accuracy];
          v123 = v122;
          [v11 precision];
          v124 = self->_currentStatusInfo;
          v125 = self->_lastAltitudeSentTimestamp;
          v156 = 134219264;
          v157 = v121;
          v158 = 2048;
          v159 = v123;
          v160 = 2048;
          v161 = v126;
          v162 = 1024;
          v163 = v124;
          v164 = 1024;
          v165 = 2;
          v166 = 2048;
          v167 = v125;
          v127 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v127);
          if (v127 != buf)
          {
            free(v127);
          }
        }

        if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v42 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            [v11 altitude];
            v44 = v43;
            [v11 accuracy];
            v46 = v45;
            [v11 precision];
            v47 = self->_currentStatusInfo;
            v48 = self->_lastAltitudeSentTimestamp;
            *buf = 134219264;
            v169 = v44;
            v170 = 2048;
            v171 = v46;
            v172 = 2048;
            v173 = v49;
            v174 = 1024;
            v175 = v47;
            v176 = 1024;
            v177 = 2;
            v178 = 2048;
            v179 = v48;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A73054(buf);
            [v11 altitude];
            v145 = v144;
            [v11 accuracy];
            v147 = v146;
            [v11 precision];
            v148 = self->_currentStatusInfo;
            v149 = self->_lastAltitudeSentTimestamp;
            v156 = 134219264;
            v157 = v145;
            v158 = 2048;
            v159 = v147;
            v160 = 2048;
            v161 = v150;
            v162 = 1024;
            v163 = v148;
            v164 = 1024;
            v165 = 2;
            v166 = 2048;
            v167 = v149;
            v151 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v151);
            if (v151 != buf)
            {
              free(v151);
            }
          }

          self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
        }
      }
    }

    else
    {
      if (v7 != 11 && v7 != 4)
      {
        goto LABEL_84;
      }

      if (*(v152 + 56) > 0.0 && v153 > 0.0 && vabdd_f64(v154, *(v152 + 48)) <= 10.0)
      {
        v11 = objc_opt_new();
        [v11 setTimestamp:*v152];
        [v11 setAltitude:*(v152 + 48)];
        [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:vabdd_f64(*(v152 + 24), *(v152 + 48))];
        [v11 setAccuracy:?];
        [v11 setPrecision:5.0];
        [v11 setStatusInfo:2];
        v69 = self->_lastAltitudeSentTimestamp;
        [v11 timestamp];
        if (v69 != v70)
        {
          [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v11];
          [v11 timestamp];
          self->_lastAltitudeSentTimestamp = v71;
          self->_currentStatusInfo = 2;
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v72 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
          {
            [v11 altitude];
            v74 = v73;
            [v11 accuracy];
            v76 = v75;
            [v11 precision];
            v77 = self->_currentStatusInfo;
            v78 = self->_lastAltitudeSentTimestamp;
            *buf = 134219264;
            v169 = v74;
            v170 = 2048;
            v171 = v76;
            v172 = 2048;
            v173 = v79;
            v174 = 1024;
            v175 = v77;
            v176 = 1024;
            v177 = 3;
            v178 = 2048;
            v179 = v78;
            _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A73054(buf);
            [v11 altitude];
            v105 = v104;
            [v11 accuracy];
            v107 = v106;
            [v11 precision];
            v108 = self->_currentStatusInfo;
            v109 = self->_lastAltitudeSentTimestamp;
            v156 = 134219264;
            v157 = v105;
            v158 = 2048;
            v159 = v107;
            v160 = 2048;
            v161 = v110;
            v162 = 1024;
            v163 = v108;
            v164 = 1024;
            v165 = 3;
            v166 = 2048;
            v167 = v109;
            v111 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v111);
            if (v111 != buf)
            {
              free(v111);
            }
          }

          if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
          {
            if (qword_1025D4410 != -1)
            {
              sub_101A72B28();
            }

            v80 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
            {
              [v11 altitude];
              v82 = v81;
              [v11 accuracy];
              v84 = v83;
              [v11 precision];
              v85 = self->_currentStatusInfo;
              v86 = self->_lastAltitudeSentTimestamp;
              *buf = 134219264;
              v169 = v82;
              v170 = 2048;
              v171 = v84;
              v172 = 2048;
              v173 = v87;
              v174 = 1024;
              v175 = v85;
              v176 = 1024;
              v177 = 3;
              v178 = 2048;
              v179 = v86;
              _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A73054(buf);
              [v11 altitude];
              v137 = v136;
              [v11 accuracy];
              v139 = v138;
              [v11 precision];
              v140 = self->_currentStatusInfo;
              v141 = self->_lastAltitudeSentTimestamp;
              v156 = 134219264;
              v157 = v137;
              v158 = 2048;
              v159 = v139;
              v160 = 2048;
              v161 = v142;
              v162 = 1024;
              v163 = v140;
              v164 = 1024;
              v165 = 3;
              v166 = 2048;
              v167 = v141;
              v143 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v143);
              if (v143 != buf)
              {
                free(v143);
              }
            }

            self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
          }
        }
      }

      else
      {
        if (v153 <= 0.0)
        {
          goto LABEL_84;
        }

        v11 = objc_opt_new();
        [v11 setTimestamp:*v152];
        [v11 setAltitude:*(v152 + 24)];
        [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:*(v152 + 40)];
        [v11 setAccuracy:?];
        [v11 setPrecision:5.0];
        [v11 setStatusInfo:2];
        v12 = self->_lastAltitudeSentTimestamp;
        [v11 timestamp];
        if (v12 != v13)
        {
          [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v11];
          [v11 timestamp];
          self->_lastAltitudeSentTimestamp = v14;
          self->_currentStatusInfo = 2;
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v15 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
          {
            [v11 altitude];
            v17 = v16;
            [v11 accuracy];
            v19 = v18;
            [v11 precision];
            v20 = self->_currentStatusInfo;
            v21 = self->_lastAltitudeSentTimestamp;
            *buf = 134219264;
            v169 = v17;
            v170 = 2048;
            v171 = v19;
            v172 = 2048;
            v173 = v22;
            v174 = 1024;
            v175 = v20;
            v176 = 1024;
            v177 = 4;
            v178 = 2048;
            v179 = v21;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A73054(buf);
            [v11 altitude];
            v89 = v88;
            [v11 accuracy];
            v91 = v90;
            [v11 precision];
            v92 = self->_currentStatusInfo;
            v93 = self->_lastAltitudeSentTimestamp;
            v156 = 134219264;
            v157 = v89;
            v158 = 2048;
            v159 = v91;
            v160 = 2048;
            v161 = v94;
            v162 = 1024;
            v163 = v92;
            v164 = 1024;
            v165 = 4;
            v166 = 2048;
            v167 = v93;
            v95 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v95);
            if (v95 != buf)
            {
              free(v95);
            }
          }

          if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
          {
            if (qword_1025D4410 != -1)
            {
              sub_101A72B28();
            }

            v23 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
            {
              [v11 altitude];
              v25 = v24;
              [v11 accuracy];
              v27 = v26;
              [v11 precision];
              v28 = self->_currentStatusInfo;
              v29 = self->_lastAltitudeSentTimestamp;
              *buf = 134219264;
              v169 = v25;
              v170 = 2048;
              v171 = v27;
              v172 = 2048;
              v173 = v30;
              v174 = 1024;
              v175 = v28;
              v176 = 1024;
              v177 = 4;
              v178 = 2048;
              v179 = v29;
              _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A73054(buf);
              [v11 altitude];
              v113 = v112;
              [v11 accuracy];
              v115 = v114;
              [v11 precision];
              v116 = self->_currentStatusInfo;
              v117 = self->_lastAltitudeSentTimestamp;
              v156 = 134219264;
              v157 = v113;
              v158 = 2048;
              v159 = v115;
              v160 = 2048;
              v161 = v118;
              v162 = 1024;
              v163 = v116;
              v164 = 1024;
              v165 = 4;
              v166 = 2048;
              v167 = v117;
              v119 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v119);
              if (v119 != buf)
              {
                free(v119);
              }
            }

            self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
          }
        }
      }
    }

LABEL_83:

    goto LABEL_84;
  }

  if (v7 == 1 && *(v152 + 56) > 0.0 && v153 > 0.0 && vabdd_f64(v154, *(v152 + 48)) <= 10.0)
  {
    v11 = objc_opt_new();
    [v11 setTimestamp:*v152];
    [v11 setAltitude:*(v152 + 48)];
    [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:vabdd_f64(*(v152 + 24), *(v152 + 48))];
    [v11 setAccuracy:?];
    [v11 setPrecision:5.0];
    [v11 setStatusInfo:2];
    v50 = self->_lastAltitudeSentTimestamp;
    [v11 timestamp];
    if (v50 != v51)
    {
      [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v11];
      [v11 timestamp];
      self->_lastAltitudeSentTimestamp = v52;
      self->_currentStatusInfo = 2;
      if (qword_1025D4410 != -1)
      {
        sub_101A72B28();
      }

      v53 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
      {
        [v11 altitude];
        v55 = v54;
        [v11 accuracy];
        v57 = v56;
        [v11 precision];
        v58 = self->_currentStatusInfo;
        v59 = self->_lastAltitudeSentTimestamp;
        *buf = 134219264;
        v169 = v55;
        v170 = 2048;
        v171 = v57;
        v172 = 2048;
        v173 = v60;
        v174 = 1024;
        v175 = v58;
        v176 = 1024;
        v177 = 1;
        v178 = 2048;
        v179 = v59;
        _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A73054(buf);
        [v11 altitude];
        v97 = v96;
        [v11 accuracy];
        v99 = v98;
        [v11 precision];
        v100 = self->_currentStatusInfo;
        v101 = self->_lastAltitudeSentTimestamp;
        v156 = 134219264;
        v157 = v97;
        v158 = 2048;
        v159 = v99;
        v160 = 2048;
        v161 = v102;
        v162 = 1024;
        v163 = v100;
        v164 = 1024;
        v165 = 1;
        v166 = 2048;
        v167 = v101;
        v103 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v103);
        if (v103 != buf)
        {
          free(v103);
        }
      }

      if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v61 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          [v11 altitude];
          v63 = v62;
          [v11 accuracy];
          v65 = v64;
          [v11 precision];
          v66 = self->_currentStatusInfo;
          v67 = self->_lastAltitudeSentTimestamp;
          *buf = 134219264;
          v169 = v63;
          v170 = 2048;
          v171 = v65;
          v172 = 2048;
          v173 = v68;
          v174 = 1024;
          v175 = v66;
          v176 = 1024;
          v177 = 1;
          v178 = 2048;
          v179 = v67;
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A73054(buf);
          [v11 altitude];
          v129 = v128;
          [v11 accuracy];
          v131 = v130;
          [v11 precision];
          v132 = self->_currentStatusInfo;
          v133 = self->_lastAltitudeSentTimestamp;
          v156 = 134219264;
          v157 = v129;
          v158 = 2048;
          v159 = v131;
          v160 = 2048;
          v161 = v134;
          v162 = 1024;
          v163 = v132;
          v164 = 1024;
          v165 = 1;
          v166 = 2048;
          v167 = v133;
          v135 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v135);
          if (v135 != buf)
          {
            free(v135);
          }
        }

        self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
      }
    }

    goto LABEL_83;
  }

  if (qword_1025D4410 != -1)
  {
    sub_101A72B28();
  }

  v8 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "GPS too far from DEM, not updating altitude", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A73054(buf);
    LOWORD(v156) = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

LABEL_84:
  if (*(&v155 + 1))
  {
    sub_100008080(*(&v155 + 1));
  }

  if (*(&v152 + 1))
  {
    sub_100008080(*(&v152 + 1));
  }
}

@end