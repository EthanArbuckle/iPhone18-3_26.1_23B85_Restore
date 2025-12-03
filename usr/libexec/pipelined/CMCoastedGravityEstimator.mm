@interface CMCoastedGravityEstimator
- (CMCoastedGravityEstimator)init;
- (CMGravity)feedAccelAtTimestamp:(double)timestamp X:(float)x Y:(float)y Z:(float)z;
- (CMGravity)feedRotationRateAtTimestamp:(double)timestamp X:(float)x Y:(float)y Z:(float)z;
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

- (CMGravity)feedAccelAtTimestamp:(double)timestamp X:(float)x Y:(float)y Z:(float)z
{
  v6 = sub_100046780(&self->_impl, timestamp, x, y, z);
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (CMGravity)feedRotationRateAtTimestamp:(double)timestamp X:(float)x Y:(float)y Z:(float)z
{
  sub_1000468E4(&self->_impl, timestamp, x, y, z);
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

@end