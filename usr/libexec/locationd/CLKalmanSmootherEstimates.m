@interface CLKalmanSmootherEstimates
- (CLKalmanSmootherEstimates)init;
- (CMMatrix<float,)fCovariance;
- (CMVector<float,)fState;
@end

@implementation CLKalmanSmootherEstimates

- (CLKalmanSmootherEstimates)init
{
  v3.receiver = self;
  v3.super_class = CLKalmanSmootherEstimates;
  result = [(CLKalmanSmootherEstimates *)&v3 init];
  if (result)
  {
    result->_fState.elements[0] = 0.0;
    result->_fState.elements[1] = 0.0;
    *result->_fCovariance.fData = 0;
    *&result->_fCovariance.fData[2] = 0;
    result->_timestamp = 1.79769313e308;
  }

  return result;
}

- (CMVector<float,)fState
{
  v2 = self->_fState.elements[0];
  v3 = self->_fState.elements[1];
  result.elements[1] = v3;
  result.elements[0] = v2;
  return result;
}

- (CMMatrix<float,)fCovariance
{
  v2 = self->_fCovariance.fData[0];
  v3 = self->_fCovariance.fData[1];
  v4 = self->_fCovariance.fData[2];
  v5 = self->_fCovariance.fData[3];
  result.fData[3] = v5;
  result.fData[2] = v4;
  result.fData[1] = v3;
  result.fData[0] = v2;
  return result;
}

@end