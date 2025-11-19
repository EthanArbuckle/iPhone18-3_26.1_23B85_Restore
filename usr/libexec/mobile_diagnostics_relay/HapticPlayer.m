@interface HapticPlayer
+ (id)sharedInstance;
- (BOOL)playAudioForTimes:(int64_t)a3;
- (BOOL)playHapticForDuration:(double)a3;
- (BOOL)setupHapticEngine;
- (HapticPlayer)init;
@end

@implementation HapticPlayer

- (HapticPlayer)init
{
  v7.receiver = self;
  v7.super_class = HapticPlayer;
  v2 = [(MDRBaseObject *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if (![(HapticPlayer *)v2 setupHapticEngine])
    {
      engine = v3->_engine;
      v3->_engine = 0;
    }

    v5 = v3;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1000264D0 != -1)
  {
    sub_10001316C();
  }

  v3 = qword_1000264C8;

  return v3;
}

- (BOOL)setupHapticEngine
{
  engine = self->_engine;
  self->_engine = 0;

  v4 = +[CHHapticEngine capabilitiesForHardware];
  v5 = [v4 supportsHaptics];

  if ((v5 & 1) == 0)
  {
    v7 = [NSString stringWithFormat:@"Current platform doesn't support Core Haptics"];
    v12 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100013180();
    }

    goto LABEL_9;
  }

  v26 = 0;
  v6 = [[CHHapticEngine alloc] initAndReturnError:&v26];
  v7 = v26;
  v8 = self->_engine;
  self->_engine = v6;

  if (v7)
  {
    v9 = [v7 localizedDescription];
    v10 = [NSString stringWithFormat:@"CHHapticEngine init failed: %@", v9];

    v11 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100013180();
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000055C8;
  v23[3] = &unk_1000209A8;
  objc_copyWeak(&v24, &location);
  [(CHHapticEngine *)self->_engine setStoppedHandler:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000056AC;
  v21[3] = &unk_1000209D0;
  objc_copyWeak(&v22, &location);
  [(CHHapticEngine *)self->_engine setResetHandler:v21];
  v15 = self->_engine;
  v20 = 0;
  [(CHHapticEngine *)v15 startAndReturnError:&v20];
  v16 = v20;
  v7 = v16;
  v13 = v16 == 0;
  if (v16)
  {
    v17 = [v16 localizedDescription];
    v18 = [NSString stringWithFormat:@"CHHapticEngine start failed: %@", v17];

    v19 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100013180();
    }
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
LABEL_10:

  return v13;
}

- (BOOL)playHapticForDuration:(double)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_engine)
  {
    v31 = +[NSMutableArray array];
    v5 = (a3 / 0.1);
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [CHHapticEventParameter alloc];
        LODWORD(v8) = 1.0;
        v9 = [v7 initWithParameterID:CHHapticEventParameterIDHapticIntensity value:v8];
        v10 = [CHHapticEventParameter alloc];
        LODWORD(v11) = 1.0;
        v12 = [v10 initWithParameterID:CHHapticEventParameterIDHapticSharpness value:v11];
        v13 = [CHHapticEvent alloc];
        v14 = CHHapticEventTypeHapticContinuous;
        v35[0] = v9;
        v35[1] = v12;
        v15 = [NSArray arrayWithObjects:v35 count:2];
        v16 = [v13 initWithEventType:v14 parameters:v15 relativeTime:i * 0.1 duration:0.1];

        [v31 addObject:v16];
      }
    }

    v34 = 0;
    v17 = [[CHHapticPattern alloc] initWithEvents:v31 parameters:&__NSArray0__struct error:&v34];
    v18 = v34;
    if (v18)
    {
      v19 = v18;
      v20 = [v18 localizedDescription];
      v21 = [NSString stringWithFormat:@"Create CHHapticPattern failed: %@", v20];

      v22 = [(MDRBaseObject *)v4 logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000131F4();
      }
    }

    else
    {
      engine = v4->_engine;
      v33 = 0;
      v21 = [(CHHapticEngine *)engine createPlayerWithPattern:v17 error:&v33];
      v25 = v33;
      if (v25)
      {
        v19 = v25;
        v26 = [v25 localizedDescription];
        v22 = [NSString stringWithFormat:@"Create CHHapticPatternPlayer failed: %@", v26];

        v27 = [(MDRBaseObject *)v4 logger];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1000131F4();
        }
      }

      else
      {
        v32 = 0;
        [v21 startAtTime:&v32 error:0.0];
        v28 = v32;
        v19 = v28;
        if (!v28)
        {
          v23 = 1;
          goto LABEL_19;
        }

        v29 = [v28 localizedDescription];
        v22 = [NSString stringWithFormat:@"CHHapticPatternPlayer start failed: %@", v29];

        v27 = [(MDRBaseObject *)v4 logger];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1000131F4();
        }
      }
    }

    v23 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v31 = [NSString stringWithFormat:@"Engine is not initialized"];
  v19 = [(MDRBaseObject *)v4 logger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1000131F4();
  }

  v23 = 0;
