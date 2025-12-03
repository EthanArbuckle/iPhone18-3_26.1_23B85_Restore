@interface APExperimentationError
+ (void)experimentationErrorWithErrorType:(int64_t)type description:(id)description;
- (APExperimentationError)init;
@end

@implementation APExperimentationError

+ (void)experimentationErrorWithErrorType:(int64_t)type description:(id)description
{
  if (description)
  {
    v5 = sub_100398F58();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  _s7Reports20ExperimentationErrorC015experimentationC09errorType11descriptionyAA0bcF0O_SSSgtFZ_0(type, v5, v7);
}

- (APExperimentationError)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExperimentationError();
  return [(APExperimentationError *)&v3 init];
}

@end