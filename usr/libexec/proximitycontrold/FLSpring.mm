@interface FLSpring
+ (FLSpring)springWithValue:(double)a3;
- (BOOL)isStable;
- (FLSpring)initWithValue:(double)a3;
- (FLSpringParameters)_effectiveParameters;
- (FLSpringParameters)offsetParameters;
- (FLSpringParameters)parameters;
- (FLSpringParameters)trackingParameters;
- (double)_projectedTargetForVelocity:(double)a3;
- (double)projectedTarget;
- (void)_updateForEffectiveParameters;
- (void)offsetTo:(double)a3;
- (void)resetImmediatelyToValue:(double)a3;
- (void)setParameters:(FLSpringParameters)a3;
- (void)setStableValueThreshold:(double)a3;
- (void)setStableVelocityThreshold:(double)a3;
- (void)setTarget:(double)a3;
- (void)setTracking:(BOOL)a3;
- (void)setTrackingParameters:(FLSpringParameters)a3;
- (void)step:(double)a3;
@end

@implementation FLSpring

+ (FLSpring)springWithValue:(double)a3
{
  v3 = [[a1 alloc] initWithValue:a3];

  return v3;
}

- (FLSpring)initWithValue:(double)a3
{
  v8.receiver = self;
  v8.super_class = FLSpring;
  v4 = [(FLSpring *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 67) = 0x3FF0000000000000;
    *(v4 + 600) = xmmword_10026EFE8;
    *(v4 + 616) = unk_10026EFF8;
    *(v4 + 632) = xmmword_10026F008;
    *(v4 + 648) = unk_10026F018;
    *(v4 + 664) = xmmword_10026EFE8;
    *(v4 + 680) = unk_10026EFF8;
    *(v4 + 72) = 0x3FE199999999999ALL;
    *(v4 + 71) = 0x7FEFFFFFFFFFFFFFLL;
    *(v4 + 73) = 0;
    *(v4 + 74) = 0x3FEFD70A3D70A3D7;
    *(v4 + 68) = 0;
    *(v4 + 32) = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
    [v4 resetImmediatelyToValue:a3];
    v6 = v5;
  }

  return v5;
}

- (void)setTarget:(double)a3
{
  v4 = a3 - self->_o.anchor;
  rubberbandRange = self->_rubberbandRange;
  if (rubberbandRange != 1.79769313e308)
  {
    minimumTarget = self->_minimumTarget;
    maximumTarget = self->_maximumTarget;
    if (v4 < maximumTarget)
    {
      maximumTarget = v4;
    }

    if (maximumTarget >= minimumTarget)
    {
      minimumTarget = maximumTarget;
    }

    v4 = sub_100027160(v4, minimumTarget, rubberbandRange, self->_rubberbandFactor);
  }

  if (self->_transitioningFromTracking && self->_retargetResponseFraction > 0.0)
  {
    self->_s.anchor.anchor = v4;
  }

  else
  {

    sub_100026C54(&self->_s, v4);
  }
}

- (void)offsetTo:(double)a3
{
  [(FLSpring *)self target];
  v6 = a3 - v5;

  [(FLSpring *)self offsetBy:v6];
}

- (BOOL)isStable
{
  memcpy(v8, &self->_s, sizeof(v8));
  v3 = sub_10002701C(v8);
  if (v3)
  {
    v4 = *&self->_o._beta;
    v8[4] = *&self->_o._previousStiffness;
    v8[5] = v4;
    v8[6] = *&self->_o._omega1;
    v5 = *&self->_o.mass;
    v8[0] = self->_o.state;
    v8[1] = v5;
    v6 = *&self->_o.stablePositionThreshold;
    v8[2] = *&self->_o.damping;
    v8[3] = v6;
    LOBYTE(v3) = sub_100027CF4(v8);
  }

  return v3;
}

- (void)setStableValueThreshold:(double)a3
{
  self->_stableValueThreshold = a3;
  self->_s.stablePositionThreshold = a3;
  self->_o.stablePositionThreshold = a3;
}

