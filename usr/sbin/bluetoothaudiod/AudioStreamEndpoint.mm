@interface AudioStreamEndpoint
+ (id)aseTypeToString:(unsigned __int8)a3;
+ (id)opcodeToString:(unsigned __int8)a3;
+ (id)phySettingToString:(unsigned __int8)a3;
+ (id)reasonCodeToString:(unsigned __int8)a3;
+ (id)responseCodeToString:(unsigned __int8)a3;
+ (id)stateToString:(unsigned __int8)a3;
- (AudioStreamEndpoint)initWithAudioEnpointType:(unsigned __int8)a3 aseID:(unsigned __int8)a4;
- (BOOL)matchPrefferedQoSParamsForASE:(id)a3;
- (void)description;
@end

@implementation AudioStreamEndpoint

- (AudioStreamEndpoint)initWithAudioEnpointType:(unsigned __int8)a3 aseID:(unsigned __int8)a4
{
  v11.receiver = self;
  v11.super_class = AudioStreamEndpoint;
  v6 = [(AudioStreamEndpoint *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6[8] = a3;
    v6[9] = a4;
    *(v6 + 10) = -65536;
    v8 = objc_alloc_init(Metadata);
    metadata = v7->_metadata;
    v7->_metadata = v8;

    v7->_inUse = 0;
  }

  return v7;
}

- (BOOL)matchPrefferedQoSParamsForASE:(id)a3
{
  v4 = a3;
  if ([(AudioStreamEndpoint *)self preferredPhy])
  {
    if ([v4 preferredPhy])
    {
      v5 = [(AudioStreamEndpoint *)self preferredPhy];
      if (([v4 preferredPhy] & v5) == 0)
      {
        v13 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v13;
          v15 = 67109376;
          v16 = [(AudioStreamEndpoint *)self ASE_ID];
          v17 = 1024;
          v18 = [v4 ASE_ID];
          v11 = "Preferred PHYs don't match for ASE IDs %d and %d";
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }
  }

  v6 = [(AudioStreamEndpoint *)self framing];
  if (v6 != [v4 framing])
  {
    v9 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v15 = 67109376;
      v16 = [(AudioStreamEndpoint *)self ASE_ID];
      v17 = 1024;
      v18 = [v4 ASE_ID];
      v11 = "Framing doesn't match for ASE IDs %d and %d";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v15, 0xEu);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v7 = [(AudioStreamEndpoint *)self clientRetransmissionNumber];
  if (v7 != [v4 clientRetransmissionNumber])
  {
    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v12;
      v15 = 67109376;
      v16 = [(AudioStreamEndpoint *)self ASE_ID];
      v17 = 1024;
      v18 = [v4 ASE_ID];
      v11 = "Retransmission Numbers don't match for ASE IDs %d and %d";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)description
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    type = self->_type;
    log = v3;
    v18 = [AudioStreamEndpoint aseTypeToString:type];
    ASE_ID = self->_ASE_ID;
    v5 = [AudioStreamEndpoint stateToString:self->_state];
    v6 = [AudioStreamEndpoint stateToString:self->_previousState];
    framing = self->_framing;
    LODWORD(type) = self->_preferredPhy;
    clientPHY = self->_clientPHY;
    preferredRetransmissionNumber = self->_preferredRetransmissionNumber;
    clientRetransmissionNumber = self->_clientRetransmissionNumber;
    maxTransportLatency = self->_maxTransportLatency;
    maxSupportedPresentationDelay = self->_maxSupportedPresentationDelay;
    minPreferredPresentationDelay = self->_minPreferredPresentationDelay;
    clientPresentationDelay = self->_clientPresentationDelay;
    codecID = self->_codecID;
    minSupportedPresentationDelay = self->_minSupportedPresentationDelay;
    samplingFrequency = self->_samplingFrequency;
    audioChanAllocMask = self->_audioChanAllocMask;
    frameDuration = self->_frameDuration;
    octetsPerCodecFrame = self->_octetsPerCodecFrame;
    maxPreferredPresentationDelay = self->_maxPreferredPresentationDelay;
    cigID = self->_cigID;
    clientSduInterval = self->_clientSduInterval;
    cisID = self->_cisID;
    clientMaxSdu = self->_clientMaxSdu;
    v10 = [AudioStreamEndpoint opcodeToString:self->_currentOpcode];
    v11 = [AudioStreamEndpoint responseCodeToString:self->_responseCode];
    v12 = [AudioStreamEndpoint reasonCodeToString:self->_responseReason];
    *buf = 138418946;
    v33 = v18;
    v34 = 1024;
    v35 = ASE_ID;
    v36 = 2112;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    v40 = 1024;
    v41 = framing;
    v42 = 1024;
    v43 = type;
    v44 = 1024;
    v45 = clientPHY;
    v46 = 1024;
    v47 = preferredRetransmissionNumber;
    v48 = 1024;
    v49 = clientRetransmissionNumber;
    v50 = 1024;
    v51 = maxTransportLatency;
    v52 = 1024;
    v53 = minSupportedPresentationDelay;
    v54 = 1024;
    v55 = maxSupportedPresentationDelay;
    v56 = 1024;
    v57 = minPreferredPresentationDelay;
    v58 = 1024;
    v59 = maxPreferredPresentationDelay;
    v60 = 1024;
    v61 = clientPresentationDelay;
    v62 = 2048;
    v63 = codecID;
    v64 = 1024;
    v65 = samplingFrequency;
    v66 = 1024;
    v67 = frameDuration;
    v68 = 1024;
    v69 = audioChanAllocMask;
    v70 = 1024;
    v71 = octetsPerCodecFrame;
    v72 = 1024;
    v73 = cigID;
    v74 = 1024;
    v75 = cisID;
    v76 = 1024;
    v77 = clientSduInterval;
    v78 = 1024;
    v79 = clientMaxSdu;
    v80 = 2112;
    v81 = v10;
    v82 = 2112;
    v83 = v11;
    v84 = 2112;
    v85 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Audio Stream Endpoint description:\n\t\t   Type: %@\n\t\t   ASE ID: %d\n\t\t   State: %@\n\t\t   Previous State: %@\n\t\t   Framing: %d\n\t\t   Preferred PHY: %d\n\t\t   PHY: %d \n\t\t   Preferred Retransmission number: %d\n\t\t   Retransmission number: %d\n\t\t   Max Transport Latency: %d\n\t\t   Min Presentation Delay: %d\n\t\t   Max Presentation Delay: %d\n\t\t   Min Preferred Presentation Delay: %d\n\t\t   Max Preferred Presentation Delay: %d\n\t\t   Presentation Delay: %d\n\t\t   Codec ID: %llu\n\t\t   Sampling Frequency: %d\n\t\t   Frame Duration: %d\n\t\t   Audio Channel Location: 0x%02x\n\t\t   Octets PerCodec Frame: %d\n\t\t   CIG ID: %d\n\t\t   CIS ID: %d\n\t\t   SDU Interval: %d\n\t\t   Max SDU: %d\n\t\t   Current Opcode: %@\n\t\t   Current Response code: %@\n\t\t   Current Reason code: %@", buf, 0xC0u);
  }
}

+ (id)stateToString:(unsigned __int8)a3
{
  if (a3 > 6u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100094A90 + a3);
  }
}

+ (id)opcodeToString:(unsigned __int8)a3
{
  if ((a3 - 1) > 8)
  {
    return @"Unknown Opcode";
  }

  else
  {
    return *(&off_100094AC8 + (a3 - 1));
  }
}

+ (id)responseCodeToString:(unsigned __int8)a3
{
  if (a3 > 0xEu)
  {
    return @"Unknown Response Code";
  }

  else
  {
    return *(&off_100094B10 + a3);
  }
}

+ (id)reasonCodeToString:(unsigned __int8)a3
{
  if (a3 > 0xAu)
  {
    return @"Unknown Reason Code";
  }

  else
  {
    return *(&off_100094B88 + a3);
  }
}

+ (id)aseTypeToString:(unsigned __int8)a3
{
  v3 = @"Unknown Endpoint";
  if (a3 == 1)
  {
    v3 = @"Source Endpoint";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Sink Endpoint";
  }
}

+ (id)phySettingToString:(unsigned __int8)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown Phy Option";
  }

  else
  {
    return *(&off_100094BE0 + (a3 - 1));
  }
}

@end