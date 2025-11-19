@interface CMCoastedGravityEstimator
- (CMCoastedGravityEstimator)init;
- (CMGravity)feedAccelAtTimestamp:(double)a3 X:(float)a4 Y:(float)a5 Z:(float)a6;
- (CMGravity)feedRotationRateAtTimestamp:(double)a3 X:(float)a4 Y:(float)a5 Z:(float)a6;
@end

@implementation CMCoastedGravityEstimator

- (CMCoastedGravityEstimator)init
{
  v6.receiver = self;
  v6.super_class = CMCoastedGravityEstimator;
  v2 = [(CMCoastedGravityEstimator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (CMGravity)feedAccelAtTimestamp:(double)a3 X:(float)a4 Y:(float)a5 Z:(float)a6
{
  v6 = sub_100046780(&self->_impl, a3, a4, a5, a6);
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (CMGravity)feedRotationRateAtTimestamp:(double)a3 X:(float)a4 Y:(float)a5 Z:(float)a6
{
  sub_1000468E4(&self->_impl, a3, a4, a5, a6);
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

@end