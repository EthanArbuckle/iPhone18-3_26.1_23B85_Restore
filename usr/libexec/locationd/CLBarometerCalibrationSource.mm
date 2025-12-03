@interface CLBarometerCalibrationSource
- (CLBarometerCalibrationSource)initWithUniverse:(id)universe delegate:(id)delegate;
- (void)dealloc;
@end

@implementation CLBarometerCalibrationSource

- (CLBarometerCalibrationSource)initWithUniverse:(id)universe delegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = CLBarometerCalibrationSource;
  v7 = [(CLBarometerCalibrationSource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_universe = universe;
    v7->_delegate = delegate;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      sub_1018F5530(a2, v8);
    }
  }

  return v8;
}

- (void)dealloc
{
  self->_universe = 0;
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = CLBarometerCalibrationSource;
  [(CLBarometerCalibrationSource *)&v2 dealloc];
}

@end