LABEL_20:

  objc_sync_exit(v4);
  return v23;
}

- (BOOL)playAudioForTimes:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_engine)
  {
    if (a3 > 0)
    {
      v30 = +[NSMutableArray array];
      v5 = 0;
      do
      {
        v6 = [CHHapticEventParameter alloc];
        LODWORD(v7) = 1.0;
        v8 = [v6 initWithParameterID:CHHapticEventParameterIDAudioVolume value:v7];
        v9 = [CHHapticEventParameter alloc];
        LODWORD(v10) = 1.0;
        v11 = [v9 initWithParameterID:CHHapticEventParameterIDAudioPitch value:v10];
        v12 = [CHHapticEvent alloc];
        v13 = CHHapticEventTypeAudioContinuous;
        v34[0] = v8;
        v34[1] = v11;
        v14 = [NSArray arrayWithObjects:v34 count:2];
        v15 = [v12 initWithEventType:v13 parameters:v14 relativeTime:v5 * 0.3 duration:0.1];

        [v30 addObject:v15];
        ++v5;
      }

      while (a3 != v5);
      v33 = 0;
      v16 = [[CHHapticPattern alloc] initWithEvents:v30 parameters:&__NSArray0__struct error:&v33];
      v17 = v33;
      if (v17)
      {
        v18 = v17;
        v19 = [v17 localizedDescription];
        v20 = [NSString stringWithFormat:@"Create CHHapticPattern failed: %@", v19];

        v21 = [(MDRBaseObject *)v4 logger];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100013268();
        }
      }

      else
      {
        engine = v4->_engine;
        v32 = 0;
        v20 = [(CHHapticEngine *)engine createPlayerWithPattern:v16 error:&v32];
        v24 = v32;
        if (v24)
        {
          v18 = v24;
          v25 = [v24 localizedDescription];
          v21 = [NSString stringWithFormat:@"Create CHHapticPatternPlayer failed: %@", v25];

          v26 = [(MDRBaseObject *)v4 logger];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100013268();
          }
        }

        else
        {
          v31 = 0;
          [v20 startAtTime:&v31 error:0.0];
          v27 = v31;
          v18 = v27;
          if (!v27)
          {
            v22 = 1;
            goto LABEL_21;
          }

          v28 = [v27 localizedDescription];
          v21 = [NSString stringWithFormat:@"CHHapticPatternPlayer start failed: %@", v28];

          v26 = [(MDRBaseObject *)v4 logger];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100013268();
          }
        }
      }

      v22 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v30 = [NSString stringWithFormat:@"Audio times should > 0"];
    v18 = [(MDRBaseObject *)v4 logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v30 = [NSString stringWithFormat:@"Engine is not initialized"];
    v18 = [(MDRBaseObject *)v4 logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      sub_100013268();
    }
  }

  v22 = 0;
LABEL_22:

  objc_sync_exit(v4);
  return v22;
}

@end