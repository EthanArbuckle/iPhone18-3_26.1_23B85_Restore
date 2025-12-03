@interface NIServerNBAMMSSession
- (BOOL)_encryptAndUpdateAidingAndSignallingPayload;
- (BOOL)_encryptAndUpdateMutualAuthPayload;
- (BOOL)_isCryptoDisabled;
- (BOOL)_shouldSendMutualAuthMessage;
- (BOOL)_shouldUseFinderToken:(id)token findeeToken:(id)findeeToken;
- (BOOL)_validateTokensAndRangingParameters;
- (NIServerNBAMMSSession)initWithQueue:(id)queue identityString:(id)string stateUpdateHandler:(id)handler mutualAuthHandler:(id)authHandler;
- (SessionClientsStatus)sessionClientsStatus;
- (id).cxx_construct;
- (id)_decrypt:(id)_decrypt;
- (id)_encrypt:(id)_encrypt;
- (id)_getState;
- (id)identityString;
- (id)printableState;
- (id)registerNBAMMSSessionWithToken:(id)token isFinder:(BOOL)finder client:(id)client serviceRequest:(const void *)request startRangingOptions:(const void *)options sharedProtocol:(int)protocol;
- (id)sessionClientForFinder:(BOOL)finder;
- (id)sessionTokenForFinder:(BOOL)finder;
- (optional<rose::RoseServiceRequest>)sessionServiceRequestForFinder:(SEL)finder;
- (optional<rose::RoseStartRangingOptions>)sessionStartRangingOptionsForFinder:(SEL)finder;
- (shared_ptr<rose::objects::NBAMMSSession>)_buildNbammsSession:(const void *)session;
- (unsigned)_encodeSignallingDataInMessageID:(unsigned __int8)d;
- (vector<NMISessionRole,)attachedRoles;
- (void)_armMutualAuthTimerForFinder:(BOOL)finder;
- (void)_didReceiveInvalidation:(int)invalidation;
- (void)_didReceiveNewSolution:(const void *)solution;
- (void)_didReceivePeerData:(const void *)data;
- (void)_didReceiveUnsuccessfulSolution:(const void *)solution;
- (void)_handleCryptoFailure;
- (void)_handleNonMutualAuthMessage;
- (void)_initializeEncryptionSessionIfNecessary;
- (void)_logStatisticsIfNecessary;
- (void)_processNonMutualAuthMessageForFinder:(BOOL)finder;
- (void)_processPeerMessage:(void *)message machAbsTimestamp:(double)timestamp wasEncrypted:(BOOL)encrypted;
- (void)_processPeerMutualAuthState:(const MutualAuthState *)state peerIsFinder:(BOOL)finder;
- (void)_receivedAidingAndSignallingMessage:(const void *)message machAbsTimestamp:(double)timestamp;
- (void)_receivedCryptoSessionConfigMessage:(const void *)message;
- (void)_receivedMutualAuthMessage:(const void *)message;
- (void)_reportMutualAuthStates;
- (void)_resetCryptoStateIncludingFailures:(BOOL)failures;
- (void)_resetStatistics;
- (void)_serviceRequestStatusUpdate:(const ServiceRequestStatusUpdate *)update;
- (void)_updateCryptoSessionConfigPayload;
- (void)_updateSessionPayload;
- (void)informMutualAuthFailuresToClients;
- (void)refreshRangingForToken:(id)token withNewStartOptions:(const void *)options;
- (void)unregisterNBAMMSSessionForToken:(id)token;
- (void)updateAlgorithmAidingData:(const void *)data token:(id)token;
- (void)updateSignallingData:(const void *)data token:(id)token;
@end

@implementation NIServerNBAMMSSession

- (NIServerNBAMMSSession)initWithQueue:(id)queue identityString:(id)string stateUpdateHandler:(id)handler mutualAuthHandler:(id)authHandler
{
  queueCopy = queue;
  stringCopy = string;
  handlerCopy = handler;
  authHandlerCopy = authHandler;
  v36.receiver = self;
  v36.super_class = NIServerNBAMMSSession;
  v15 = [(NIServerNBAMMSSession *)&v36 init];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_internalQueue, queue);
    objc_storeStrong(&v16->_identityString, string);
    cntrl = v17->_nbammsSession.__cntrl_;
    v17->_nbammsSession.__ptr_ = 0;
    v17->_nbammsSession.__cntrl_ = 0;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }

    v17->_sessionState = 0;
    sessionToken = v17->_sessionToken;
    v17->_sessionToken = 0;

    if (v17->_sessionStartRangingOptions.__engaged_)
    {
      v17->_sessionStartRangingOptions.__engaged_ = 0;
    }

    v17->_sharedProtocol = -1;
    v20 = sub_10035D02C();
    v22 = v20[20];
    v21 = v20[21];
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = v17->_pbLogger.__cntrl_;
    v17->_pbLogger.__ptr_ = v22;
    v17->_pbLogger.__cntrl_ = v21;
    if (v23)
    {
      sub_10000AD84(v23);
    }

    v17->_measurementsReceived = 0;
    selfEncryptionSession = v17->_selfEncryptionSession;
    v17->_selfEncryptionSession = 0;

    peerDecryptionSession = v17->_peerDecryptionSession;
    v17->_peerDecryptionSession = 0;

    if ([(NIServerNBAMMSSession *)v17 _isCryptoDisabled])
    {
      v26 = 3;
    }

    else
    {
      v26 = 0;
    }

    v17->_cryptoSessionState = v26;
    v17->_cryptoFailures = 0;
    v17->_finderAttached = 0;
    objc_storeWeak(&v16->_finderClient, 0);
    sub_100283A48(&v16->_finderMutualAuthState);
    secondary_scheduling_delay_usec = v17->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
    v17->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec = 0;

    v17->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = 0;
    finderToken = v17->_finderToken;
    v17->_finderToken = 0;

    if (v17->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
    {
      v17->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    }

    if (LOBYTE(v17->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) == 1)
    {
      LOBYTE(v17->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) = 0;
    }

    if (v17->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_)
    {
      v17->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_ = 0;
    }

    if (BYTE2(v17->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1)
    {
      BYTE2(v17->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) = 0;
    }

    HIBYTE(v17->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) = 0;
    objc_storeWeak(&v16->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle, 0);
    sub_100283A48(&v16->_finderStartRangingOptions.__engaged_);
    velocityChangeH2 = v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
    v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2 = 0.0;

    v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ = 0;
    outboundChallenge = v17->_findeeMutualAuthState.outboundChallenge;
    v17->_findeeMutualAuthState.outboundChallenge = 0;

    if (v17->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_)
    {
      v17->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_ = 0;
    }

    if (v17->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] == 1)
    {
      v17->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] = 0;
    }

    if (v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ == 1)
    {
      v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = 0;
    }

    if (BYTE1(v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) == 1)
    {
      BYTE1(v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) = 0;
    }

    if (*(&v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2))
    {
      *(&v17->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2) = 0;
    }

    v31 = objc_retainBlock(handlerCopy);
    val = v17->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.var0.__val_;
    *&v17->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.var0.__val_ = v31;

    v33 = objc_retainBlock(authHandlerCopy);
    v34 = *&v17->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_;
    *&v17->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ = v33;

    *&v17->_findeeAlgorithmAidingData.var0.__val_.location_data.__engaged_ = 0;
    *&v17->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty = 0;
    *&v16->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__null_state_ = 0u;
  }

  return v17;
}

- (id)registerNBAMMSSessionWithToken:(id)token isFinder:(BOOL)finder client:(id)client serviceRequest:(const void *)request startRangingOptions:(const void *)options sharedProtocol:(int)protocol
{
  finderCopy = finder;
  tokenCopy = token;
  tokenCopy2 = token;
  clientCopy = client;
  selfCopy2 = self;
  v17 = clientCopy;
  dispatch_assert_queue_V2(self->_internalQueue);
  v18 = qword_1009F9820;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v99 = v17;
    identityString = self->_identityString;
    descriptionInternal = [tokenCopy2 descriptionInternal];
    *buf = 138412802;
    v113 = identityString;
    v114 = 2112;
    v115 = descriptionInternal;
    v116 = 2080;
    v117 = sub_100009210(finderCopy);
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#find-range,Registering %@ with token %@, role %s", buf, 0x20u);

    v17 = v99;
    selfCopy2 = self;
  }

  if (!tokenCopy2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B639C();
    }

    goto LABEL_14;
  }

  if (!v17)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6368();
    }

    v110 = NSLocalizedFailureReasonErrorKey;
    v111 = @"Client is nil";
    v21 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v21];
    goto LABEL_26;
  }

  if (selfCopy2->_nbammsSession.__ptr_)
  {
    if (selfCopy2->_sharedProtocol == protocol)
    {
      if (!selfCopy2->_finderAttached && !selfCopy2->_finderToken && finderCopy)
      {
        selfCopy2->_finderAttached = 1;
        objc_storeWeak(&selfCopy2->_finderClient, v17);
        sub_100283A48(&selfCopy2->_finderMutualAuthState);
        if (BYTE2(selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1)
        {
          BYTE2(selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) = 0;
        }

        selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = 1;
        objc_storeStrong(&selfCopy2->_finderToken, tokenCopy);
        v25 = selfCopy2;
        engaged = selfCopy2->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_;
        memcpy(&v25->_finderRoseServiceRequest, request, 0x240uLL);
        if (!engaged)
        {
          v25->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 1;
        }

        scheduling_interval_usec = v25->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec;
        v29 = *(options + 1);
        v28 = *(options + 2);
        *&v25->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = *options;
        *v25->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.irk = v29;
        *&v25->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ = v28;
        v30 = *(options + 6);
        v32 = *(options + 3);
        v31 = *(options + 4);
        *&v25->_finderStartRangingOptions.var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = *(options + 5);
        *&v25->_finderStartRangingOptions.var0.__val_.start_time_or_offset_usec = v30;
        *&v25->_finderStartRangingOptions.var0.__null_state_ = v32;
        *(&v25->_finderStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v31;
        v33 = v25;
        if ((scheduling_interval_usec & 1) == 0)
        {
          LOBYTE(v25->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) = 1;
        }

        if (v25->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_)
        {
          p_engaged = &v25->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_;
LABEL_53:
          *p_engaged = 0;
          goto LABEL_54;
        }

        goto LABEL_54;
      }

      if ((selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_ & 0x1000000) == 0 && !selfCopy2->_findeeMutualAuthState.outboundChallenge && !finderCopy)
      {
        HIBYTE(selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) = 1;
        objc_storeWeak(&selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle, v17);
        sub_100283A48(&selfCopy2->_finderStartRangingOptions.__engaged_);
        if (*(&selfCopy2->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2))
        {
          *(&selfCopy2->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2) = 0;
        }

        selfCopy2->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ = 1;
        objc_storeStrong(&selfCopy2->_findeeMutualAuthState.outboundChallenge, tokenCopy);
        v38 = selfCopy2;
        v39 = selfCopy2->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_;
        memcpy(&v38->_findeeMutualAuthState.outboundResponse, request, 0x240uLL);
        if (!v39)
        {
          v38->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_ = 1;
        }

        v40 = v38->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12];
        v42 = *(options + 1);
        v41 = *(options + 2);
        *&v38->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.vendor_id.var0.__null_state_ = *options;
        *&v38->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.peer_addr_arr.__elems_[6] = v42;
        *&v38->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_bch.var0.__null_state_ = v41;
        v43 = *(options + 6);
        v45 = *(options + 3);
        v44 = *(options + 4);
        *&v38->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ = *(options + 5);
        *&v38->_findeeStartRangingOptions.var0.__null_state_ = v43;
        *&v38->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = v45;
        *v38->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.irk = v44;
        v33 = v38;
        if ((v40 & 1) == 0)
        {
          v38->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] = 1;
        }

        if (v38->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ == 1)
        {
          v38->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = 0;
        }

        if (BYTE1(v38->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1))
        {
          p_engaged = &v38->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1 + 1;
          goto LABEL_53;
        }

LABEL_54:
        v36 = v33;
        if (!v33->_finderAttached || HIBYTE(v33->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) != 1)
        {
          goto LABEL_93;
        }

        if (v33->_measurementsReceived)
        {
          v46 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#find-range,Reciprocal finding, measurements already received, do nothing", buf, 2u);
          }

          v21 = qword_1009F9820;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            _getState = [(NIServerNBAMMSSession *)v36 _getState];
            *buf = 138412290;
            v113 = _getState;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#find-range,NBAMMS session state (after register): %@", buf, 0xCu);
          }

LABEL_95:
          tokenCopy = 0;
          goto LABEL_96;
        }

        if ([(NIServerNBAMMSSession *)v33 _validateTokensAndRangingParameters])
        {
          tokenCopy = [(NIServerNBAMMSSession *)v36 _shouldUseFinderToken:v36->_finderToken findeeToken:v36->_findeeMutualAuthState.outboundChallenge];
          v74 = 1112;
          if (tokenCopy)
          {
            v74 = 304;
          }

          v75 = *(&v36->super.isa + v74);
          v21 = v75;
          v76 = [(NIDiscoveryToken *)v36->_sessionToken isEqual:v21];
          v77 = qword_1009F9820;
          if (v76)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#find-range,Reciprocal finding, ranging started with the right token, do nothing", buf, 2u);
            }

            v78 = qword_1009F9820;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              _getState2 = [(NIServerNBAMMSSession *)v36 _getState];
              *buf = 138412290;
              v113 = _getState2;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#find-range,NBAMMS session state (after register): %@", buf, 0xCu);
            }

            goto LABEL_95;
          }

          v80 = qword_1009F9820;
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            descriptionInternal2 = [v21 descriptionInternal];
            *buf = 138412290;
            v113 = descriptionInternal2;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#find-range,Reciprocal finding, re-configuring with new token %@", buf, 0xCu);
          }

          v36->_measurementsReceived = 0;
          ptr = v36->_nbammsSession.__ptr_;
          if (ptr)
          {
            sub_10033B864(ptr);
            cntrl = v36->_nbammsSession.__cntrl_;
            v36->_nbammsSession.__ptr_ = 0;
            v36->_nbammsSession.__cntrl_ = 0;
            if (cntrl)
            {
              sub_10000AD84(cntrl);
            }

            sessionToken = v36->_sessionToken;
            v36->_sessionToken = 0;

            if (v36->_sessionStartRangingOptions.__engaged_)
            {
              v36->_sessionStartRangingOptions.__engaged_ = 0;
            }

            [(NIServerNBAMMSSession *)v36 _resetStatistics];
            [(NIServerNBAMMSSession *)v36 _resetCryptoStateIncludingFailures:1];
          }

          if (tokenCopy)
          {
            if (v36->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
            {
              p_finderRoseServiceRequest = &v36->_finderRoseServiceRequest;
              goto LABEL_122;
            }
          }

          else if (v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_)
          {
            p_finderRoseServiceRequest = &v36->_findeeMutualAuthState.outboundResponse;
LABEL_122:
            [(NIServerNBAMMSSession *)v36 _buildNbammsSession:p_finderRoseServiceRequest];
            if (!v109)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004B6300();
              }

              v101 = NSLocalizedFailureReasonErrorKey;
              v102 = @"Could not build ranging session";
              v87 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
              tokenCopy = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v87];

              goto LABEL_135;
            }

            if (tokenCopy)
            {
              if (v36->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec)
              {
                p_null_state = &v36->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_;
LABEL_131:
                v88 = sub_10034024C(v109, p_null_state);
                if (!v88)
                {
                  v91 = *(&v109 + 1);
                  if (*(&v109 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v109 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v92 = v36->_nbammsSession.__cntrl_;
                  v36->_nbammsSession.__ptr_ = v109;
                  v36->_nbammsSession.__cntrl_ = v91;
                  if (v92)
                  {
                    sub_10000AD84(v92);
                  }

                  objc_storeStrong(&v36->_sessionToken, v75);
                  v36->_sessionState = 1;
                  val = v36->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.var0.__val_;
                  if (val != 0.0)
                  {
                    (*(*&val + 16))(COERCE_DOUBLE(*&val), v36, 1);
                  }

                  v94 = 1704;
                  if (tokenCopy)
                  {
                    v94 = 896;
                  }

                  v95 = v36 + v94;
                  v96 = *(v95 + 5);
                  *&v36->_sessionStartRangingOptions.var0.__val_.scheduling_interval_usec = *(v95 + 4);
                  *&v36->_sessionStartRangingOptions.var0.__val_.dither_constant_msec.var0.__null_state_ = v96;
                  *&v36->_sessionStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = *(v95 + 6);
                  v97 = *(v95 + 1);
                  *&v36->_sessionStartRangingOptions.var0.__null_state_ = *v95;
                  *(&v36->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v97;
                  v98 = *(v95 + 3);
                  *&v36->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = *(v95 + 2);
                  v36->_sessionStartRangingOptions.__engaged_ = v95[112];
                  *&v36->_sessionStartRangingOptions.var0.__val_.start_time_or_offset_usec = v98;
                  [(NIServerNBAMMSSession *)v36 _resetStatistics];
                  [(NIServerNBAMMSSession *)v36 _resetCryptoStateIncludingFailures:1];
                  [(NIServerNBAMMSSession *)v36 _updateSessionPayload];
                  v90 = 1;
LABEL_145:
                  if (*(&v109 + 1))
                  {
                    sub_10000AD84(*(&v109 + 1));
                  }

                  if ((v90 & 1) == 0)
                  {
                    goto LABEL_97;
                  }

LABEL_93:
                  v21 = qword_1009F9820;
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    _getState3 = [(NIServerNBAMMSSession *)v36 _getState];
                    LODWORD(v109) = 138412290;
                    *(&v109 + 4) = _getState3;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#find-range,NBAMMS session state (after register): %@", &v109, 0xCu);
                  }

                  goto LABEL_95;
                }

                v89 = qword_1009F9820;
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  sub_100342F8C(v88, buf);
                  sub_1004B62A0(buf);
                }

                tokenCopy = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
LABEL_135:
                v90 = 0;
                goto LABEL_145;
              }
            }

            else if (v36->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12])
            {
              p_null_state = &v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.vendor_id.var0.__null_state_;
              goto LABEL_131;
            }

            sub_1000195BC();
          }

          sub_1000195BC();
        }

