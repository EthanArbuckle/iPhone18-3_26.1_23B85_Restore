@interface ProgressTracker
- (double)getProgress;
- (double)increaseCountForPhase:(int)a3;
@end

@implementation ProgressTracker

- (double)getProgress
{
  v3 = *[(ProgressTracker *)self phaseTracker];
  v4 = 0.0;
  v5 = 0.0;
  if (v3 >= 1.0)
  {
    v6 = [(ProgressTracker *)self phaseTracker][4];
    v3 = v6 / *[(ProgressTracker *)self phaseTracker];
    v5 = v3 * 25.0;
  }

  if ([(ProgressTracker *)self phaseTracker][1] >= 1.0)
  {
    v7 = [(ProgressTracker *)self phaseTracker][5];
    v4 = v7 / [(ProgressTracker *)self phaseTracker][1] * 25.0;
  }

  v8 = 0.0;
  v9 = 0.0;
  if ([(ProgressTracker *)self phaseTracker][2] >= 1.0)
  {
    v10 = [(ProgressTracker *)self phaseTracker][6];
    v9 = v10 / [(ProgressTracker *)self phaseTracker][2] * 25.0;
  }

  if ([(ProgressTracker *)self phaseTracker][3] >= 1.0)
  {
    v11 = [(ProgressTracker *)self phaseTracker][7];
    v8 = v11 / [(ProgressTracker *)self phaseTracker][3] * 25.0;
  }

  return v5 + v4 + v9 + v8;
}

- (double)increaseCountForPhase:(int)a3
{
  v5 = [(ProgressTracker *)self phaseTracker];
  v6 = 8 * a3 + 32;
  *(v5 + v6) = *(v5 + v6) + 1.0;
  return *([(ProgressTracker *)self phaseTracker]+ v6);
}

@end