@interface NEKStatTracker
- (BOOL)load;
- (NEKEnvironment)environment;
- (NEKStatTracker)initWithEnvironment:(id)environment name:(id)name defaultMean:(double)mean defaultStddev:(double)stddev;
- (double)_clip:(double)_clip;
- (double)nextTimeout;
- (double)stddev;
- (void)save;
- (void)updateFailure;
- (void)updateSuccess:(double)success;
@end

@implementation NEKStatTracker

- (NEKStatTracker)initWithEnvironment:(id)environment name:(id)name defaultMean:(double)mean defaultStddev:(double)stddev
{
  environmentCopy = environment;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = NEKStatTracker;
  v12 = [(NEKStatTracker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(NEKStatTracker *)v12 setName:nameCopy];
    [(NEKStatTracker *)v13 setEnvironment:environmentCopy];
    [(NEKStatTracker *)v13 setMean:mean];
    [(NEKStatTracker *)v13 setStddev:stddev];
    [(NEKStatTracker *)v13 setAlpha:0.4];
    [(NEKStatTracker *)v13 setFailureScaling:2.0];
    [(NEKStatTracker *)v13 setSigmaSpan:3.0];
    [(NEKStatTracker *)v13 setFailTimeout:0.0];
    [(NEKStatTracker *)v13 setMinTimeout:60.0];
    [(NEKStatTracker *)v13 setMaxTimeout:14400.0];
  }

  return v13;
}

- (NEKEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (BOOL)load
{
  name = [(NEKStatTracker *)self name];
  v4 = [NSString stringWithFormat:@"%@.mean", name];

  name2 = [(NEKStatTracker *)self name];
  v6 = [NSString stringWithFormat:@"%@.variance", name2];

  name3 = [(NEKStatTracker *)self name];
  v8 = [NSString stringWithFormat:@"%@.failureTimeout", name3];

  environment = [(NEKStatTracker *)self environment];
  tinyStore = [environment tinyStore];

  [tinyStore getDoubleValueForKey:v4 default:-1.0];
  v12 = v11;
  [tinyStore getDoubleValueForKey:v6 default:-1.0];
  v14 = v13;
  v15 = 0.0;
  [tinyStore getDoubleValueForKey:v8 default:0.0];
  v17 = v14 != -1.0 && v12 != -1.0;
  if (tinyStore)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = v16;
    [(NEKStatTracker *)self setMean:v12];
    [(NEKStatTracker *)self setVariance:v14];
    v15 = v19;
  }

  else
  {
    [(NEKStatTracker *)self setFirstTimeEver:1];
  }

  [(NEKStatTracker *)self setFailTimeout:v15];

  return v18;
}

- (void)save
{
  name = [(NEKStatTracker *)self name];
  v10 = [NSString stringWithFormat:@"%@.mean", name];

  name2 = [(NEKStatTracker *)self name];
  v5 = [NSString stringWithFormat:@"%@.variance", name2];

  name3 = [(NEKStatTracker *)self name];
  v7 = [NSString stringWithFormat:@"%@.failureTimeout", name3];

  environment = [(NEKStatTracker *)self environment];
  tinyStore = [environment tinyStore];

  [(NEKStatTracker *)self mean];
  [tinyStore setDoubleValue:v10 forKey:?];
  [(NEKStatTracker *)self variance];
  [tinyStore setDoubleValue:v5 forKey:?];
  [(NEKStatTracker *)self failTimeout];
  [tinyStore setDoubleValue:v7 forKey:?];
}

- (void)updateSuccess:(double)success
{
  if ([(NEKStatTracker *)self firstTimeEver])
  {
    [(NEKStatTracker *)self setMean:success];
    [(NEKStatTracker *)self setStddev:success * 0.15];
    [(NEKStatTracker *)self setFailTimeout:0.0];

    [(NEKStatTracker *)self setFirstTimeEver:0];
  }

  else
  {
    [(NEKStatTracker *)self mean];
    v6 = v5;
    [(NEKStatTracker *)self mean];
    v8 = success - v7;
    [(NEKStatTracker *)self alpha];
    v10 = v6 + v8 * v9;
    [(NEKStatTracker *)self mean];
    v12 = (success - v11) * (success - v10);
    [(NEKStatTracker *)self variance];
    v14 = v13;
    [(NEKStatTracker *)self variance];
    v16 = v12 - v15;
    [(NEKStatTracker *)self alpha];
    [(NEKStatTracker *)self setVariance:v14 + v16 * v17];
    [(NEKStatTracker *)self setMean:v10];

    [(NEKStatTracker *)self setFailTimeout:0.0];
  }
}

- (void)updateFailure
{
  [(NEKStatTracker *)self failTimeout];
  if (v3 == 0.0)
  {
    [(NEKStatTracker *)self failureScaling];
    v5 = v7;
    [(NEKStatTracker *)self nextTimeout];
  }

  else
  {
    [(NEKStatTracker *)self failTimeout];
    v5 = v4;
    [(NEKStatTracker *)self failureScaling];
  }

  [(NEKStatTracker *)self _clip:v5 * v6];

  [(NEKStatTracker *)self setFailTimeout:?];
}

- (double)nextTimeout
{
  [(NEKStatTracker *)self failTimeout];
  if (v3 == 0.0)
  {
    [(NEKStatTracker *)self minTimeout];
    v6 = v5;
    [(NEKStatTracker *)self mean];
    v8 = v6 + v7;
    [(NEKStatTracker *)self sigmaSpan];
    v10 = v9;
    [(NEKStatTracker *)self stddev];
    v4 = v8 + v10 * v11;
  }

  else
  {
    [(NEKStatTracker *)self failTimeout];
  }

  [(NEKStatTracker *)self _clip:v4];
  return result;
}

- (double)stddev
{
  [(NEKStatTracker *)self variance];
  if (v3 < 0.0)
  {
    [(NEKStatTracker *)self setVariance:1.0];
  }

  [(NEKStatTracker *)self variance];
  return sqrt(v4);
}

- (double)_clip:(double)_clip
{
  [(NEKStatTracker *)self maxTimeout];
  if (v5 < _clip)
  {
    [(NEKStatTracker *)self maxTimeout];
    _clip = v6;
  }

  [(NEKStatTracker *)self minTimeout];
  if (_clip >= v7)
  {
    return _clip;
  }

  [(NEKStatTracker *)self minTimeout];
  return result;
}

@end