LABEL_14:
        tokenCopy = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:0];
        goto LABEL_97;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B6334();
      }

      v103 = NSLocalizedFailureReasonErrorKey;
      v104 = @"Could not attache to existing NBAMMS session";
      v21 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v21];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B621C(&selfCopy2->_sharedProtocol);
      }

      v105 = NSLocalizedFailureReasonErrorKey;
      v106 = @"Shared protocols not matching";
      v21 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v21];
    }

LABEL_26:
    tokenCopy = v22;
LABEL_96:

    goto LABEL_97;
  }

  [(NIServerNBAMMSSession *)selfCopy2 _buildNbammsSession:request];
  if (!v109)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6300();
    }

    v107 = NSLocalizedFailureReasonErrorKey;
    v108 = @"Could not build ranging session";
    v35 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    tokenCopy = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v35];

    goto LABEL_40;
  }

  v23 = sub_10034024C(v109, options);
  if (v23)
  {
    v24 = qword_1009F9820;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100342F8C(v23, buf);
      sub_1004B62A0(buf);
    }

    tokenCopy = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
LABEL_40:
    v36 = selfCopy2;
    v37 = 0;
    goto LABEL_90;
  }

  if (finderCopy)
  {
    selfCopy2->_finderAttached = 1;
    objc_storeWeak(&selfCopy2->_finderClient, v17);
    objc_storeStrong(&selfCopy2->_finderToken, tokenCopy);
    v36 = selfCopy2;
    v48 = selfCopy2->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_;
    memcpy(&v36->_finderRoseServiceRequest, request, 0x240uLL);
    if (!v48)
    {
      v36->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 1;
    }

    v49 = v36->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec;
    v51 = *(options + 1);
    v50 = *(options + 2);
    *&v36->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = *options;
    *v36->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.irk = v51;
    *&v36->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ = v50;
    v52 = *(options + 6);
    v54 = *(options + 3);
    v53 = *(options + 4);
    *&v36->_finderStartRangingOptions.var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = *(options + 5);
    *&v36->_finderStartRangingOptions.var0.__val_.start_time_or_offset_usec = v52;
    *&v36->_finderStartRangingOptions.var0.__null_state_ = v54;
    *(&v36->_finderStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v53;
    if ((v49 & 1) == 0)
    {
      LOBYTE(v36->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) = 1;
    }

    if (v36->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_)
    {
      v36->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_ = 0;
    }

    sub_100283A48(&v36->_finderMutualAuthState);
    v36->_finderMutualAuthState.outboundAuthState = 1;
    if ((v36->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_ & 0x10000) == 0)
    {
      goto LABEL_81;
    }

    v55 = &v36->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec + 2;
  }

  else
  {
    HIBYTE(selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) = 1;
    objc_storeWeak(&selfCopy2->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle, v17);
    objc_storeStrong(&selfCopy2->_findeeMutualAuthState.outboundChallenge, tokenCopy);
    v36 = selfCopy2;
    v56 = selfCopy2->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_;
    memcpy(&v36->_findeeMutualAuthState.outboundResponse, request, 0x240uLL);
    if (!v56)
    {
      v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_ = 1;
    }

    v57 = v36->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12];
    v59 = *(options + 1);
    v58 = *(options + 2);
    *&v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.vendor_id.var0.__null_state_ = *options;
    *&v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.peer_addr_arr.__elems_[6] = v59;
    *&v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.nb_bch.var0.__null_state_ = v58;
    v60 = *(options + 6);
    v62 = *(options + 3);
    v61 = *(options + 4);
    *&v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.antenna_diversity_mask.var0.__null_state_ = *(options + 5);
    *&v36->_findeeStartRangingOptions.var0.__null_state_ = v60;
    *&v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = v62;
    *v36->_findeeRoseServiceRequest.var0.__val_.range_enable_params.nbamms.irk = v61;
    if ((v57 & 1) == 0)
    {
      v36->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] = 1;
    }

    if (v36->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ == 1)
    {
      v36->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = 0;
    }

    if (BYTE1(v36->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) == 1)
    {
      BYTE1(v36->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) = 0;
    }

    sub_100283A48(&v36->_finderStartRangingOptions.__engaged_);
    v36->_finderStartRangingOptions.__engaged_ = 1;
    if (!*(&v36->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2))
    {
      goto LABEL_81;
    }

    v55 = &v36->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2;
  }

  *v55 = 0;
LABEL_81:
  v63 = *(&v109 + 1);
  if (*(&v109 + 1))
  {
    atomic_fetch_add_explicit((*(&v109 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v64 = v36->_nbammsSession.__cntrl_;
  v36->_nbammsSession.__ptr_ = v109;
  v36->_nbammsSession.__cntrl_ = v63;
  if (v64)
  {
    sub_10000AD84(v64);
  }

  v36->_sharedProtocol = protocol;
  objc_storeStrong(&v36->_sessionToken, tokenCopy);
  v36->_sessionState = 1;
  v65 = v36->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.var0.__val_;
  if (v65 != 0.0)
  {
    (*(*&v65 + 16))(COERCE_DOUBLE(*&v65), v36, 1);
  }

  v66 = v36->_sessionStartRangingOptions.__engaged_;
  v68 = *(options + 1);
  v67 = *(options + 2);
  *&v36->_sessionStartRangingOptions.var0.__null_state_ = *options;
  *(&v36->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v68;
  *&v36->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = v67;
  v69 = *(options + 5);
  v70 = *(options + 6);
  v71 = *(options + 4);
  *&v36->_sessionStartRangingOptions.var0.__val_.start_time_or_offset_usec = *(options + 3);
  *&v36->_sessionStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = v70;
  *&v36->_sessionStartRangingOptions.var0.__val_.dither_constant_msec.var0.__null_state_ = v69;
  *&v36->_sessionStartRangingOptions.var0.__val_.scheduling_interval_usec = v71;
  if (!v66)
  {
    v36->_sessionStartRangingOptions.__engaged_ = 1;
  }

  [(NIServerNBAMMSSession *)v36 _resetStatistics];
  [(NIServerNBAMMSSession *)v36 _resetCryptoStateIncludingFailures:1];
  [(NIServerNBAMMSSession *)v36 _updateSessionPayload];
  v37 = 1;
LABEL_90:
  if (*(&v109 + 1))
  {
    sub_10000AD84(*(&v109 + 1));
  }

  if (v37)
  {
    goto LABEL_93;
  }

LABEL_97:

  return tokenCopy;
}

- (void)unregisterNBAMMSSessionForToken:(id)token
{
  tokenCopy = token;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identityString = self->_identityString;
    descriptionInternal = [tokenCopy descriptionInternal];
    *buf = 138412546;
    *&buf[4] = identityString;
    *&buf[12] = 2112;
    *&buf[14] = descriptionInternal;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-range,Unregistering session %@ with token %@", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  if ([tokenCopy isEqual:self->_finderToken])
  {
    finderToken = self->_finderToken;
    self->_finderToken = 0;

    objc_storeWeak(&self->_finderClient, 0);
    self->_finderAttached = 0;
    sub_100283A48(&self->_finderMutualAuthState);
    if (BYTE2(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1)
    {
      BYTE2(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) = 0;
    }

    self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = 0;
    secondary_scheduling_delay_usec = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
    if (secondary_scheduling_delay_usec)
    {
      dispatch_source_cancel(secondary_scheduling_delay_usec);
      v10 = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
      self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec = 0;
    }

    if (self->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_)
    {
      self->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    }

    if (LOBYTE(self->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) == 1)
    {
      LOBYTE(self->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) = 0;
    }

    if (self->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_)
    {
      self->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_ = 0;
    }

    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = tokenCopy;
      v12 = "#find-range,Finder role with token %@ is detached";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }
  }

  else
  {
    if (![tokenCopy isEqual:self->_findeeMutualAuthState.outboundChallenge])
    {
      v26 = qword_1009F9820;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        descriptionInternal2 = [tokenCopy descriptionInternal];
        *buf = 138412290;
        *&buf[4] = descriptionInternal2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#find-range,Not ranging with token %@, return", buf, 0xCu);
      }

      goto LABEL_75;
    }

    outboundChallenge = self->_findeeMutualAuthState.outboundChallenge;
    self->_findeeMutualAuthState.outboundChallenge = 0;

    objc_storeWeak(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle, 0);
    HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) = 0;
    sub_100283A48(&self->_finderStartRangingOptions.__engaged_);
    if (*(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2))
    {
      *(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2) = 0;
    }

    self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ = 0;
    velocityChangeH2 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
    if (velocityChangeH2 != 0.0)
    {
      dispatch_source_cancel(*&velocityChangeH2);
      v15 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
      self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2 = 0.0;
    }

    if (self->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_)
    {
      self->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_ = 0;
    }

    if (self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] == 1)
    {
      self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] = 0;
    }

    if (self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ == 1)
    {
      self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = 0;
    }

    if (BYTE1(self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) == 1)
    {
      BYTE1(self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) = 0;
    }

    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = tokenCopy;
      v12 = "#find-range,Findee role is detached with token %@ is detached";
      goto LABEL_31;
    }
  }

  finderAttached = self->_finderAttached;
  if (!finderAttached && (self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_ & 0x1000000) == 0)
  {
    self->_measurementsReceived = 0;
    self->_sessionState = 0;
    self->_sharedProtocol = -1;
    val = self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.var0.__val_;
    if (val != 0.0)
    {
      (*(*&val + 16))(COERCE_DOUBLE(*&val), self, 0);
    }

    ptr = self->_nbammsSession.__ptr_;
    if (ptr)
    {
      sub_10033B864(ptr);
      cntrl = self->_nbammsSession.__cntrl_;
      self->_nbammsSession.__ptr_ = 0;
      self->_nbammsSession.__cntrl_ = 0;
      if (cntrl)
      {
        sub_10000AD84(cntrl);
      }

      sessionToken = self->_sessionToken;
      self->_sessionToken = 0;

      if (self->_sessionStartRangingOptions.__engaged_)
      {
        self->_sessionStartRangingOptions.__engaged_ = 0;
      }

      [(NIServerNBAMMSSession *)self _resetStatistics];
      [(NIServerNBAMMSSession *)self _resetCryptoStateIncludingFailures:1];
    }

    goto LABEL_56;
  }

  if (self->_measurementsReceived)
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#find-range,Reciprocal -> one-way, measurements already received, do nothing", buf, 2u);
    }

    goto LABEL_56;
  }

  self->_measurementsReceived = 0;
  v18 = self->_nbammsSession.__ptr_;
  if (v18)
  {
    sub_10033B864(v18);
    v19 = self->_nbammsSession.__cntrl_;
    self->_nbammsSession.__ptr_ = 0;
    self->_nbammsSession.__cntrl_ = 0;
    if (v19)
    {
      sub_10000AD84(v19);
    }

    v20 = self->_sessionToken;
    self->_sessionToken = 0;

    if (self->_sessionStartRangingOptions.__engaged_)
    {
      self->_sessionStartRangingOptions.__engaged_ = 0;
    }

    [(NIServerNBAMMSSession *)self _resetStatistics];
    [(NIServerNBAMMSSession *)self _resetCryptoStateIncludingFailures:1];
    v21 = self->_finderAttached;
    buf[0] = 0;
    buf[576] = 0;
    LOBYTE(v50) = 0;
    v57 = 0;
    if (v21)
    {
      goto LABEL_43;
    }
  }

  else
  {
    buf[0] = 0;
    buf[576] = 0;
    LOBYTE(v50) = 0;
    v57 = 0;
    if (finderAttached)
    {
LABEL_43:
      p_finderToken = &self->_finderToken;
      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v47[0]) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#find-range,Reciprocal -> one-way: reconfigure as finder", v47, 2u);
      }

      v24 = 896;
      v25 = 312;
      goto LABEL_63;
    }
  }

  if (HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) != 1)
  {
    v26 = 0;
    goto LABEL_73;
  }

  v33 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v47[0]) = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#find-range,Reciprocal -> one-way: reconfigure as findee", v47, 2u);
  }

  p_finderToken = &self->_findeeMutualAuthState.outboundChallenge;
  v24 = 1704;
  v25 = 1120;