- (void)setStableVelocityThreshold:(double)a3
{
  self->_stableVelocityThreshold = a3;
  self->_s.stableVelocityThreshold = a3;
  self->_o.stableVelocityThreshold = a3;
}

- (double)projectedTarget
{
  if (self->_tracking)
  {
    v2 = 488;
  }

  else
  {
    v2 = 16;
    if (self->_transitioningFromTracking)
    {
      v2 = 488;
    }
  }

  [(FLSpring *)self _projectedTargetForVelocity:*(&self->super.isa + v2) + self->_o.state.velocity];
  return result;
}

- (double)_projectedTargetForVelocity:(double)a3
{
  [(FLSpring *)self value];
  projectionDeceleration = self->_projectionDeceleration;

  return sub_10002713C(v5, a3, projectionDeceleration);
}

- (void)resetImmediatelyToValue:(double)a3
{
  p_stablePositionThreshold = &self->_s.stablePositionThreshold;
  [(FLSpring *)self _effectiveParameters];
  sub_100026B34(v11, a3, 0.0, v6, v7);
  memcpy(&self->_s, v11, 0x160uLL);
  *p_stablePositionThreshold = *&self->_stableValueThreshold;
  sub_100027D28(v11, 0.0, 0.0, 0.0, self->_offsetParameters.dampingRatio, self->_offsetParameters.response);
  v8 = v11[5];
  *&self->_o._previousStiffness = v11[4];
  *&self->_o._beta = v8;
  *&self->_o._omega1 = v11[6];
  v9 = v11[1];
  self->_o.state = v11[0];
  *&self->_o.mass = v9;
  v10 = v11[3];
  *&self->_o.damping = v11[2];
  *&self->_o.stablePositionThreshold = v10;
  *(p_stablePositionThreshold + 4) = *&self->_stableValueThreshold;
  self->_previousTarget = a3;
  self->_targetVelocity = 0.0;
}

- (void)setParameters:(FLSpringParameters)a3
{
  v3.f64[0] = a3.dampingRatio;
  v3.f64[1] = a3.dampingRatioSmoothing;
  v4.f64[0] = a3.response;
  v4.f64[1] = a3.responseSmoothing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_parameters.dampingRatio, v3), vceqq_f64(*&self->_parameters.response, v4)))) & 1) == 0)
  {
    self->_parameters = a3;
    if (!self->_tracking)
    {
      [(FLSpring *)self _updateForEffectiveParameters];
    }
  }
}

- (void)setTrackingParameters:(FLSpringParameters)a3
{
  v3.f64[0] = a3.dampingRatio;
  v3.f64[1] = a3.dampingRatioSmoothing;
  v4.f64[0] = a3.response;
  v4.f64[1] = a3.responseSmoothing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_trackingParameters.dampingRatio, v3), vceqq_f64(*&self->_trackingParameters.response, v4)))) & 1) == 0)
  {
    self->_trackingParameters = a3;
    if (self->_tracking)
    {
      [(FLSpring *)self _updateForEffectiveParameters];
    }
  }
}

- (void)setTracking:(BOOL)a3
{
  tracking = self->_tracking;
  if (tracking != a3)
  {
    self->_transitioningFromTracking = tracking & ~a3;
    self->_tracking = a3;
    if (!a3)
    {
      v6 = self->_retargetResponseFraction * self->_parameters.response;
      [(FLSpring *)self _projectedTargetForVelocity:self->_targetVelocity];
      sub_100026CD0(&self->_s, self->_s.anchor.anchor, v7, v6);
    }

    [(FLSpring *)self _updateForEffectiveParameters];
  }
}

