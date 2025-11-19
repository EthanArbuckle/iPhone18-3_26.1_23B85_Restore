@interface PACRecord
- (PACRecord)init;
- (void)printPACRecord;
@end

@implementation PACRecord

- (PACRecord)init
{
  v3.receiver = self;
  v3.super_class = PACRecord;
  result = [(PACRecord *)&v3 init];
  if (result)
  {
    result->_metaDataLength = 0;
    result->_supportedAudioChanCount = 1;
  }

  return result;
}

- (void)printPACRecord
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PAC Record description:", &v26, 2u);
  }

  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    codecID = self->_codecID;
    v26 = 134217984;
    v27 = codecID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "codecID : 0x%llX", &v26, 0xCu);
  }

  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    codecSpecificCapabilitiesLength = self->_codecSpecificCapabilitiesLength;
    v26 = 67109120;
    LODWORD(v27) = codecSpecificCapabilitiesLength;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "codecSpecificCapabilitiesLength : %u", &v26, 8u);
  }

  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    supportedSamplingFreq = self->_supportedSamplingFreq;
    v26 = 67109120;
    LODWORD(v27) = supportedSamplingFreq;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "supportedSamplingFreq : 0x%X", &v26, 8u);
  }

  v10 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    supportedFrameDurations = self->_supportedFrameDurations;
    v26 = 67109120;
    LODWORD(v27) = supportedFrameDurations;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "supportedFrameDurations : 0x%X", &v26, 8u);
  }

  v12 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    supportedAudioChanCount = self->_supportedAudioChanCount;
    v26 = 67109120;
    LODWORD(v27) = supportedAudioChanCount;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "supportedAudioChanCount : 0x%X", &v26, 8u);
  }

  v14 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    supportedMinOctetsPerCodecFrame = self->_supportedMinOctetsPerCodecFrame;
    v26 = 67109120;
    LODWORD(v27) = supportedMinOctetsPerCodecFrame;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "supportedMinOctetsPerCodecFrame : 0x%X", &v26, 8u);
  }

  v16 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    supportedMaxOctetsPerCodecFrame = self->_supportedMaxOctetsPerCodecFrame;
    v26 = 67109120;
    LODWORD(v27) = supportedMaxOctetsPerCodecFrame;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "supportedMaxOctetsPerCodecFrame : 0x%X", &v26, 8u);
  }

  v18 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    supportedMaxCodecFrameBlocksPerSdu = self->_supportedMaxCodecFrameBlocksPerSdu;
    v26 = 67109120;
    LODWORD(v27) = supportedMaxCodecFrameBlocksPerSdu;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "supportedMaxCodecFrameBlocksPerSdu : %u", &v26, 8u);
  }

  v20 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    metaDataLength = self->_metaDataLength;
    v26 = 67109120;
    LODWORD(v27) = metaDataLength;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "metaDataLength : %u", &v26, 8u);
  }

  v22 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    preferredAudioContext = self->_preferredAudioContext;
    v26 = 67109120;
    LODWORD(v27) = preferredAudioContext;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Preferred Audio Context : 0x%x", &v26, 8u);
  }

  v24 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    streamingAudioContext = self->_streamingAudioContext;
    v26 = 67109120;
    LODWORD(v27) = streamingAudioContext;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Streaming Audio Context : 0x%x", &v26, 8u);
  }
}

@end