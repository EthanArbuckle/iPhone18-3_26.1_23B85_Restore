@interface RPAutoBugCapture
+ (id)sharedReporter;
- (RPAutoBugCapture)init;
- (void)reportIssueOfType:(unint64_t)type issueContext:(id)context processName:(id)name triggerThresholdValues:(id)values;
@end

@implementation RPAutoBugCapture

+ (id)sharedReporter
{
  if (qword_1001D6448 != -1)
  {
    sub_100123FF8();
  }

  v3 = qword_1001D6440;

  return v3;
}

- (RPAutoBugCapture)init
{
  v10.receiver = self;
  v10.super_class = RPAutoBugCapture;
  v2 = [(RPAutoBugCapture *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("RPAutoBugCapture", v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = [objc_alloc(off_1001D48F0[0]()) initWithQueue:v2->_dispatchQueue];
    reporter = v2->_reporter;
    v2->_reporter = v7;
  }

  return v2;
}

- (void)reportIssueOfType:(unint64_t)type issueContext:(id)context processName:(id)name triggerThresholdValues:(id)values
{
  contextCopy = context;
  nameCopy = name;
  valuesCopy = values;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009312C;
  block[3] = &unk_1001AE5C8;
  v20 = valuesCopy;
  typeCopy = type;
  block[4] = self;
  v18 = contextCopy;
  v19 = nameCopy;
  v14 = valuesCopy;
  v15 = nameCopy;
  v16 = contextCopy;
  dispatch_async(dispatchQueue, block);
}

@end