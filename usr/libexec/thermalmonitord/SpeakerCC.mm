@interface SpeakerCC
- (SpeakerCC)initWithParams:(__CFDictionary *)params;
- (int)numberOfFields;
- (void)defaultAction;
- (void)refreshTGraphTelemetry;
@end

@implementation SpeakerCC

- (SpeakerCC)initWithParams:(__CFDictionary *)params
{
  v11.receiver = self;
  v11.super_class = SpeakerCC;
  v4 = [(ComponentControl *)&v11 initWithCC:12];
  v5 = v4;
  if (v4)
  {
    *&v4->super.allowLIOverride = 100;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d Speaker ", 12);
    v5->super.previousValue = v5->super.currentLoadingIndex;
    sub_100002A20(params, @"speakerGainFloor", kCFNumberFloatType, &v5->_currentSpeakerGain);
    currentSpeakerGain = v5->_currentSpeakerGain;
    if (currentSpeakerGain < 0.0 || currentSpeakerGain > 1.0)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005A908(v8, currentSpeakerGain);
      }

      v5->_currentSpeakerGain = 1.0;
    }

    else if (byte_1000AB2F8 == 1)
    {
      v9 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = currentSpeakerGain;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> Got SpeakerCC gain floor value: %f", buf, 0xCu);
      }
    }

    [(ComponentControl *)v5 updatePowerParameters:params];
    if (sub_100031D64(params, @"expectsCPMSSupport", 0))
    {
      [(ComponentControl *)v5 setCPMSMitigationState:1];
    }
  }

  return v5;
}

- (void)defaultAction
{
  currentLoadingIndex = self->super.currentLoadingIndex;
  if (currentLoadingIndex != self->super.maxLoadingIndex)
  {
    if (currentLoadingIndex < 0x64)
    {
      v5 = self->_currentSpeakerGain + currentLoadingIndex / 100.0 * (1.0 - self->_currentSpeakerGain);
      *(&self->super.currentPower + 1) = v5;
      v4 = v5;
    }

    else
    {
      *(&self->super.currentPower + 1) = 1065353216;
      v4 = 1.0;
    }

    if (byte_1000AB2F8 == 1)
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> SpeakerCC: setting gain %.4f", &v10, 0xCu);
      }
    }

    v7 = +[AVAudioSession sharedInstance];
    LODWORD(v8) = *(&self->super.currentPower + 1);
    if (([(AVAudioSession *)v7 setSpeakerThermalGain:0 error:v8]& 1) == 0)
    {
      v9 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005A988(v9);
      }
    }

    self->super.maxLoadingIndex = self->super.currentLoadingIndex;
  }
}

- (void)refreshTGraphTelemetry
{
  [+[AVAudioSession sharedInstance](AVAudioSession speakerThermalGain];
  v4 = v3;
  if (v3 < 0.0 || v3 > 1.0)
  {
    *&self->super.allowLIOverride = 0;
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005A9CC(v6, v4);
    }
  }

  else
  {
    self->_targetSpeakerGain = v3;
    *&self->super.allowLIOverride = (((v3 - self->_currentSpeakerGain) * 100.0) / (1.0 - self->_currentSpeakerGain));
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = SpeakerCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 2;
}

@end