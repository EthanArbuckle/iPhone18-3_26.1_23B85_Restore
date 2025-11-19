@interface TMTimeSynthesizerStates
- (id)description;
@end

@implementation TMTimeSynthesizerStates

- (id)description
{
  [(TMTimeSynthesizerStates *)self rtc];
  v4 = v3;
  [(TMTimeSynthesizerStates *)self utc];
  v6 = v5;
  [(TMTimeSynthesizerStates *)self rateSf];
  v8 = v7;
  [(TMTimeSynthesizerStates *)self utc_var];
  v10 = sqrt(v9);
  [(TMTimeSynthesizerStates *)self sf_var];
  return [NSString stringWithFormat:@"rtc, %.3lf, utc, %.3lf, sf, %.8lf, utcStd, %.8lf, sfStd, %.8lf", v4, v6, v8, *&v10, sqrt(v11)];
}

@end