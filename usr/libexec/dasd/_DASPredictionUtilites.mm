@interface _DASPredictionUtilites
+ (id)computeAccuraciesFromSortedPredictions:(id)predictions andObservations:(id)observations withEqualityOperator:(id)operator;
@end

@implementation _DASPredictionUtilites

+ (id)computeAccuraciesFromSortedPredictions:(id)predictions andObservations:(id)observations withEqualityOperator:(id)operator
{
  predictionsCopy = predictions;
  observationsCopy = observations;
  operatorCopy = operator;
  v10 = objc_alloc_init(_DASPredictionAccuracy);
  if ([predictionsCopy count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = observationsCopy;
    obj = observationsCopy;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = v11;
    v13 = *v25;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100020960;
        v22[3] = &unk_1001B59A8;
        v16 = operatorCopy;
        v22[4] = v15;
        v23 = v16;
        v17 = [predictionsCopy indexOfObjectPassingTest:v22];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!v17)
          {
            [(_DASPredictionAccuracy *)v10 setTop1Hits:[(_DASPredictionAccuracy *)v10 top1Hits]+ 1];
LABEL_11:
            [(_DASPredictionAccuracy *)v10 setTop3Hits:[(_DASPredictionAccuracy *)v10 top3Hits]+ 1];
LABEL_12:
            [(_DASPredictionAccuracy *)v10 setTop5Hits:[(_DASPredictionAccuracy *)v10 top5Hits]+ 1];
LABEL_13:
            [(_DASPredictionAccuracy *)v10 setTop10Hits:[(_DASPredictionAccuracy *)v10 top10Hits]+ 1];
            goto LABEL_14;
          }

          if (v17 <= 2)
          {
            goto LABEL_11;
          }

          if (v17 <= 4)
          {
            goto LABEL_12;
          }

          if (v17 <= 9)
          {
            goto LABEL_13;
          }
        }

LABEL_14:

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v18 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v12 = v18;
      if (!v18)
      {
LABEL_20:

        [(_DASPredictionAccuracy *)v10 setTotalPredictionIntervals:[(_DASPredictionAccuracy *)v10 totalPredictionIntervals]+ 1];
        observationsCopy = v20;
        break;
      }
    }
  }

  return v10;
}

@end