- (void)step:(double)a3
{
  anchor = self->_s.anchor.anchor;
  v6 = anchor - self->_previousTarget;
  v7 = v6 / a3 * 0.25 + self->_targetVelocity * 0.75;
  self->_transitioningFromTracking = 0;
  self->_targetVelocity = v7;
  self->_previousTarget = anchor;
  if (self->_retargetImpulse > 0.0)
  {
    *&__src[0] = 0;
    [(FLSpring *)self _effectiveParameters];
    sub_100026AB8(__src, 0, v8, v9);
    self->_s.state.velocity = self->_s.state.velocity + v6 * *__src * self->_retargetImpulse;
  }

  v10 = self->_timeFactor * a3;
  memcpy(v18, &self->_s, sizeof(v18));
  sub_100026E14(v18, __src, v10);
  memcpy(&self->_s, __src, sizeof(self->_s));
  v11 = self->_timeFactor * a3;
  v12 = *&self->_o._beta;
  v18[4] = *&self->_o._previousStiffness;
  v18[5] = v12;
  v18[6] = *&self->_o._omega1;
  v13 = *&self->_o.mass;
  v18[0] = self->_o.state;
  v18[1] = v13;
  v14 = *&self->_o.stablePositionThreshold;
  v18[2] = *&self->_o.damping;
  v18[3] = v14;
  sub_100027DF0(v18, __src, v11);
  v15 = __src[5];
  *&self->_o._previousStiffness = __src[4];
  *&self->_o._beta = v15;
  *&self->_o._omega1 = __src[6];
  v16 = __src[1];
  self->_o.state = __src[0];
  *&self->_o.mass = v16;
  v17 = __src[3];
  *&self->_o.damping = __src[2];
  *&self->_o.stablePositionThreshold = v17;
}

- (FLSpringParameters)_effectiveParameters
{
  v2 = 600;
  if (self->_tracking)
  {
    v2 = 632;
  }

  v3 = 608;
  if (self->_tracking)
  {
    v3 = 640;
  }

  v4 = 616;
  if (self->_tracking)
  {
    v4 = 648;
  }

  v5 = 624;
  if (self->_tracking)
  {
    v5 = 656;
  }

  v6 = *(&self->super.isa + v5);
  v7 = *(&self->super.isa + v4);
  v8 = *(&self->super.isa + v2);
  v9 = *(&self->super.isa + v3);
  result.responseSmoothing = v6;
  result.response = v7;
  result.dampingRatioSmoothing = v9;
  result.dampingRatio = v8;
  return result;
}

- (void)_updateForEffectiveParameters
{
  [(FLSpring *)self _effectiveParameters];
  v4 = v3;
  v6 = v5;
  sub_100026D34(&self->_s, v7, v8);

  sub_100026DAC(&self->_s, v4, v6);
}

- (FLSpringParameters)parameters
{
  dampingRatio = self->_parameters.dampingRatio;
  dampingRatioSmoothing = self->_parameters.dampingRatioSmoothing;
  response = self->_parameters.response;
  responseSmoothing = self->_parameters.responseSmoothing;
  result.responseSmoothing = responseSmoothing;
  result.response = response;
  result.dampingRatioSmoothing = dampingRatioSmoothing;
  result.dampingRatio = dampingRatio;
  return result;
}

- (FLSpringParameters)trackingParameters
{
  dampingRatio = self->_trackingParameters.dampingRatio;
  dampingRatioSmoothing = self->_trackingParameters.dampingRatioSmoothing;
  response = self->_trackingParameters.response;
  responseSmoothing = self->_trackingParameters.responseSmoothing;
  result.responseSmoothing = responseSmoothing;
  result.response = response;
  result.dampingRatioSmoothing = dampingRatioSmoothing;
  result.dampingRatio = dampingRatio;
  return result;
}

- (FLSpringParameters)offsetParameters
{
  dampingRatio = self->_offsetParameters.dampingRatio;
  dampingRatioSmoothing = self->_offsetParameters.dampingRatioSmoothing;
  response = self->_offsetParameters.response;
  responseSmoothing = self->_offsetParameters.responseSmoothing;
  result.responseSmoothing = responseSmoothing;
  result.response = response;
  result.dampingRatioSmoothing = dampingRatioSmoothing;
  result.dampingRatio = dampingRatio;
  return result;
}

@end