LABEL_63:
  v34 = *p_finderToken;
  v26 = *p_finderToken;
  memcpy(buf, self + v25, 0x241uLL);
  v35 = *&self->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.rose_mac_address.var0.__val_.__elems_[v24 + 3];
  v54 = *(&self->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0 + v24 + 4);
  v55 = v35;
  v56 = *(&self->_sessionStartRangingOptions.var0.__val_.peer.__engaged_ + v24);
  v57 = *(&self->_sessionStartRangingOptions.var0.__val_.start_time_type + v24);
  v36 = *(&self->_identityString + v24);
  v50 = *(&self->super.isa + v24);
  v51 = v36;
  v37 = *(&self->_sessionToken + v24);
  v52 = *(&self->_nbammsSession.__cntrl_ + v24);
  v53 = v37;
  if (!v26 || buf[576] != 1 || (v57 & 1) == 0)
  {
LABEL_73:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B63D0();
    }

    goto LABEL_75;
  }

  [(NIServerNBAMMSSession *)self _buildNbammsSession:buf];
  if (!v48)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6300();
    }

    if (v49)
    {
      sub_10000AD84(v49);
    }

    goto LABEL_75;
  }

  if ((v57 & 1) == 0)
  {
    sub_1000195BC();
  }

  v38 = sub_10034024C(v48, &v50);
  if (v38)
  {
    v39 = qword_1009F9820;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100342F8C(v38, v47);
      sub_1004B62A0(v47);
    }
  }

  else
  {
    v41 = v48;
    v40 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42 = self->_nbammsSession.__cntrl_;
    self->_nbammsSession.__ptr_ = v41;
    self->_nbammsSession.__cntrl_ = v40;
    if (v42)
    {
      sub_10000AD84(v42);
    }

    objc_storeStrong(&self->_sessionToken, v34);
    self->_sessionState = 1;
    v43 = self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.var0.__val_;
    if (v43 != 0.0)
    {
      (*(*&v43 + 16))(COERCE_DOUBLE(*&v43), self, 1);
    }

    v44 = v55;
    *&self->_sessionStartRangingOptions.var0.__val_.scheduling_interval_usec = v54;
    *&self->_sessionStartRangingOptions.var0.__val_.dither_constant_msec.var0.__null_state_ = v44;
    *&self->_sessionStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = v56;
    v45 = v51;
    *&self->_sessionStartRangingOptions.var0.__null_state_ = v50;
    *(&self->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v45;
    v46 = v53;
    *&self->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = v52;
    self->_sessionStartRangingOptions.__engaged_ = v57;
    *&self->_sessionStartRangingOptions.var0.__val_.start_time_or_offset_usec = v46;
    [(NIServerNBAMMSSession *)self _resetStatistics];
    [(NIServerNBAMMSSession *)self _resetCryptoStateIncludingFailures:1];
    [(NIServerNBAMMSSession *)self _updateSessionPayload];
  }

  if (v49)
  {
    sub_10000AD84(v49);
  }

  if (!v38)
  {
LABEL_56:
    v26 = qword_1009F9820;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      _getState = [(NIServerNBAMMSSession *)self _getState];
      *buf = 138412290;
      *&buf[4] = _getState;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#find-range,NBAMMS session state (after unregister): %@", buf, 0xCu);
    }

LABEL_75:
  }
}

- (void)refreshRangingForToken:(id)token withNewStartOptions:(const void *)options
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (!self->_nbammsSession.__ptr_ || !self->_sessionStartRangingOptions.__engaged_)
  {
    goto LABEL_33;
  }

  if (*(options + 112) == 1)
  {
    if ([(NIDiscoveryToken *)self->_finderToken isEqual:tokenCopy])
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(options + 112) & 1) == 0)
        {
          sub_1000195BC();
        }

        v8 = sub_100285534(options);
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-range,refreshRanging: Updated finder start ranging options: %@", buf, 0xCu);
      }

      v9 = 896;
    }

    else
    {
      if (![(NSData *)self->_findeeMutualAuthState.outboundChallenge isEqual:tokenCopy])
      {
        goto LABEL_15;
      }

      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(options + 112) & 1) == 0)
        {
          sub_1000195BC();
        }

        v10 = sub_100285534(options);
        *buf = 138412290;
        v37 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-range,refreshRanging: Updated findee start ranging options: %@", buf, 0xCu);
      }

      v9 = 1704;
    }

    v11 = self + v9;
    v12 = *options;
    v13 = *(options + 1);
    v14 = *(options + 3);
    *(v11 + 2) = *(options + 2);
    *(v11 + 3) = v14;
    *v11 = v12;
    *(v11 + 1) = v13;
    v15 = *(options + 4);
    v16 = *(options + 5);
    v17 = *(options + 6);
    v11[112] = *(options + 112);
    *(v11 + 5) = v16;
    *(v11 + 6) = v17;
    *(v11 + 4) = v15;
  }

LABEL_15:
  if ([(NIDiscoveryToken *)self->_sessionToken isEqual:tokenCopy])
  {
    if (*(options + 112) == 1)
    {
      v18 = *options;
      v19 = *(options + 1);
      v20 = *(options + 2);
      *&self->_sessionStartRangingOptions.var0.__val_.start_time_or_offset_usec = *(options + 3);
      *&self->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = v20;
      *(&self->_sessionStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v19;
      *&self->_sessionStartRangingOptions.var0.__null_state_ = v18;
      v21 = *(options + 4);
      v22 = *(options + 5);
      v23 = *(options + 6);
      self->_sessionStartRangingOptions.__engaged_ = *(options + 112);
      *&self->_sessionStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = v23;
      *&self->_sessionStartRangingOptions.var0.__val_.dither_constant_msec.var0.__null_state_ = v22;
      *&self->_sessionStartRangingOptions.var0.__val_.scheduling_interval_usec = v21;
      v24 = qword_1009F9820;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(options + 112) & 1) == 0)
        {
          sub_1000195BC();
        }

        v25 = sub_100285534(options);
        *buf = 138412290;
        v37 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#find-range,refreshRanging: Updated session start ranging options: %@", buf, 0xCu);
      }
    }

    if (!self->_sessionStartRangingOptions.__engaged_)
    {
      sub_1000195BC();
    }

    v26 = sub_10034024C(self->_nbammsSession.__ptr_, &self->_sessionStartRangingOptions.var0.__null_state_);
    v27 = qword_1009F9820;
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        identityString = self->_identityString;
        descriptionInternal = [tokenCopy descriptionInternal];
        sub_100342F8C(v26, __p);
        if (v35 >= 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        *buf = 138412802;
        v37 = identityString;
        v38 = 2112;
        v39 = descriptionInternal;
        v40 = 2080;
        v41 = v31;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#find-range,refreshRanging for %@ with token %@: Failed to refresh ranging. Return code: %s", buf, 0x20u);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v32 = self->_identityString;
      descriptionInternal2 = [tokenCopy descriptionInternal];
      *buf = 138412546;
      v37 = v32;
      v38 = 2112;
      v39 = descriptionInternal2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#find-range,refreshRanging: Success for %@, token: %@!", buf, 0x16u);
    }
  }

LABEL_33:
}

- (vector<NMISessionRole,)attachedRoles
{
  dispatch_assert_queue_V2(self->_internalQueue);
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (self->_finderAttached && self->_finderToken)
  {
    v7 = 0;
    sub_1002856D8(&retstr->var0, &v7);
  }

  if (HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1)
  {
    if (self->_findeeMutualAuthState.outboundChallenge)
    {
      v6 = 1;
      sub_1002856D8(&retstr->var0, &v6);
    }
  }

  return result;
}

- (id)sessionTokenForFinder:(BOOL)finder
{
  finderCopy = finder;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = 1112;
  if (finderCopy)
  {
    v5 = 304;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (id)sessionClientForFinder:(BOOL)finder
{
  finderCopy = finder;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = 1048;
  if (finderCopy)
  {
    v5 = 240;
  }

  WeakRetained = objc_loadWeakRetained((&self->super.isa + v5));

  return WeakRetained;
}

- (optional<rose::RoseServiceRequest>)sessionServiceRequestForFinder:(SEL)finder
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_internalQueue);
  v7 = 1120;
  if (v4)
  {
    v7 = 312;
  }

  return memcpy(retstr, self + v7, 0x248uLL);
}

- (optional<rose::RoseStartRangingOptions>)sessionStartRangingOptionsForFinder:(SEL)finder
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_internalQueue);
  v8 = 1704;
  if (v4)
  {
    v8 = 896;
  }

  v9 = self + v8;
  v10 = *(v9 + 5);
  *&retstr->var0.__val_.scheduling_interval_usec = *(v9 + 4);
  *&retstr->var0.__val_.dither_constant_msec.var0.__null_state_ = v10;
  *&retstr->var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = *(v9 + 6);
  *&retstr->__engaged_ = *(v9 + 14);
  v11 = *(v9 + 1);
  *&retstr->var0.__null_state_ = *v9;
  *(&retstr->var0.__val_.peer.var0.__val_.uuid.var0 + 12) = v11;
  v12 = *(v9 + 3);
  *&retstr->var0.__val_.peer.var0.__val_.bt_adv_address.var0.__val_.__elems_[2] = *(v9 + 2);
  *&retstr->var0.__val_.start_time_or_offset_usec = v12;
  return result;
}

- (void)informMutualAuthFailuresToClients
{
  dispatch_assert_queue_V2(self->_internalQueue);
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_finderClient);
  v4 = WeakRetained;
  if ((self->_finderMutualAuthState.outboundAuthState - 5 < 2 || self->_finderMutualAuthState.inboundAuthState == 2) && WeakRetained)
  {
    clientQueue = [WeakRetained clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100285BB4;
    block[3] = &unk_10098B940;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    dispatch_async(clientQueue, block);

    objc_destroyWeak(&v13);
  }

  v6 = objc_loadWeakRetained(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle);

  if (self->_finderStartRangingOptions.__engaged_ - 5 < 2 || LOBYTE(self->_finderMutualAuthTimer) == 2)
  {
    if (v6)
    {
      clientQueue2 = [v6 clientQueue];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100285C24;
      v8[3] = &unk_10098B940;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      dispatch_async(clientQueue2, v8);

      objc_destroyWeak(&v10);
    }
  }

  objc_destroyWeak(&location);
}

- (id)identityString
{
  dispatch_assert_queue_V2(self->_internalQueue);
  identityString = self->_identityString;

  return identityString;
}

