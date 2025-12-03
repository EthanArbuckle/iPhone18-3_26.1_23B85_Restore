@interface HapticPlayer
+ (id)sharedInstance;
- (BOOL)playAudioForTimes:(int64_t)times;
- (BOOL)playHapticForDuration:(double)duration;
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
  supportsHaptics = [v4 supportsHaptics];

  if ((supportsHaptics & 1) == 0)
  {
    v7 = [NSString stringWithFormat:@"Current platform doesn't support Core Haptics"];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
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
    localizedDescription = [v7 localizedDescription];
    v10 = [NSString stringWithFormat:@"CHHapticEngine init failed: %@", localizedDescription];

    logger2 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
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
    localizedDescription2 = [v16 localizedDescription];
    v18 = [NSString stringWithFormat:@"CHHapticEngine start failed: %@", localizedDescription2];

    logger3 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger3, OS_LOG_TYPE_ERROR))
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

- (BOOL)playHapticForDuration:(double)duration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_engine)
  {
    v31 = +[NSMutableArray array];
    v5 = (duration / 0.1);
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
      logger3 = v18;
      localizedDescription = [v18 localizedDescription];
      v21 = [NSString stringWithFormat:@"Create CHHapticPattern failed: %@", localizedDescription];

      logger = [(MDRBaseObject *)selfCopy logger];
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        sub_1000131F4();
      }
    }

    else
    {
      engine = selfCopy->_engine;
      v33 = 0;
      v21 = [(CHHapticEngine *)engine createPlayerWithPattern:v17 error:&v33];
      v25 = v33;
      if (v25)
      {
        logger3 = v25;
        localizedDescription2 = [v25 localizedDescription];
        logger = [NSString stringWithFormat:@"Create CHHapticPatternPlayer failed: %@", localizedDescription2];

        logger2 = [(MDRBaseObject *)selfCopy logger];
        if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
        {
          sub_1000131F4();
        }
      }

      else
      {
        v32 = 0;
        [v21 startAtTime:&v32 error:0.0];
        v28 = v32;
        logger3 = v28;
        if (!v28)
        {
          v23 = 1;
          goto LABEL_19;
        }

        localizedDescription3 = [v28 localizedDescription];
        logger = [NSString stringWithFormat:@"CHHapticPatternPlayer start failed: %@", localizedDescription3];

        logger2 = [(MDRBaseObject *)selfCopy logger];
        if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
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
  logger3 = [(MDRBaseObject *)selfCopy logger];
  if (os_log_type_enabled(logger3, OS_LOG_TYPE_ERROR))
  {
    sub_1000131F4();
  }

  v23 = 0;
LABEL_20:

  objc_sync_exit(selfCopy);
  return v23;
}

- (BOOL)playAudioForTimes:(int64_t)times
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_engine)
  {
    if (times > 0)
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

      while (times != v5);
      v33 = 0;
      v16 = [[CHHapticPattern alloc] initWithEvents:v30 parameters:&__NSArray0__struct error:&v33];
      v17 = v33;
      if (v17)
      {
        logger3 = v17;
        localizedDescription = [v17 localizedDescription];
        v20 = [NSString stringWithFormat:@"Create CHHapticPattern failed: %@", localizedDescription];

        logger = [(MDRBaseObject *)selfCopy logger];
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          sub_100013268();
        }
      }

      else
      {
        engine = selfCopy->_engine;
        v32 = 0;
        v20 = [(CHHapticEngine *)engine createPlayerWithPattern:v16 error:&v32];
        v24 = v32;
        if (v24)
        {
          logger3 = v24;
          localizedDescription2 = [v24 localizedDescription];
          logger = [NSString stringWithFormat:@"Create CHHapticPatternPlayer failed: %@", localizedDescription2];

          logger2 = [(MDRBaseObject *)selfCopy logger];
          if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
          {
            sub_100013268();
          }
        }

        else
        {
          v31 = 0;
          [v20 startAtTime:&v31 error:0.0];
          v27 = v31;
          logger3 = v27;
          if (!v27)
          {
            v22 = 1;
            goto LABEL_21;
          }

          localizedDescription3 = [v27 localizedDescription];
          logger = [NSString stringWithFormat:@"CHHapticPatternPlayer start failed: %@", localizedDescription3];

          logger2 = [(MDRBaseObject *)selfCopy logger];
          if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
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
    logger3 = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v30 = [NSString stringWithFormat:@"Engine is not initialized"];
    logger3 = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger3, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      sub_100013268();
    }
  }

  v22 = 0;
LABEL_22:

  objc_sync_exit(selfCopy);
  return v22;
}

@end