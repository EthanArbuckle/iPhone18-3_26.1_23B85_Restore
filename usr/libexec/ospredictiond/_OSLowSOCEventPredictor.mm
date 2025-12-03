@interface _OSLowSOCEventPredictor
+ (id)sharedInstance;
- (_OSLowSOCEventPredictor)init;
@end

@implementation _OSLowSOCEventPredictor

- (_OSLowSOCEventPredictor)init
{
  v6.receiver = self;
  v6.super_class = _OSLowSOCEventPredictor;
  v2 = [(_OSLowSOCEventPredictor *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "highDrainPredictor");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004404;
  block[3] = &unk_100094818;
  block[4] = self;
  if (qword_1000B6960 != -1)
  {
    dispatch_once(&qword_1000B6960, block);
  }

  v2 = qword_1000B6958;

  return v2;
}

@end