- (SessionClientsStatus)sessionClientsStatus
{
  dispatch_assert_queue_V2(self->_internalQueue);
  outboundAuthState = self->_finderMutualAuthState.outboundAuthState;
  if (outboundAuthState == 1)
  {
    goto LABEL_4;
  }

  if (outboundAuthState == 4)
  {
    inboundAuthState = self->_finderMutualAuthState.inboundAuthState;
    if (inboundAuthState == 1)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if ((outboundAuthState - 5) < 2)
    {
LABEL_8:
      v5 = &_mh_execute_header;
      goto LABEL_10;
    }

    inboundAuthState = self->_finderMutualAuthState.inboundAuthState;
  }

  if (inboundAuthState == 2)
  {
    goto LABEL_8;
  }

  v5 = 0x200000000;
LABEL_10:
  engaged = self->_finderStartRangingOptions.__engaged_;
  if (engaged != 1)
  {
    if (engaged == 4)
    {
      finderMutualAuthTimer_low = LOBYTE(self->_finderMutualAuthTimer);
      if (finderMutualAuthTimer_low == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((engaged - 5) < 2)
      {
LABEL_17:
        v8 = &_mh_execute_header;
        goto LABEL_19;
      }

      finderMutualAuthTimer_low = LOBYTE(self->_finderMutualAuthTimer);
    }

    if (finderMutualAuthTimer_low != 2)
    {
      v8 = 0x200000000;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_13:
  v8 = 0;
LABEL_19:
  v9 = v5 | self->_finderAttached;
  v10 = v8 | HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_);
  result.var2 = v10;
  result.var3 = HIDWORD(v10);
  result.var0 = v9;
  result.var1 = HIDWORD(v9);
  return result;
}

- (void)updateAlgorithmAidingData:(const void *)data token:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_internalQueue);
  if ([tokenCopy isEqual:self->_finderToken])
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6404(self);
    }
  }

  else if ([tokenCopy isEqual:self->_findeeMutualAuthState.outboundChallenge])
  {
    v7 = (&self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.rose_mac_address.var0 + 3);
    v8 = *data;
    v9 = *(data + 2);
    if (self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ == 1)
    {
      *&self->_findeeStartRangingOptions.var0.__val_.peer.__engaged_ = *(data + 1);
      *&self->_findeeStartRangingOptions.var0.__val_.start_time_type = v9;
      *v7 = v8;
      v10 = *(data + 3);
      v11 = *(data + 4);
      v12 = *(data + 6);
      *&self->_findeeStartRangingOptions.var0.__val_.secondary_duty_cycle.var0.__null_state_ = *(data + 5);
      *&self->_findeeAlgorithmAidingData.var0.__null_state_ = v12;
      *&self->_findeeStartRangingOptions.var0.__val_.conn_evt_trigger_desc.var0.__null_state_ = v10;
      *&self->_findeeStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec.var0.__null_state_ = v11;
      v13 = *(data + 7);
      v14 = *(data + 8);
      v15 = *(data + 9);
      *(&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementH2 + 2) = *(data + 154);
      *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp = v14;
      *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementH1 = v15;
      *&self->_findeeAlgorithmAidingData.var0.__val_.bounded_displacement.__engaged_ = v13;
    }

    else
    {
      *&self->_findeeStartRangingOptions.var0.__val_.peer.__engaged_ = *(data + 1);
      *&self->_findeeStartRangingOptions.var0.__val_.start_time_type = v9;
      *v7 = v8;
      v16 = *(data + 3);
      v17 = *(data + 4);
      v18 = *(data + 6);
      *&self->_findeeStartRangingOptions.var0.__val_.secondary_duty_cycle.var0.__null_state_ = *(data + 5);
      *&self->_findeeAlgorithmAidingData.var0.__null_state_ = v18;
      *&self->_findeeStartRangingOptions.var0.__val_.conn_evt_trigger_desc.var0.__null_state_ = v16;
      *&self->_findeeStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec.var0.__null_state_ = v17;
      v19 = *(data + 7);
      v20 = *(data + 8);
      v21 = *(data + 10);
      *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementH1 = *(data + 9);
      *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementV = v21;
      *&self->_findeeAlgorithmAidingData.var0.__val_.bounded_displacement.__engaged_ = v19;
      *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp = v20;
      self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = 1;
    }

    [(NIServerNBAMMSSession *)self _updateSessionPayload];
  }
}

- (void)updateSignallingData:(const void *)data token:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_internalQueue);
  if ([tokenCopy isEqual:self->_finderToken])
  {
    engaged = self->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_;
    v7 = *(data + 8);
    self->_finderStartRangingOptions.var0.__val_.conn_evt_trigger_desc = *data;
    self->_finderStartRangingOptions.var0.__val_.dither_constant_msec.var0.__null_state_ = v7;
    if (!engaged)
    {
      p_engaged = &self->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_;
LABEL_7:
      *p_engaged = 1;
    }
  }

  else
  {
    if (![tokenCopy isEqual:self->_findeeMutualAuthState.outboundChallenge])
    {
      goto LABEL_9;
    }

    v9 = BYTE1(self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1);
    v10 = *(data + 8);
    self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.applicabilityTimestamp = *data;
    LOBYTE(self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) = v10;
    if ((v9 & 1) == 0)
    {
      p_engaged = &self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1 + 1;
      goto LABEL_7;
    }
  }

  [(NIServerNBAMMSSession *)self _updateSessionPayload];
LABEL_9:
}

- (void)_updateSessionPayload
{
  if (!self->_nbammsSession.__ptr_)
  {
    return;
  }

  cryptoSessionState = self->_cryptoSessionState;
  if ((cryptoSessionState - 1) < 2)
  {
LABEL_6:
    [(NIServerNBAMMSSession *)self _updateCryptoSessionConfigPayload];
    goto LABEL_7;
  }

  if (cryptoSessionState != 3)
  {
    if (self->_cryptoSessionState)
    {
      goto LABEL_7;
    }

    [(NIServerNBAMMSSession *)self _initializeEncryptionSessionIfNecessary];
    goto LABEL_6;
  }

  if ([(NIServerNBAMMSSession *)self _shouldSendMutualAuthMessage])
  {
    if (self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ == 1)
    {
      [(NIServerNBAMMSSession *)self _armMutualAuthTimerForFinder:1];
    }

    if (self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_)
    {
      [(NIServerNBAMMSSession *)self _armMutualAuthTimerForFinder:0];
    }

    if ([(NIServerNBAMMSSession *)self _encryptAndUpdateMutualAuthPayload])
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (![(NIServerNBAMMSSession *)self _encryptAndUpdateAidingAndSignallingPayload])
  {
LABEL_20:
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sessionIdentifier = [(NIServerCryptoSession *)self->_selfEncryptionSession sessionIdentifier];
      sub_1004B6474(sessionIdentifier, self);
    }

    [(NIServerNBAMMSSession *)self _handleCryptoFailure];
  }

LABEL_7:
  if (self->_cryptoSessionState != cryptoSessionState)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1002861A4(cryptoSessionState);
      v6 = sub_1002861A4(self->_cryptoSessionState);
      identityString = self->_identityString;
      v10 = 138478339;
      v11 = v5;
      v12 = 2113;
      v13 = v6;
      v14 = 2112;
      v15 = identityString;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-range,#crypto Session state update while updating payload. %{private}@ -> %{private}@, id: %@", &v10, 0x20u);
    }
  }
}

- (BOOL)_encryptAndUpdateAidingAndSignallingPayload
{
  if (!self->_nbammsSession.__ptr_)
  {
    return 0;
  }

  if (self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ == 1)
  {
    v3 = *&self->_findeeAlgorithmAidingData.var0.__val_.bounded_displacement.__engaged_;
    v4 = *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementH1;
    v33 = *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp;
    v34 = v4;
    v35 = *&self->_findeeAlgorithmAidingData.var0.__val_.measured_displacement.var0.__val_.displacementV;
    v5 = *&self->_findeeStartRangingOptions.var0.__val_.conn_evt_trigger_desc.var0.__null_state_;
    v6 = *&self->_findeeStartRangingOptions.var0.__val_.secondary_duty_cycle.var0.__null_state_;
    v29 = *&self->_findeeStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec.var0.__null_state_;
    v30 = v6;
    v31 = *&self->_findeeAlgorithmAidingData.var0.__null_state_;
    v32 = v3;
    v7 = *&self->_findeeStartRangingOptions.var0.__val_.peer.__engaged_;
    v25 = *&self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.rose_mac_address.var0.__val_.__elems_[3];
    v26 = v7;
    v27 = *&self->_findeeStartRangingOptions.var0.__val_.start_time_type;
    v28 = v5;
  }

  else
  {
    LOBYTE(v25) = 0;
    LOBYTE(v26) = 0;
    BYTE8(v26) = 0;
    BYTE8(v29) = 0;
    LOBYTE(v30) = 0;
    LOBYTE(v32) = 0;
    *(&v32 + 1) = 0;
    *&v33 = 0;
    BYTE8(v33) = 0;
    LOBYTE(v35) = 0;
    WORD4(v35) = 0;
  }

  v9 = sub_1000054A8();
  sub_100003AA8(v9[144]);
  v22 = 0;
  v23 = sub_100286568(&self->_finderStartRangingOptions.var0.__val_.conn_evt_trigger_desc, &self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.applicabilityTimestamp);
  v24 = v10;
  v20 = 0;
  v21 = 0;
  if (sub_10026DBDC(&v20, &v25, &v23))
  {
    sub_100004A08(&__p, "Send");
    sub_10026EDAC(&__p, &v20);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    v16 = 2;
    if ([(NIServerNBAMMSSession *)self _shouldEncodeSignallingDataInMessageID])
    {
      v16 = [(NIServerNBAMMSSession *)self _encodeSignallingDataInMessageID:v16];
    }

    sub_100025100(&__p, 1);
    sub_100296970(&__p, __dst, v20, v21, v21 - v20);
    v11 = [NSData dataWithBytes:__p length:__dst - __p];
    v12 = [(NIServerNBAMMSSession *)self _encrypt:v11];
    v13 = v12;
    if (v12 && [v12 length])
    {
      sub_100025100(v15, [v13 length]);
      [v13 getBytes:v15[0] length:{objc_msgSend(v13, "length")}];
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004B64EC();
      }

      sub_100340788(self->_nbammsSession.__ptr_, v15);
      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }

      v8 = 1;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B6520();
      }

      v8 = 0;
    }

    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B64B8();
    }

    v8 = 0;
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v8;
}

