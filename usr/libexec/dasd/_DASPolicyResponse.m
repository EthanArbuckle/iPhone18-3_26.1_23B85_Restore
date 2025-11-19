@interface _DASPolicyResponse
+ (BOOL)isPolicyDecisionProceedable:(int64_t)a3;
+ (id)abbreviatedDecision:(int64_t)a3;
+ (id)policyResponseWithDecision:(int64_t)a3 validityDuration:(double)a4 rationale:(id)a5;
+ (id)policyResponseWithScore:(double)a3 validityDuration:(double)a4 rationale:(id)a5;
+ (id)prettyDecisionDescription:(int64_t)a3;
- (_DASPolicyResponse)initWithScore:(double)a3 decision:(int64_t)a4 validityDuration:(double)a5 rationale:(id)a6;
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

+ (id)prettyDecisionDescription:(int64_t)a3
{
  if (a3 <= 66)
  {
    if (!a3)
    {
      return @"Can Proceed";
    }

    if (a3 == 33)
    {
      return @"Must Not Proceed";
    }
  }

  else
  {
    switch(a3)
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

+ (id)abbreviatedDecision:(int64_t)a3
{
  if (a3 <= 66)
  {
    if (!a3)
    {
      return @"CP";
    }

    if (a3 == 33)
    {
      return @"MNP";
    }
  }

  else
  {
    switch(a3)
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

- (_DASPolicyResponse)initWithScore:(double)a3 decision:(int64_t)a4 validityDuration:(double)a5 rationale:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = _DASPolicyResponse;
  v12 = [(_DASPolicyResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_score = a3;
    v12->_policyDecision = a4;
    v12->_validityDuration = a5;
    objc_storeStrong(&v12->_rationale, a6);
  }

  return v13;
}

+ (id)policyResponseWithDecision:(int64_t)a3 validityDuration:(double)a4 rationale:(id)a5
{
  if (a3 == 100 || a3 == 33)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = a5;
  v10 = [[_DASPolicyResponse alloc] initWithScore:a3 decision:v9 validityDuration:v8 rationale:a4];

  return v10;
}

+ (id)policyResponseWithScore:(double)a3 validityDuration:(double)a4 rationale:(id)a5
{
  v7 = a5;
  v8 = [_DASPolicyResponse alloc];
  if (a3 <= 0.0)
  {
    v9 = 33;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_DASPolicyResponse *)v8 initWithScore:v9 decision:v7 validityDuration:a3 rationale:a4];

  return v10;
}

+ (BOOL)isPolicyDecisionProceedable:(int64_t)a3
{
  v3 = a3 == 200;
  if (a3 == 67)
  {
    v3 = 1;
  }

  return !a3 || v3;
}

@end