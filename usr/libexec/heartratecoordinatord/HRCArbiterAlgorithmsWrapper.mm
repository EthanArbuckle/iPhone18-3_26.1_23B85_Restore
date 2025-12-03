@interface HRCArbiterAlgorithmsWrapper
- (HRCArbiterAlgorithmsWrapper)initWithDelegate:(id)delegate;
- (HRCArbiterAlgorithmsWrapperDelegate)delegate;
- (void)_handleAlgsOutputHeartRate:(const void *)rate;
- (void)resetAlgorithms;
- (void)setupAlgorithms;
@end

@implementation HRCArbiterAlgorithmsWrapper

- (HRCArbiterAlgorithmsWrapper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v7.receiver = self;
  v7.super_class = HRCArbiterAlgorithmsWrapper;
  v5 = [(HRCArbiterAlgorithmsWrapper *)&v7 init];
  objc_storeWeak(&v5->_delegate, delegateCopy);

  return v5;
}

- (void)setupAlgorithms
{
  v3 = sub_100024BD4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "HRCArbiterAlgorithmsWrapper setting up algs", buf, 2u);
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&to, &location);
  operator new();
}

- (void)resetAlgorithms
{
  v3 = sub_100024BD4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "HRCArbiterAlgorithmsWrapper calling reset on algs", v4, 2u);
  }

  sub_10001FD44(self->_algorithms.__ptr_);
}

- (void)_handleAlgsOutputHeartRate:(const void *)rate
{
  delegate = [(HRCArbiterAlgorithmsWrapper *)self delegate];
  v5 = *(rate + 1);
  v7[0] = *rate;
  v7[1] = v5;
  v6 = *(rate + 3);
  v7[2] = *(rate + 2);
  v7[3] = v6;
  [delegate handleHeartRateOutput:v7];
}

- (HRCArbiterAlgorithmsWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end