- (void)_receivedAidingAndSignallingMessage:(const void *)message machAbsTimestamp:(double)timestamp
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B6554();
  }

  ++*&self->_findeeAlgorithmAidingData.var0.__val_.location_data.__engaged_;
  [(NIServerNBAMMSSession *)self _logStatisticsIfNecessary];
  [(NIServerNBAMMSSession *)self _handleNonMutualAuthMessage];
  v7 = *(message + 1);
  v8 = *message + 1;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  sub_100296B98(&v65, v8, v7, v7 - v8);
  sub_100004A08(&__p, "Receive");
  sub_10026EDAC(&__p, &v65);
  if (SBYTE7(v55) < 0)
  {
    operator delete(__p);
  }

  LOBYTE(__p) = 0;
  LOBYTE(v55) = 0;
  BYTE8(v55) = 0;
  BYTE8(v58) = 0;
  LOBYTE(v59) = 0;
  LOBYTE(v61) = 0;
  *&v62 = 0;
  *(&v61 + 1) = 0;
  BYTE8(v62) = 0;
  LOBYTE(v64) = 0;
  WORD4(v64) = 0;
  v9 = sub_1000054A8();
  v10 = sub_100003AA8(v9[144]);
  v52 = 0;
  v53 = v10;
  if (sub_10026E5F4(&v65, &__p, &v52))
  {
    *(&v61 + 1) = timestamp;
    v11 = 1;
    LOBYTE(v62) = 1;
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_finderClient);
    v13 = WeakRetained;
    outboundAuthState = self->_finderMutualAuthState.outboundAuthState;
    if (outboundAuthState != 1)
    {
      if (outboundAuthState != 4)
      {
        goto LABEL_12;
      }

      v11 = self->_finderMutualAuthState.inboundAuthState == 1;
    }

    if (v11 && WeakRetained)
    {
      clientQueue = [WeakRetained clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002869F0;
      block[3] = &unk_1009A1990;
      objc_copyWeak(&v37, &location);
      v36 = v13;
      v46 = v62;
      v47 = v63;
      v48 = v64;
      v42 = v58;
      v43 = v59;
      v44 = v60;
      v45 = v61;
      v38 = __p;
      v39 = v55;
      v40 = v56;
      v41 = v57;
      v49 = v52;
      v50 = v53;
      dispatch_async(clientQueue, block);

      objc_destroyWeak(&v37);
    }

LABEL_12:
    v16 = objc_loadWeakRetained(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle);

    engaged = self->_finderStartRangingOptions.__engaged_;
    if (engaged != 1)
    {
      if (engaged != 4)
      {
LABEL_18:
        objc_destroyWeak(&location);

        goto LABEL_21;
      }

      engaged = LOBYTE(self->_finderMutualAuthTimer) == 1;
    }

    if (engaged && v16)
    {
      clientQueue2 = [v16 clientQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100286A68;
      v19[3] = &unk_1009A1990;
      objc_copyWeak(&v21, &location);
      v20 = v16;
      v30 = v62;
      v31 = v63;
      v32 = v64;
      v26 = v58;
      v27 = v59;
      v28 = v60;
      v29 = v61;
      v22 = __p;
      v23 = v55;
      v24 = v56;
      v25 = v57;
      v33 = v52;
      v34 = v53;
      dispatch_async(clientQueue2, v19);

      objc_destroyWeak(&v21);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B6588();
  }

LABEL_21:
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = objc_opt_new();
  identityString = self->_identityString;
  ptr = self->_nbammsSession.__ptr_;
  descriptionInternal = [(NIDiscoveryToken *)self->_sessionToken descriptionInternal];
  v7 = descriptionInternal;
  v8 = "YES";
  if (!ptr)
  {
    v8 = "NO";
  }

  v9 = [NSString stringWithFormat:@"Name: %@. Created: %s. Session token: %@", identityString, v8, descriptionInternal];
  [v3 addObject:v9];

  engaged = self->_sessionStartRangingOptions.__engaged_;
  if (engaged)
  {
    v11 = sub_100285534(&self->_sessionStartRangingOptions);
  }

  else
  {
    v11 = @"0";
  }

  v12 = [NSString stringWithFormat:@"    Session start options: %@", v11];
  [v3 addObject:v12];

  if (engaged)
  {
  }

  if (self->_finderAttached)
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  WeakRetained = objc_loadWeakRetained(&self->_finderClient);
  if (WeakRetained)
  {
    v15 = "YES";
  }

  else
  {
    v15 = "NO";
  }

  descriptionInternal2 = [(NIDiscoveryToken *)self->_finderToken descriptionInternal];
  v17 = self->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_;
  if (v17)
  {
    sub_100287280(&self->_finderStartRangingOptions.var0.__val_.conn_evt_trigger_desc, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    p_p = "0";
  }

  v19 = [NSString stringWithFormat:@"    Finder attached: %s, client: %s, token: %@, signalling: %s", v13, v15, descriptionInternal2, p_p];
  [v3 addObject:v19];

  if (v17 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  scheduling_interval_usec_low = LOBYTE(self->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec);
  if (scheduling_interval_usec_low == 1)
  {
    v21 = sub_100285534(&self->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch);
  }

  else
  {
    v21 = @"0";
  }

  v22 = [NSString stringWithFormat:@"        Finder start options: %@", v21];
  [v3 addObject:v22];

  if (scheduling_interval_usec_low)
  {
  }

  if (HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_))
  {
    v23 = "YES";
  }

  else
  {
    v23 = "NO";
  }

  v24 = objc_loadWeakRetained(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle);
  if (v24)
  {
    v25 = "YES";
  }

  else
  {
    v25 = "NO";
  }

  descriptionInternal3 = [(NSData *)self->_findeeMutualAuthState.outboundChallenge descriptionInternal];
  v27 = BYTE1(self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1);
  if (v27 == 1)
  {
    sub_100287280(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.applicabilityTimestamp, &v59);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v59;
    }

    else
    {
      v28 = v59.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v28 = "0";
  }

  v29 = [NSString stringWithFormat:@"    Findee attached: %s, client: %s, token: %@, signalling: %s, aiding: %d", v23, v25, descriptionInternal3, v28, self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_];
  [v3 addObject:v29];

  if (v27 && SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v30 = self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12];
  if (v30 == 1)
  {
    v31 = sub_100285534(&self->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.vendor_id);
  }

  else
  {
    v31 = @"0";
  }

  v32 = [NSString stringWithFormat:@"        Findee start options: %@", v31];
  [v3 addObject:v32];

  if (v30)
  {
  }

  v33 = [NSString stringWithFormat:@"    Shared protocol: %d", self->_sharedProtocol];
  [v3 addObject:v33];

  sessionState = self->_sessionState;
  v35 = "IDLE";
  if (sessionState == 1)
  {
    v35 = "ACQ";
  }

  if (sessionState == 2)
  {
    v36 = "RNG";
  }

  else
  {
    v36 = v35;
  }

  v37 = [NSString stringWithFormat:@"    Session state: %s", v36];
  [v3 addObject:v37];

  v38 = "YES";
  if (!self->_measurementsReceived)
  {
    v38 = "NO";
  }

  v39 = [NSString stringWithFormat:@"    Measurements received: %s", v38];
  [v3 addObject:v39];

  v40 = sub_1002861A4(self->_cryptoSessionState);
  sessionIdentifier = [(NIServerCryptoSession *)self->_selfEncryptionSession sessionIdentifier];
  v42 = CUPrintNSObjectMasked();
  sessionIdentifier2 = [(NIServerCryptoSession *)self->_peerDecryptionSession sessionIdentifier];
  v44 = CUPrintNSObjectMasked();
  v45 = [NSString stringWithFormat:@"    Crypto state: %@. Self: %@. Peer: %@. Failures: %d", v40, v42, v44, self->_cryptoFailures];
  [v3 addObject:v45];

  v46 = sub_1002877EC(&self->_finderMutualAuthState.outboundAuthState);
  v47 = v46;
  if (BYTE2(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1)
  {
    if (*(&self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ + 1))
    {
      v48 = "S";
    }

    else
    {
      v48 = "F";
    }
  }

  else
  {
    v48 = "N/A";
  }

  v49 = "YES";
  if (!self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_)
  {
    v49 = "NO";
  }

  v50 = [NSString stringWithFormat:@"    Finder mutual auth: %@, last reported state: %s, should arm timer: %s", v46, v48, v49];
  [v3 addObject:v50];

  v51 = sub_1002877EC(&self->_finderStartRangingOptions.__engaged_);
  v52 = v51;
  if (*(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2))
  {
    if (*(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 1))
    {
      v53 = "S";
    }

    else
    {
      v53 = "F";
    }
  }

  else
  {
    v53 = "N/A";
  }

  v54 = "YES";
  if (!self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_)
  {
    v54 = "NO";
  }

  v55 = [NSString stringWithFormat:@"    Findee mutual auth: %@, last reported state: %s, should arm timer: %s", v51, v53, v54];
  [v3 addObject:v55];

  v56 = [NSString stringWithFormat:@"    Solution count: %d successful, %d unsuccessful", LODWORD(self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.easterlyOffsetM), HIDWORD(self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.easterlyOffsetM)];
  [v3 addObject:v56];

  v57 = [NSString stringWithFormat:@"    Message count: %d crypto, %d mutual auth, %d aiding/signalling", self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty, *(&self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty + 1), *&self->_findeeAlgorithmAidingData.var0.__val_.location_data.__engaged_];
  [v3 addObject:v57];

  return v3;
}

- (void)_serviceRequestStatusUpdate:(const ServiceRequestStatusUpdate *)update
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_finderAttached || (self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_ & 0x1000000) != 0)
  {
    v19 = *&update->var0;
    var2 = update->var2;
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_finderClient);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      clientQueue = [WeakRetained clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100287C34;
      block[3] = &unk_10099CA50;
      objc_copyWeak(v16, &location);
      v15 = v6;
      v16[1] = v19;
      v17 = var2;
      dispatch_async(clientQueue, block);

      objc_destroyWeak(v16);
    }

    v8 = objc_loadWeakRetained(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle);

    if (v8)
    {
      clientQueue2 = [v8 clientQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100287CA8;
      v10[3] = &unk_10099CA50;
      objc_copyWeak(v12, &location);
      v11 = v8;
      v12[1] = v19;
      v13 = var2;
      dispatch_async(clientQueue2, v10);

      objc_destroyWeak(v12);
    }

    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B65BC(self);
  }
}

- (void)_didReceiveNewSolution:(const void *)solution
{
  v3 = __chkstk_darwin(self, a2, solution);
  v5 = v4;
  v6 = v3;
  dispatch_assert_queue_V2(*(v3 + 8));
  sub_100224EF8();
  if (*(v6 + 232) & 1) != 0 || (*(v6 + 1043))
  {
    if ((*(v6 + 200) & 1) == 0)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v6 + 16);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-range,First NBAMMS measurement received for %@", &buf, 0xCu);
      }

      *(v6 + 200) = 1;
      *(v6 + 40) = 2;
      v9 = *(v6 + 2040);
      if (v9)
      {
        (*(v9 + 16))(v9, v6, 2);
      }
    }

    ++*(v6 + 2064);
    [v6 _logStatisticsIfNecessary];
    v10 = v5[1];
    buf = *v5;
    v68 = v10;
    v69 = v5[2];
    sub_100020458(v70, (v5 + 3));
    sub_1000206E0(v76, (v5 + 38));
    sub_1000207A0(v79, v5 + 95);
    memcpy(v83, v5 + 55, sizeof(v83));
    sub_10002096C(v84, v5 + 91);
    objc_initWeak(&location, v6);
    WeakRetained = objc_loadWeakRetained((v6 + 240));
    v12 = WeakRetained;
    v13 = *(v6 + 248);
    if (v13 != 1)
    {
      if (v13 != 4)
      {
        goto LABEL_27;
      }

      v13 = *(v6 + 272) == 1;
    }

    if (v13 && WeakRetained)
    {
      clientQueue = [WeakRetained clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_10028845C;
      block[3] = &unk_1009A19B8;
      objc_copyWeak(&v45, &location);
      v44 = v12;
      v46 = buf;
      v47 = v68;
      v48 = v69;
      sub_100020458(&v49, v70);
      sub_1000206E0(v55, v76);
      sub_1000207A0(&v58, v79);
      memcpy(v62, v83, sizeof(v62));
      sub_10002096C(&v63, v84);
      dispatch_async(clientQueue, block);

      if (v66 == 1 && __p)
      {
        v65 = __p;
        operator delete(__p);
      }

      if (v61 == 1 && v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v57 == 1)
      {
        sub_10002074C(v56, v56[1]);
      }

      if (v54 == 1)
      {
        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }
      }

      objc_destroyWeak(&v45);
    }

LABEL_27:
    v15 = objc_loadWeakRetained((v6 + 1048));

    v16 = *(v6 + 1056);
    if (v16 != 1)
    {
      if (v16 != 4)
      {
LABEL_46:
        objc_destroyWeak(&location);
        if (v87 == 1 && v85)
        {
          v86 = v85;
          operator delete(v85);
        }

        if (v82 == 1 && v80)
        {
          v81 = v80;
          operator delete(v80);
        }

        if (v78 == 1)
        {
          sub_10002074C(v77, v77[1]);
        }

        if (v75 == 1)
        {
          if (v73)
          {
            v74 = v73;
            operator delete(v73);
          }

          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }
        }

        return;
      }

      v16 = *(v6 + 1080) == 1;
    }

    if (v16 && v15)
    {
      clientQueue2 = [v15 clientQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3321888768;
      v19[2] = sub_100288650;
      v19[3] = &unk_1009A19B8;
      objc_copyWeak(&v21, &location);
      v20 = v15;
      v22 = buf;
      v23 = v68;
      v24 = v69;
      sub_100020458(&v25, v70);
      sub_1000206E0(v31, v76);
      sub_1000207A0(&v34, v79);
      memcpy(v38, v83, sizeof(v38));
      sub_10002096C(&v39, v84);
      dispatch_async(clientQueue2, v19);

      if (v42 == 1 && v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v37 == 1 && v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v33 == 1)
      {
        sub_10002074C(v32, v32[1]);
      }

      if (v30 == 1)
      {
        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }
      }

      objc_destroyWeak(&v21);
    }

    goto LABEL_46;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B662C(v6);
  }
}

- (void)_didReceiveUnsuccessfulSolution:(const void *)solution
{
  v3 = __chkstk_darwin(self, a2, solution);
  v5 = v4;
  v6 = v3;
  dispatch_assert_queue_V2(*(v3 + 8));
  sub_100224EF8();
  if (*(v6 + 232) & 1) != 0 || (*(v6 + 1043))
  {
    ++*(v6 + 2068);
    [v6 _logStatisticsIfNecessary];
    v7 = v5[1];
    v64 = *v5;
    v65 = v7;
    v66 = v5[2];
    sub_100020458(v67, (v5 + 3));
    sub_1000206E0(v73, (v5 + 38));
    sub_1000207A0(v76, v5 + 95);
    memcpy(v80, v5 + 55, sizeof(v80));
    sub_10002096C(v81, v5 + 91);
    objc_initWeak(&location, v6);
    WeakRetained = objc_loadWeakRetained((v6 + 240));
    v9 = WeakRetained;
    v10 = *(v6 + 248);
    if (v10 != 1)
    {
      if (v10 != 4)
      {
        goto LABEL_22;
      }

      v10 = *(v6 + 272) == 1;
    }

    if (v10 && WeakRetained)
    {
      clientQueue = [WeakRetained clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_100288D7C;
      block[3] = &unk_1009A19B8;
      objc_copyWeak(&v42, &location);
      v41 = v9;
      v43 = v64;
      v44 = v65;
      v45 = v66;
      sub_100020458(&v46, v67);
      sub_1000206E0(v52, v73);
      sub_1000207A0(&v55, v76);
      memcpy(v59, v80, sizeof(v59));
      sub_10002096C(&v60, v81);
      dispatch_async(clientQueue, block);

      if (v63 == 1 && __p)
      {
        v62 = __p;
        operator delete(__p);
      }

      if (v58 == 1 && v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54 == 1)
      {
        sub_10002074C(v53, v53[1]);
      }

      if (v51 == 1)
      {
        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }
      }

      objc_destroyWeak(&v42);
    }

LABEL_22:
    v12 = objc_loadWeakRetained((v6 + 1048));

    v13 = *(v6 + 1056);
    if (v13 != 1)
    {
      if (v13 != 4)
      {
LABEL_41:
        objc_destroyWeak(&location);
        if (v84 == 1 && v82)
        {
          v83 = v82;
          operator delete(v82);
        }

        if (v79 == 1 && v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        if (v75 == 1)
        {
          sub_10002074C(v74, v74[1]);
        }

        if (v72 == 1)
        {
          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }
        }

        return;
      }

      v13 = *(v6 + 1080) == 1;
    }

    if (v13 && v12)
    {
      clientQueue2 = [v12 clientQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3321888768;
      v16[2] = sub_100288DF0;
      v16[3] = &unk_1009A19B8;
      objc_copyWeak(&v18, &location);
      v17 = v12;
      v19 = v64;
      v20 = v65;
      v21 = v66;
      sub_100020458(&v22, v67);
      sub_1000206E0(v28, v73);
      sub_1000207A0(&v31, v76);
      memcpy(v35, v80, sizeof(v35));
      sub_10002096C(&v36, v81);
      dispatch_async(clientQueue2, v16);

      if (v39 == 1 && v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v34 == 1 && v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v30 == 1)
      {
        sub_10002074C(v29, v29[1]);
      }

      if (v27 == 1)
      {
        if (v25)
        {
          v26 = v25;
          operator delete(v25);
        }

        if (v23)
        {
          v24 = v23;
          operator delete(v23);
        }
      }

      objc_destroyWeak(&v18);
    }

    goto LABEL_41;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B669C(v6);
  }
}

- (void)_didReceivePeerData:(const void *)data
{
  dispatch_assert_queue_V2(self->_internalQueue);
  sub_100224EF8();
  if (self->_finderAttached || (self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_ & 0x1000000) != 0)
  {
    v5 = *(data + 1);
    v6 = *(data + 2);
    if (v6 == v5)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B67C0(data + 4, data + 2);
      }
    }

    else
    {
      if (*v5)
      {
        cryptoSessionState = self->_cryptoSessionState;
        if (self->_cryptoSessionState <= 1u)
        {
          if (self->_cryptoSessionState)
          {
            if (cryptoSessionState != 1)
            {
              goto LABEL_29;
            }
          }

          else
          {
            [(NIServerNBAMMSSession *)self _initializeEncryptionSessionIfNecessary];
          }

          [(NIServerNBAMMSSession *)self _updateCryptoSessionConfigPayload];
          goto LABEL_29;
        }

        if (cryptoSessionState == 2)
        {
          self->_cryptoSessionState = 3;
        }

        else if (cryptoSessionState != 3)
        {
LABEL_29:
          if (self->_cryptoSessionState != cryptoSessionState)
          {
            v13 = qword_1009F9820;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = sub_1002861A4(cryptoSessionState);
              v15 = sub_1002861A4(self->_cryptoSessionState);
              identityString = self->_identityString;
              LODWORD(__p[0]) = 138478339;
              *(__p + 4) = v14;
              WORD2(__p[1]) = 2113;
              *(&__p[1] + 6) = v15;
              HIWORD(__p[2]) = 2112;
              __p[3] = identityString;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-range,#crypto Session state update while receiving data. %{private}@ -> %{private}@. %@", __p, 0x20u);
            }
          }

          return;
        }

        v8 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
        v9 = [(NIServerNBAMMSSession *)self _decrypt:v8];
        v10 = v9;
        if (v9 && [v9 length])
        {
          v18 = 0;
          sub_100025100(__p, [v10 length]);
          [v10 getBytes:__p[0] length:{objc_msgSend(v10, "length")}];
          [(NIServerNBAMMSSession *)self _processPeerMessage:__p machAbsTimestamp:1 wasEncrypted:*(data + 4)];
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v11 = qword_1009F9820;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sessionIdentifier = [(NIServerCryptoSession *)self->_peerDecryptionSession sessionIdentifier];
            sub_1004B677C(sessionIdentifier, self);
          }

          [(NIServerNBAMMSSession *)self _handleCryptoFailure];
        }

        goto LABEL_29;
      }

      memset(__p, 0, 24);
      sub_100296B98(__p, (v5 + 1), v6, v6 - (v5 + 1));
      [(NIServerNBAMMSSession *)self _processPeerMessage:__p machAbsTimestamp:0 wasEncrypted:*(data + 4)];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B670C(self);
  }
}

