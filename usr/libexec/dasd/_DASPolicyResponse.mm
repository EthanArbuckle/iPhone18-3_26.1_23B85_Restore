@interface _DASPolicyResponse
+ (BOOL)isPolicyDecisionProceedable:(int64_t)proceedable;
+ (id)abbreviatedDecision:(int64_t)decision;
+ (id)policyResponseWithDecision:(int64_t)decision validityDuration:(double)duration rationale:(id)rationale;
+ (id)policyResponseWithScore:(double)score validityDuration:(double)duration rationale:(id)rationale;
+ (id)prettyDecisionDescription:(int64_t)description;
- (_DASPolicyResponse)initWithScore:(double)score decision:(int64_t)decision validityDuration:(double)duration rationale:(id)rationale;
- (id)description;
@end

@implementation _DASPolicyResponse

- (id)description
{
  policyDecision = self->_policyDecision;
  score = self->_score;
  if (self->_rationale)
  {
    v4 = [NSString stringWithFormat:@", %@", self->_rationale];
    v5 = [NSString stringWithFormat:@"{%ld, %2.2lf%@}", policyDecision, *&score, v4];
  }

  else
  {
    v5 = [NSString stringWithFormat:@"{%ld, %2.2lf%@}", policyDecision, *&score, &stru_1001BA3C0];
  }

  return v5;
}

+ (id)prettyDecisionDescription:(int64_t)description
{
  if (description <= 66)
  {
    if (!description)
    {
      return @"Can Proceed";
    }

    if (description == 33)
    {
      return @"Must Not Proceed";
    }
  }

  else
  {
    switch(description)
    {
      case 67:
        return @"Must Proceed";
      case 100:
        return @"Absolutely Must Not Proceed";
      case 200:
        return @"Absolutely Must Proceed";
    }
  }

  return @"Unknown Decision (Proceed)";
}

+ (id)abbreviatedDecision:(int64_t)decision
{
  if (decision <= 66)
  {
    if (!decision)
    {
      return @"CP";
    }

    if (decision == 33)
    {
      return @"MNP";
    }
  }

  else
  {
    switch(decision)
    {
      case 67:
        return @"MP";
      case 100:
        return @"AMNP";
      case 200:
        return @"AMP";
    }
  }

  return @"UD(P)";
}

- (_DASPolicyResponse)initWithScore:(double)score decision:(int64_t)decision validityDuration:(double)duration rationale:(id)rationale
{
  rationaleCopy = rationale;
  v15.receiver = self;
  v15.super_class = _DASPolicyResponse;
  v12 = [(_DASPolicyResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_score = score;
    v12->_policyDecision = decision;
    v12->_validityDuration = duration;
    objc_storeStrong(&v12->_rationale, rationale);
  }

  return v13;
}

+ (id)policyResponseWithDecision:(int64_t)decision validityDuration:(double)duration rationale:(id)rationale
{
  if (decision == 100 || decision == 33)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  rationaleCopy = rationale;
  v10 = [[_DASPolicyResponse alloc] initWithScore:decision decision:rationaleCopy validityDuration:v8 rationale:duration];

  return v10;
}

+ (id)policyResponseWithScore:(double)score validityDuration:(double)duration rationale:(id)rationale
{
  rationaleCopy = rationale;
  v8 = [_DASPolicyResponse alloc];
  if (score <= 0.0)
  {
    v9 = 33;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_DASPolicyResponse *)v8 initWithScore:v9 decision:rationaleCopy validityDuration:score rationale:duration];

  return v10;
}

+ (BOOL)isPolicyDecisionProceedable:(int64_t)proceedable
{
  v3 = proceedable == 200;
  if (proceedable == 67)
  {
    v3 = 1;
  }

  return !proceedable || v3;
}

@end