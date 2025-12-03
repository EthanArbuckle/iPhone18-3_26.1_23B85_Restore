@interface _APRSFreezerInterface
+ (id)sharedInstance;
- (_APRSFreezerInterface)init;
- (void)updateFreezer:(id)freezer;
- (void)updateFreezerRecommendations:(id)recommendations forDemotion:(BOOL)demotion;
@end

@implementation _APRSFreezerInterface

- (_APRSFreezerInterface)init
{
  v6.receiver = self;
  v6.super_class = _APRSFreezerInterface;
  v2 = [(_APRSFreezerInterface *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.aprs", "appResume.freezerInterface");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10020B178 != -1)
  {
    sub_10011F358();
  }

  v3 = qword_10020B170;

  return v3;
}

- (void)updateFreezer:(id)freezer
{
  freezerCopy = freezer;
  [(_APRSFreezerInterface *)self updateFreezer:freezerCopy forDemotion:0];
  v5 = +[_APRSMetricRecorder sharedInstance];
  [v5 checkFrozenApps:freezerCopy];
}

- (void)updateFreezerRecommendations:(id)recommendations forDemotion:(BOOL)demotion
{
  demotionCopy = demotion;
  recommendationsCopy = recommendations;
  log = self->_log;
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (demotionCopy)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v36 = 138412290;
    *&v36[4] = recommendationsCopy;
    v9 = "Removing from freezer recommendations %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v36 = 138412290;
    *&v36[4] = recommendationsCopy;
    v9 = "Updating freezer recommendations to %@";
  }

  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v9, v36, 0xCu);
LABEL_7:
  if ([recommendationsCopy count])
  {
    v10 = [recommendationsCopy count];
    v11 = v10;
    v30 = &v25[-6 * v10];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allObjects = [recommendationsCopy allObjects];
    v12 = [allObjects countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v25[1] = v25;
      v26 = demotionCopy;
      selfCopy = self;
      v28 = recommendationsCopy;
      v13 = 0;
      v14 = *v33;
      v29 = v11 + 1;
      do
      {
        v15 = 0;
        v16 = v13 << 32;
        v13 = v13;
        v17 = v29 - v13;
        v18 = &v30[6 * v13];
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(allObjects);
          }

          v19 = *(*(&v32 + 1) + 8 * v15);
          memset(&v36[12], 0, 36);
          *v36 = 1;
          *&v36[8] = v17;
          strncpy(&v36[12], [v19 UTF8String], 0x21uLL);
          v20 = *&v36[16];
          *v18 = *v36;
          v18[1] = v20;
          ++v13;
          v15 = v15 + 1;
          v18[2] = *&v36[32];
          --v17;
          v18 += 3;
          v16 += &_mh_execute_header;
        }

        while (v12 != v15);
        v12 = [allObjects countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
      self = selfCopy;
      recommendationsCopy = v28;
    }

    v21 = memorystatus_control();
    if (v21)
    {
      v22 = v21;
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10011F36C(v22, v23);
      }
    }
  }

  else
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No updates!", v36, 2u);
    }
  }
}

@end