- (void)_processPeerMessage:(void *)message machAbsTimestamp:(double)timestamp wasEncrypted:(BOOL)encrypted
{
  v6 = message + 8;
  if (*(message + 1) != *message)
  {
    encryptedCopy = encrypted;
    v10 = **message;
    memset(&v61[7], 0, 17);
    v11 = sub_1000054A8();
    v12 = sub_100003AA8(v11[144]);
    if ((v10 & 0x10) != 0)
    {
      v13 = 0x10100000000;
    }

    else
    {
      v13 = 0;
    }

    if ((v10 & 0x18) == 0)
    {
LABEL_19:
      **message &= 7u;
      if ((v10 & 7) == 2)
      {
        if (encryptedCopy)
        {
          [(NIServerNBAMMSSession *)self _receivedAidingAndSignallingMessage:message machAbsTimestamp:timestamp];
          goto LABEL_32;
        }
      }

      else if ((v10 & 7) == 1)
      {
        if (encryptedCopy)
        {
          [(NIServerNBAMMSSession *)self _receivedMutualAuthMessage:message];
          goto LABEL_32;
        }
      }

      else if ((v10 & 7) == 0 && !encryptedCopy)
      {
        [(NIServerNBAMMSSession *)self _receivedCryptoSessionConfigMessage:message];
LABEL_32:
        [(NIServerNBAMMSSession *)self _updateSessionPayload];
        return;
      }

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        v23 = **message;
        identityString = self->_identityString;
        LODWORD(location) = 67109634;
        HIDWORD(location) = v23;
        v57 = 1024;
        v58 = encryptedCopy;
        v59 = 2112;
        v60 = identityString;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#find-range,Unrecognized message ID %d. Was encrypted: %d. %@", &location, 0x18u);
      }

      goto LABEL_32;
    }

    v14 = v12;
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_finderClient);
    v16 = WeakRetained;
    v25 = (v10 << 28 >> 31) & 0x101;
    outboundAuthState = self->_finderMutualAuthState.outboundAuthState;
    if (outboundAuthState != 1)
    {
      if (outboundAuthState != 4)
      {
        goto LABEL_12;
      }

      outboundAuthState = self->_finderMutualAuthState.inboundAuthState == 1;
    }

    if (outboundAuthState && WeakRetained)
    {
      clientQueue = [WeakRetained clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100289660;
      block[3] = &unk_1009A1990;
      objc_copyWeak(&v43, &location);
      v42 = v16;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = *v61;
      v51 = *&v61[16];
      v52 = 0;
      v53 = 0;
      v54 = v13 | (v25 << 16);
      v55 = v14;
      dispatch_async(clientQueue, block);

      objc_destroyWeak(&v43);
    }

LABEL_12:
    v19 = objc_loadWeakRetained(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle);

    engaged = self->_finderStartRangingOptions.__engaged_;
    if (engaged != 1)
    {
      if (engaged != 4)
      {
LABEL_18:
        objc_destroyWeak(&location);

        goto LABEL_19;
      }

      engaged = LOBYTE(self->_finderMutualAuthTimer) == 1;
    }

    if (engaged && v19)
    {
      clientQueue2 = [v19 clientQueue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1002896D8;
      v26[3] = &unk_1009A1990;
      objc_copyWeak(&v28, &location);
      v27 = v19;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = *v61;
      v36 = *&v61[16];
      v37 = 0;
      v38 = 0;
      v39 = v13 | (v25 << 16);
      v40 = v14;
      dispatch_async(clientQueue2, v26);

      objc_destroyWeak(&v28);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B6830(v6, message);
  }
}

- (void)_didReceiveInvalidation:(int)invalidation
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_finderAttached || (self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_ & 0x1000000) != 0)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_finderClient);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      clientQueue = [WeakRetained clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100289940;
      block[3] = &unk_10098B138;
      objc_copyWeak(&v16, &location);
      v15 = v6;
      invalidationCopy = invalidation;
      dispatch_async(clientQueue, block);

      objc_destroyWeak(&v16);
    }

    v8 = objc_loadWeakRetained(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle);

    if (v8)
    {
      clientQueue2 = [v8 clientQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1002899B4;
      v10[3] = &unk_10098B138;
      objc_copyWeak(&v12, &location);
      v11 = v8;
      invalidationCopy2 = invalidation;
      dispatch_async(clientQueue2, v10);

      objc_destroyWeak(&v12);
    }

    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B68A0(self);
  }
}

- (BOOL)_validateTokensAndRangingParameters
{
  finderToken = self->_finderToken;
  if (finderToken && self->_findeeMutualAuthState.outboundChallenge)
  {
    getIRK = [(NIDiscoveryToken *)finderToken getIRK];
    getIRK2 = [(NSData *)self->_findeeMutualAuthState.outboundChallenge getIRK];
    if (-[NSObject length](getIRK, "length") == 16 && [getIRK2 length] == 16 && !-[NSObject isEqualToData:](getIRK, "isEqualToData:", getIRK2))
    {
      if (self->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ && self->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_)
      {
        if (LOBYTE(self->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) == 1 && (self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] & 1) != 0)
        {
          v7 = 1;
          goto LABEL_10;
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B69C0(self);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B6910(self);
      }
    }

    else
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        identityString = self->_identityString;
        descriptionInternal = [(NIDiscoveryToken *)self->_finderToken descriptionInternal];
        descriptionInternal2 = [(NSData *)self->_findeeMutualAuthState.outboundChallenge descriptionInternal];
        v15 = 138412802;
        v16 = identityString;
        v17 = 2112;
        v18 = descriptionInternal;
        v19 = 2112;
        v20 = descriptionInternal2;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#find-range,Finder or findee token of %@ has invalid length or they have equal IRKs, finder: %@, findee: %@", &v15, 0x20u);
      }
    }

    v7 = 0;
LABEL_10:

    goto LABEL_14;
  }

  getIRK = qword_1009F9820;
  if (os_log_type_enabled(getIRK, OS_LOG_TYPE_ERROR))
  {
    v9 = self->_identityString;
    descriptionInternal3 = [(NIDiscoveryToken *)self->_finderToken descriptionInternal];
    descriptionInternal4 = [(NSData *)self->_findeeMutualAuthState.outboundChallenge descriptionInternal];
    v15 = 138412802;
    v16 = v9;
    v17 = 2112;
    v18 = descriptionInternal3;
    v19 = 2112;
    v20 = descriptionInternal4;
    _os_log_error_impl(&_mh_execute_header, getIRK, OS_LOG_TYPE_ERROR, "#find-range,One or both tokens for %@ are nil - finder: %@, findee: %@", &v15, 0x20u);
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (BOOL)_shouldUseFinderToken:(id)token findeeToken:(id)findeeToken
{
  tokenCopy = token;
  findeeTokenCopy = findeeToken;
  v7 = findeeTokenCopy;
  if (!tokenCopy)
  {
    v12 = "finderToken != nil";
    v13 = 2037;
    goto LABEL_9;
  }

  if (!findeeTokenCopy)
  {
    v12 = "findeeToken != nil";
    v13 = 2038;
LABEL_9:
    __assert_rtn("[NIServerNBAMMSSession _shouldUseFinderToken:findeeToken:]", "NIServerFindingRanging.mm", v13, v12);
  }

  getIRK = [tokenCopy getIRK];
  getIRK2 = [v7 getIRK];
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  [getIRK getBytes:&v16 range:{0, 8}];
  [getIRK getBytes:&v17 range:{8, 8}];
  [getIRK2 getBytes:&v14 range:{0, 8}];
  [getIRK2 getBytes:&v15 range:{8, 8}];
  if (v17 == v15)
  {
    v10 = v16 > v14;
  }

  else
  {
    v10 = v17 > v15;
  }

  return v10;
}

- (shared_ptr<rose::objects::NBAMMSSession>)_buildNbammsSession:(const void *)session
{
  v4 = sub_100004A08(buf, [(NSString *)self->_identityString UTF8String]);
  v5 = std::string::insert(v4, 0, "Finding.");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v9 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 < 0)
  {
    operator delete(*buf);
  }

  selfCopy = self;
  operator new();
}

- (id)_getState
{
  identityString = self->_identityString;
  v4 = "NO";
  if (self->_nbammsSession.__ptr_)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  descriptionInternal = [(NIDiscoveryToken *)self->_sessionToken descriptionInternal];
  if (self->_finderAttached)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  descriptionInternal2 = [(NIDiscoveryToken *)self->_finderToken descriptionInternal];
  v9 = sub_1002877EC(&self->_finderMutualAuthState.outboundAuthState);
  if (HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_))
  {
    v4 = "YES";
  }

  descriptionInternal3 = [(NSData *)self->_findeeMutualAuthState.outboundChallenge descriptionInternal];
  v11 = sub_1002877EC(&self->_finderStartRangingOptions.__engaged_);
  v12 = [NSString stringWithFormat:@"%@: %s, token: %@. Finder: %s, token: %@, authState: %@. Findee: %s, token: %@, authState: %@", identityString, v5, descriptionInternal, v7, descriptionInternal2, v9, v4, descriptionInternal3, v11];

  return v12;
}

- (void)_logStatisticsIfNecessary
{
  v3 = sub_100005288();
  if (v3 - self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.northerlyOffsetM > 5.0)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      identityString = self->_identityString;
      easterlyOffsetM_low = LODWORD(self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.easterlyOffsetM);
      easterlyOffsetM_high = HIDWORD(self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.easterlyOffsetM);
      uncertainty = self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty;
      v9 = *(&self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty + 1);
      v10 = *&self->_findeeAlgorithmAidingData.var0.__val_.location_data.__engaged_;
      v11 = 138413570;
      v12 = identityString;
      v13 = 1024;
      v14 = easterlyOffsetM_low;
      v15 = 1024;
      v16 = easterlyOffsetM_high;
      v17 = 1024;
      v18 = uncertainty;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-range,%@, Solution count: %d successful, %d unsuccessful. Message count: %d crypto, %d mutual auth, %d aiding/signalling", &v11, 0x2Au);
    }

    self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.northerlyOffsetM = v3;
  }
}

- (void)_resetStatistics
{
  *&self->_findeeAlgorithmAidingData.var0.__val_.location_data.__engaged_ = 0;
  *&self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty = 0;
  *&self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__null_state_ = 0u;
}

- (unsigned)_encodeSignallingDataInMessageID:(unsigned __int8)d
{
  v5 = sub_1000054A8();
  sub_100003AA8(v5[144]);
  v6 = sub_100286568(&self->_finderStartRangingOptions.var0.__val_.conn_evt_trigger_desc, &self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.applicabilityTimestamp);
  v7 = (v6 >> 13) & 8;
  if ((v6 & 0x1000000) == 0)
  {
    LOBYTE(v7) = 0;
  }

  v8 = v7 | d;
  v9 = (v6 >> 28) & 0x10;
  if ((v6 & 0x10000000000) == 0)
  {
    LOBYTE(v9) = 0;
  }

  return v8 | v9;
}

- (void)_updateCryptoSessionConfigPayload
{
  if (self->_nbammsSession.__ptr_)
  {
    [(NIServerNBAMMSSession *)self _initializeEncryptionSessionIfNecessary];
    cryptoSessionState = self->_cryptoSessionState;
    sessionIdentifier = [(NIServerCryptoSession *)self->_selfEncryptionSession sessionIdentifier];
    v5 = [sessionIdentifier length];

    sessionIdentifier2 = [(NIServerCryptoSession *)self->_selfEncryptionSession sessionIdentifier];
    sub_100025100(&__p, [sessionIdentifier2 length] + 8);

    *__p = 0;
    v7 = __p;
    *(__p + 1) = 0;
    v7[2] = cryptoSessionState;
    v7[3] = v5;
    *(v7 + 1) = 0;
    v8 = __p;
    sessionIdentifier3 = [(NIServerCryptoSession *)self->_selfEncryptionSession sessionIdentifier];
    bytes = [sessionIdentifier3 bytes];
    sessionIdentifier4 = [(NIServerCryptoSession *)self->_selfEncryptionSession sessionIdentifier];
    memcpy(v8 + 8, bytes, [sessionIdentifier4 length]);

    sessionIdentifier5 = [(NIServerCryptoSession *)self->_selfEncryptionSession sessionIdentifier];
    v13 = [sessionIdentifier5 length] + 8;

    if (v13 != (v16 - __p))
    {
      __assert_rtn("[NIServerNBAMMSSession _updateCryptoSessionConfigPayload]", "NIServerFindingRanging.mm", 2197, "byteOffset == payload.size()");
    }

    if (*(__p + 1))
    {
      __assert_rtn("[NIServerNBAMMSSession _updateCryptoSessionConfigPayload]", "NIServerFindingRanging.mm", 2201, "payload[kMessageIDIndex] == static_cast<uint8_t>(FindingMessageID::CryptoSessionConfig)");
    }

    if ([(NIServerNBAMMSSession *)self _shouldEncodeSignallingDataInMessageID])
    {
      v14 = [(NIServerNBAMMSSession *)self _encodeSignallingDataInMessageID:*(__p + 1)];
      *(__p + 1) = v14;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B6AC4();
    }

    sub_100340788(self->_nbammsSession.__ptr_, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }
}

- (void)_receivedCryptoSessionConfigMessage:(const void *)message
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B6AF8();
  }

  ++self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty;
  [(NIServerNBAMMSSession *)self _logStatisticsIfNecessary];
  v5 = *message;
  v6 = *(message + 1) - *message;
  if (v6 <= 6)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v8 = *(message + 2) - *message;
      identityString = self->_identityString;
      v39 = 67109378;
      *v40 = v8;
      *&v40[4] = 2112;
      *&v40[6] = identityString;
      v10 = "#find-range,#crypto Invalid peer session config message size %d, %@";
      v11 = v7;
      v12 = 18;
LABEL_12:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, &v39, v12);
      return;
    }

    return;
  }

  v13 = *(v5 + 2);
  if (*(v5 + 2))
  {
    v14 = v6 >= v13 + 7;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v18 = *(v5 + 1);
    v19 = [NSData dataWithBytes:v5 + 7 length:*(v5 + 2)];
    sessionIdentifier = [(NIServerCryptoSession *)self->_peerDecryptionSession sessionIdentifier];
    v21 = [v19 isEqualToData:sessionIdentifier];

    if ((v21 & 1) == 0)
    {
      v22 = qword_1009F9820;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        sessionIdentifier2 = [(NIServerCryptoSession *)self->_peerDecryptionSession sessionIdentifier];
        v24 = CUPrintNSObjectMasked();
        v25 = CUPrintNSObjectMasked();
        descriptionInternal = [(NIDiscoveryToken *)self->_sessionToken descriptionInternal];
        v27 = self->_identityString;
        v39 = 138478595;
        *v40 = v24;
        *&v40[8] = 2113;
        *&v40[10] = v25;
        *&v40[18] = 2113;
        v41 = descriptionInternal;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#find-range,#crypto Init peer session. Old ID: %{private}@. New ID: %{private}@. Token: %{private}@, %@", &v39, 0x2Au);
      }

      v28 = [NIServerCryptoSession alloc];
      getIRK = [(NIDiscoveryToken *)self->_sessionToken getIRK];
      v30 = [(NIServerCryptoSession *)v28 initWithKeyDerivationKey:getIRK sessionIdentifier:v19 encrypt:0];
      peerDecryptionSession = self->_peerDecryptionSession;
      self->_peerDecryptionSession = v30;
    }

    cryptoSessionState = self->_cryptoSessionState;
    [(NIServerNBAMMSSession *)self _initializeEncryptionSessionIfNecessary];
    v33 = 2;
    self->_cryptoSessionState = 2;
    if (v18 == 2)
    {
      if (!cryptoSessionState)
      {
        goto LABEL_20;
      }
    }

    else if (v18 != 3)
    {
LABEL_20:
      if (v33 != cryptoSessionState)
      {
        v34 = qword_1009F9820;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = sub_1002861A4(v18);
          v36 = sub_1002861A4(cryptoSessionState);
          v37 = sub_1002861A4(self->_cryptoSessionState);
          v38 = self->_identityString;
          v39 = 138478595;
          *v40 = v35;
          *&v40[8] = 2113;
          *&v40[10] = v36;
          *&v40[18] = 2113;
          v41 = v37;
          v42 = 2112;
          v43 = v38;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#find-range,#crypto Session state update while receiving peer config [peer state %{private}@]. %{private}@ -> %{private}@. %@", &v39, 0x2Au);
        }
      }

      return;
    }

    v33 = 3;
    self->_cryptoSessionState = 3;
    goto LABEL_20;
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    v16 = *(message + 2) - *message;
    v17 = self->_identityString;
    v39 = 67109634;
    *v40 = v13;
    *&v40[4] = 1024;
    *&v40[6] = v16;
    *&v40[10] = 2112;
    *&v40[12] = v17;
    v10 = "#find-range,#crypto Invalid peer session ID size %d (config message size %d), %@";
    v11 = v15;
    v12 = 24;
    goto LABEL_12;
  }
}

- (void)_initializeEncryptionSessionIfNecessary
{
  if (!self->_cryptoSessionState)
  {
    v3 = NSRandomData();
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CUPrintNSObjectMasked();
      descriptionInternal = [(NIDiscoveryToken *)self->_sessionToken descriptionInternal];
      identityString = self->_identityString;
      v12 = 138478339;
      v13 = v5;
      v14 = 2113;
      v15 = descriptionInternal;
      v16 = 2112;
      v17 = identityString;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-range,#crypto Init self session. ID: %{private}@. Token: %{private}@. %@", &v12, 0x20u);
    }

    v8 = [NIServerCryptoSession alloc];
    getIRK = [(NIDiscoveryToken *)self->_sessionToken getIRK];
    v10 = [(NIServerCryptoSession *)v8 initWithKeyDerivationKey:getIRK sessionIdentifier:v3 encrypt:1];
    selfEncryptionSession = self->_selfEncryptionSession;
    self->_selfEncryptionSession = v10;

    self->_cryptoSessionState = 1;
  }
}

- (id)_encrypt:(id)_encrypt
{
  _encryptCopy = _encrypt;
  if ([(NIServerNBAMMSSession *)self _isCryptoDisabled])
  {
    v5 = _encryptCopy;
  }

  else
  {
    v5 = [(NIServerCryptoSession *)self->_selfEncryptionSession encrypt:_encryptCopy];
  }

  v6 = v5;

  return v6;
}

- (id)_decrypt:(id)_decrypt
{
  _decryptCopy = _decrypt;
  if ([(NIServerNBAMMSSession *)self _isCryptoDisabled])
  {
    v5 = _decryptCopy;
  }

  else
  {
    v5 = [(NIServerCryptoSession *)self->_peerDecryptionSession decrypt:_decryptCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_resetCryptoStateIncludingFailures:(BOOL)failures
{
  failuresCopy = failures;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    cryptoFailures = self->_cryptoFailures;
    identityString = self->_identityString;
    v11[0] = 67240706;
    v11[1] = cryptoFailures;
    v12 = 1026;
    v13 = failuresCopy;
    v14 = 2112;
    v15 = identityString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-range,#crypto Reset state. Failures: %{public}d. Reset: %{public}d, %@", v11, 0x18u);
  }

  selfEncryptionSession = self->_selfEncryptionSession;
  self->_selfEncryptionSession = 0;

  peerDecryptionSession = self->_peerDecryptionSession;
  self->_peerDecryptionSession = 0;

  if ([(NIServerNBAMMSSession *)self _isCryptoDisabled])
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  self->_cryptoSessionState = v10;
  if (failuresCopy)
  {
    self->_cryptoFailures = 0;
  }
}

- (void)_handleCryptoFailure
{
  [(NIServerNBAMMSSession *)self _resetCryptoStateIncludingFailures:0];
  sub_100283A48(&self->_finderMutualAuthState);
  sub_100283A48(&self->_finderStartRangingOptions.__engaged_);
  [(NIServerNBAMMSSession *)self _initializeEncryptionSessionIfNecessary];
  [(NIServerNBAMMSSession *)self _updateCryptoSessionConfigPayload];
  cryptoFailures = self->_cryptoFailures;
  self->_cryptoFailures = cryptoFailures + 1;
  if (cryptoFailures >= 10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_finderClient);
    if (WeakRetained)
    {
      objc_initWeak(&location, self);
      clientQueue = [WeakRetained clientQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10028B2F0;
      block[3] = &unk_10098B940;
      objc_copyWeak(&v13, &location);
      v12 = WeakRetained;
      dispatch_async(clientQueue, block);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    v6 = objc_loadWeakRetained(&self->_finderStartRangingOptions.var0.__val_.secondary_duty_cycle);

    if (v6)
    {
      objc_initWeak(&location, self);
      clientQueue2 = [v6 clientQueue];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10028B360;
      v8[3] = &unk_10098B940;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      dispatch_async(clientQueue2, v8);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (BOOL)_isCryptoDisabled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028B460;
  block[3] = &unk_10098BD28;
  block[4] = self;
  if (qword_1009F2B50 != -1)
  {
    dispatch_once(&qword_1009F2B50, block);
  }

  return byte_1009F2B58;
}

- (BOOL)_shouldSendMutualAuthMessage
{
  v3 = self->_finderAttached && (outboundAuthState = self->_finderMutualAuthState.outboundAuthState, outboundAuthState != 1) && (outboundAuthState != 4 || self->_finderMutualAuthState.inboundAuthState != 1);
  v5 = HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1 && (engaged = self->_finderStartRangingOptions.__engaged_, engaged != 1) && (engaged != 4 || LOBYTE(self->_finderMutualAuthTimer) != 1);
  return v3 || v5;
}

- (void)_handleNonMutualAuthMessage
{
  [(NIServerNBAMMSSession *)self _processNonMutualAuthMessageForFinder:1];
  [(NIServerNBAMMSSession *)self _processNonMutualAuthMessageForFinder:0];

  [(NIServerNBAMMSSession *)self _reportMutualAuthStates];
}

- (void)_processNonMutualAuthMessageForFinder:(BOOL)finder
{
  finderCopy = finder;
  if (finder)
  {
    if (!self->_finderAttached)
    {
      return;
    }

    v5 = 248;
  }

  else
  {
    if (HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) != 1)
    {
      return;
    }

    v5 = 1056;
  }

  v6 = self + v5;
  v7 = *(&self->super.isa + v5);
  if (v7 != 1)
  {
    if (v7 == 4)
    {
      v8 = v6[24];
      if (v8 == 1)
      {
        return;
      }
    }

    else if (v7 == 3)
    {
      v8 = v6[24];
      if (v8 == 1)
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = sub_100009210(finderCopy);
          identityString = self->_identityString;
          v17 = 136315394;
          v18 = v10;
          v19 = 2112;
          v20 = identityString;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Non-auth message. Self [%s] outbound response accepted. %@", &v17, 0x16u);
        }

        *v6 = 4;
        return;
      }
    }

    else
    {
      if ((v7 - 5) < 2)
      {
        return;
      }

      v8 = v6[24];
    }

    if (v8 != 2)
    {
      v12 = *(v6 + 12);
      *(v6 + 12) = v12 + 1;
      if (v12 >= 50)
      {
        *v6 = 6;
      }

      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_100009210(finderCopy);
        v15 = sub_1002877EC(v6);
        v16 = self->_identityString;
        v17 = 136315650;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#find-range,#auth Non-auth message. Self [%s] missed attempt %@. %@", &v17, 0x20u);
      }
    }
  }
}

- (void)_reportMutualAuthStates
{
  v3 = (&self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec + 1);
  if (self->_finderAttached && *&self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_)
  {
    outboundAuthState = self->_finderMutualAuthState.outboundAuthState;
    if (((outboundAuthState - 5) < 2 || self->_finderMutualAuthState.inboundAuthState == 2) && (BYTE2(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) != 1 || *v3 == 1))
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        identityString = self->_identityString;
        v24 = 138412290;
        v25 = identityString;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Mutual-auth for finder failed, report to session manager, %@", &v24, 0xCu);
      }

      finderToken = self->_finderToken;
      (*(*&self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ + 16))();
      v8 = 256;
LABEL_10:
      *v3 = v8;
      goto LABEL_15;
    }

    if (outboundAuthState == 4 && self->_finderMutualAuthState.inboundAuthState == 1 && (BYTE2(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) != 1 || (*v3 & 1) == 0))
    {
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_identityString;
        v24 = 138412290;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Mutual-auth for finder succeeded, cancel timer and report to session manager, %@", &v24, 0xCu);
      }

      secondary_scheduling_delay_usec = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
      if (secondary_scheduling_delay_usec)
      {
        dispatch_source_cancel(secondary_scheduling_delay_usec);
        v17 = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
        self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec = 0;

        self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = 0;
      }

      v18 = self->_finderToken;
      (*(*&self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ + 16))();
      v8 = 257;
      goto LABEL_10;
    }
  }

LABEL_15:
  if (HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1 && *&self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_)
  {
    engaged = self->_finderStartRangingOptions.__engaged_;
    if (((engaged - 5) < 2 || LOBYTE(self->_finderMutualAuthTimer) == 2) && (!*(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2) || *(v3 + 992) == 1))
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_identityString;
        v24 = 138412290;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Mutual-auth for findee failed, report to session manager, %@", &v24, 0xCu);
      }

      outboundChallenge = self->_findeeMutualAuthState.outboundChallenge;
      (*(*&self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ + 16))();
      v13 = 256;
LABEL_24:
      v3[496] = v13;
      return;
    }

    if (engaged == 4 && LOBYTE(self->_finderMutualAuthTimer) == 1 && (!*(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 2) || (v3[496] & 1) == 0))
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_identityString;
        v24 = 138412290;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Mutual-auth for findee succeeded, cancel timer and report to session manager, %@", &v24, 0xCu);
      }

      velocityChangeH2 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
      if (velocityChangeH2 != 0.0)
      {
        dispatch_source_cancel(*&velocityChangeH2);
        v22 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
        self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2 = 0.0;

        self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ = 0;
      }

      v23 = self->_findeeMutualAuthState.outboundChallenge;
      (*(*&self->_findeeAlgorithmAidingData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ + 16))();
      v13 = 257;
      goto LABEL_24;
    }
  }
}

- (BOOL)_encryptAndUpdateMutualAuthPayload
{
  if (!self->_nbammsSession.__ptr_)
  {
    return 0;
  }

  if (self->_finderAttached)
  {
    p_finderMutualAuthState = &self->_finderMutualAuthState;
    outboundAuthState = self->_finderMutualAuthState.outboundAuthState;
    v5 = outboundAuthState > 0xB;
    v6 = (1 << outboundAuthState) & 0xC02;
    v7 = v5 || v6 == 0;
    if (v7 && !self->_finderMutualAuthState.outboundChallenge)
    {
      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        identityString = self->_identityString;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = identityString;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Self [Finder] start mutual auth (generate outbound challenge), %@", &buf, 0xCu);
      }

      sub_10028C040(&self->_finderMutualAuthState);
      p_finderMutualAuthState->outboundAuthState = 2;
    }
  }

  if (HIBYTE(self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_) == 1)
  {
    engaged = self->_finderStartRangingOptions.__engaged_;
    v5 = engaged > 0xB;
    v9 = (1 << engaged) & 0xC02;
    v10 = v5 || v9 == 0;
    if (v10 && !*&self->_finderSignallingData.var0.__null_state_)
    {
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_identityString;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Self [Findee] start mutual auth (generate outbound challenge), %@", &buf, 0xCu);
      }

      sub_10028C040(&self->_finderStartRangingOptions.__engaged_);
      self->_finderStartRangingOptions.__engaged_ = 2;
    }
  }

  v28[0] = 1;
  memset(&v28[2], 0, 19);
  v11 = self->_finderMutualAuthState.outboundAuthState;
  if (v11 >= 0x10)
  {
    sub_1004B6C54();
  }

  inboundAuthState = self->_finderMutualAuthState.inboundAuthState;
  if (inboundAuthState >= 0x10)
  {
    sub_1004B6C28();
  }

  v28[1] = inboundAuthState | (16 * v11);
  if ([(NSData *)self->_finderMutualAuthState.outboundChallenge length]== 3)
  {
    [(NSData *)self->_finderMutualAuthState.outboundChallenge getBytes:&v28[2] length:3];
  }

  if ([(NSData *)self->_finderMutualAuthState.outboundResponse length]== 6)
  {
    [(NSData *)self->_finderMutualAuthState.outboundResponse getBytes:&v28[5] length:6];
  }

  v13 = self->_finderStartRangingOptions.__engaged_;
  if (v13 >= 0x10)
  {
    sub_1004B6BFC();
  }

  finderMutualAuthTimer_low = LOBYTE(self->_finderMutualAuthTimer);
  if (finderMutualAuthTimer_low >= 0x10)
  {
    sub_1004B6BD0();
  }

  v28[11] = finderMutualAuthTimer_low | (16 * v13);
  if ([*&self->_finderSignallingData.var0.__null_state_ length] == 3)
  {
    [*&self->_finderSignallingData.var0.__null_state_ getBytes:&v28[12] length:3];
  }

  if ([*&self->_finderSignallingData.var0.__val_.isPhone length] == 6)
  {
    [*&self->_finderSignallingData.var0.__val_.isPhone getBytes:&v28[15] length:6];
  }

  LOBYTE(__p[0]) = 0;
  sub_100025100(&buf, 21);
  v15 = buf;
  v16 = *v28;
  *(buf + 13) = *&v28[13];
  *v15 = v16;
  if ([(NIServerNBAMMSSession *)self _shouldEncodeSignallingDataInMessageID])
  {
    v17 = [(NIServerNBAMMSSession *)self _encodeSignallingDataInMessageID:*buf];
    *buf = v17;
  }

  v18 = [NSData dataWithBytes:buf length:*(&buf + 1) - buf];
  v19 = [(NIServerNBAMMSSession *)self _encrypt:v18];
  v20 = v19;
  if (v19 && [v19 length])
  {
    sub_100025100(__p, [v20 length]);
    [v20 getBytes:__p[0] length:{objc_msgSend(v20, "length")}];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B6B2C();
    }

    sub_100340788(self->_nbammsSession.__ptr_, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v21 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6B60(self);
    }

    v21 = 0;
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  return v21;
}

- (void)_receivedMutualAuthMessage:(const void *)message
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B6C80();
  }

  ++*(&self->_findeeAlgorithmAidingData.var0.__val_.location_data.var0.__val_.uncertainty + 1);
  [(NIServerNBAMMSSession *)self _logStatisticsIfNecessary];
  v5 = *message;
  if (*(message + 1) - *message > 0x14uLL)
  {
    v6 = *v5;
    *&v18[13] = *(v5 + 13);
    *v18 = v6;
    sub_10028C2A0(v18, 1, v12);
    sub_10028C2A0(v18, 0, v10);
    v7 = v17;
    if (v17 == 1 && (v11 & 1) != 0)
    {
      [(NIServerNBAMMSSession *)self _processPeerMutualAuthState:v12 peerIsFinder:1];
      if ((v11 & 1) == 0)
      {
        sub_1000195BC();
      }

      [(NIServerNBAMMSSession *)self _processPeerMutualAuthState:v10 peerIsFinder:0];
      [(NIServerNBAMMSSession *)self _reportMutualAuthStates];
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = sub_100009210(v7 ^ 1u);
        sub_1004B6CB4(v9, buf, v8);
      }
    }

    if (v11 == 1)
    {
    }

    if (v17 == 1)
    {
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B6CFC(message + 2, message);
  }
}

- (void)_processPeerMutualAuthState:(const MutualAuthState *)state peerIsFinder:(BOOL)finder
{
  finderCopy = finder;
  if (finder)
  {
    if ((self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__val_ & 0x1000000) != 0)
    {
      v7 = 1112;
      v8 = 1056;
      goto LABEL_6;
    }
  }

  else if (self->_finderAttached)
  {
    v7 = 304;
    v8 = 248;
LABEL_6:
    v9 = *(&self->super.isa + v7);
    v10 = self + v8;
    v29[0] = *v10;
    v30 = *(v10 + 1);
    v31 = *(v10 + 2);
    v32 = v10[24];
    v11 = (v10 + 32);
    v33 = *(v10 + 4);
    v34 = *(v10 + 5);
    v35 = *(v10 + 12);
    *(v10 + 12) = 0;
    outboundAuthState = state->outboundAuthState;
    if (outboundAuthState != 1)
    {
      if ((*v10 & 0xFE) != 0xA)
      {
        if ((outboundAuthState & 0xFE) != 0xA)
        {
          if (state->outboundResponse && ![(NSData *)state->outboundChallenge isEqualToData:*v11])
          {
            sub_10028C97C(v10, 0xAu);
            goto LABEL_11;
          }

          if (*(v10 + 1))
          {
            if (state->outboundChallenge && ([*v11 isEqualToData:?] & 1) == 0)
            {
              objc_storeStrong(v10 + 4, state->outboundChallenge);
              sub_10028CA28(v10, v9);
              *v10 = 3;
            }

            if (state->outboundResponse && ([*(v10 + 5) isEqualToData:?] & 1) == 0)
            {
              objc_storeStrong(v10 + 5, state->outboundResponse);
              if (sub_10028CB30(v10, v9))
              {
                v22 = 1;
              }

              else
              {
                v22 = 2;
              }

              v10[24] = v22;
            }

            inboundAuthState = state->inboundAuthState;
            if (inboundAuthState == 1)
            {
              v24 = 4;
            }

            else
            {
              if (inboundAuthState != 2)
              {
                goto LABEL_11;
              }

              v24 = 5;
            }
          }

          else
          {
            sub_10028C040(v10);
            v24 = 2;
          }

          *v10 = v24;
          goto LABEL_11;
        }

        sub_10028C97C(v10, outboundAuthState);
      }

      sub_10028C900(v10);
    }

LABEL_11:
    if (!sub_10028CC5C(v10, v29))
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100009210(finderCopy);
        v15 = sub_1002877EC(&state->outboundAuthState);
        v25 = 136315394;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Received peer [%s] mutual auth:     %@", &v25, 0x16u);
      }

      v16 = qword_1009F9820;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sub_100009210(!finderCopy);
        v18 = sub_1002877EC(v29);
        v25 = 136315394;
        v26 = v17;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#find-range,#auth     Self [%s] mutual auth (BEFORE): %@", &v25, 0x16u);
      }

      v19 = qword_1009F9820;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = sub_100009210(!finderCopy);
        v21 = sub_1002877EC(v10);
        v25 = 136315394;
        v26 = v20;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#find-range,#auth     Self [%s] mutual auth (AFTER):  %@", &v25, 0x16u);
      }
    }

    goto LABEL_23;
  }

  if (!state->outboundAuthState)
  {
    return;
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100009210(finderCopy);
    sub_1002877EC(&state->outboundAuthState);
    objc_claimAutoreleasedReturnValue();
    sub_1004B6D6C();
  }

LABEL_23:
}

- (void)_armMutualAuthTimerForFinder:(BOOL)finder
{
  if (finder)
  {
    secondary_scheduling_delay_usec = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
    if (secondary_scheduling_delay_usec)
    {
      dispatch_source_cancel(secondary_scheduling_delay_usec);
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_internalQueue);
    v7 = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
    self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec = v6;

    v8 = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
    v9 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(&location, self);
    v10 = self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec;
    v11 = handler;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10028D05C;
    handler[3] = &unk_1009A19F0;
    objc_copyWeak(&v26, &location);
    finderCopy = finder;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(*&self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_delay_usec);
    self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ = 0;
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      identityString = self->_identityString;
      *buf = 138412290;
      v30 = identityString;
      v14 = "#find-range,Armed finder mutual-auth timer, session %@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
    }
  }

  else
  {
    velocityChangeH2 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
    if (velocityChangeH2 != 0.0)
    {
      dispatch_source_cancel(*&velocityChangeH2);
    }

    v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_internalQueue);
    v17 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
    *&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2 = v16;

    v18 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
    v19 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(*&v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(&location, self);
    v20 = self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2;
    v11 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10028D180;
    v22[3] = &unk_1009A19F0;
    objc_copyWeak(&v23, &location);
    finderCopy2 = finder;
    dispatch_source_set_event_handler(*&v20, v22);
    dispatch_resume(*&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH2);
    self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ = 0;
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_identityString;
      *buf = 138412290;
      v30 = v21;
      v14 = "#find-range,Armed findee mutual-auth timer, session %@";
      goto LABEL_10;
    }
  }

  objc_destroyWeak(v11 + 4);
  objc_destroyWeak(&location);
}

- (id).cxx_construct
{
  self->_nbammsSession = 0u;
  self->_sessionStartRangingOptions.var0.__null_state_ = 0;
  self->_sessionStartRangingOptions.__engaged_ = 0;
  self->_pbLogger = 0u;
  *&self->_finderMutualAuthState.outboundChallenge = 0u;
  *&self->_finderMutualAuthState.inboundChallenge = 0u;
  sub_100283A48(&self->_finderMutualAuthState);
  self->_finderRoseServiceRequest.var0.__null_state_ = 0;
  self->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
  self->_finderRoseServiceRequest.var0.__val_.range_enable_params.nbamms.mms_bch.var0.__null_state_ = 0;
  LOBYTE(self->_finderStartRangingOptions.var0.__val_.scheduling_interval_usec) = 0;
  self->_finderStartRangingOptions.var0.__val_.conn_evt_trigger_desc.var0.__null_state_ = 0;
  self->_finderStartRangingOptions.var0.__val_.dither_constant_msec.__engaged_ = 0;
  *(&self->_finderStartRangingOptions.var0.__val_.secondary_scheduling_interval_usec.var0.__null_state_ + 1) = 0;
  *&self->_finderSignallingData.var0.__null_state_ = 0u;
  *&self->_finderShouldArmMutualAuthTimer = 0u;
  sub_100283A48(&self->_finderStartRangingOptions.__engaged_);
  LOBYTE(self->_findeeMutualAuthState.outboundResponse) = 0;
  self->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.interval_ms.__engaged_ = 0;
  self->_findeeRoseServiceRequest.var0.__val_.range_enable_params.localization.vendor_id.var0.__null_state_ = 0;
  self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.uuid.var0.__val_.__elems_[12] = 0;
  self->_findeeStartRangingOptions.var0.__val_.peer.var0.__val_.rose_mac_address.var0.__val_.__elems_[3] = 0;
  self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__null_state_ = 0;
  LOBYTE(self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.applicabilityTimestamp) = 0;
  BYTE1(self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1) = 0;
  *(&self->_findeeAlgorithmAidingData.var0.__val_.measured_velocity_change.__engaged_ + 1) = 0;
  return self;
}

@end