@interface _DASPluginPrediction
- (_DASPluginPrediction)initWithDuration:(double)a3 withConfidence:(double)a4;
- (unint64_t)getpredictionWindowID;
@end

@implementation _DASPluginPrediction

- (_DASPluginPrediction)initWithDuration:(double)a3 withConfidence:(double)a4
{
  v11.receiver = self;
  v11.super_class = _DASPluginPrediction;
  v6 = [(_DASPluginPrediction *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_duration = a3;
    v6->_confidence = a4;
    v8 = +[NSDate now];
    predictionDate = v7->_predictionDate;
    v7->_predictionDate = v8;

    v7->_predictionWindowID = [(_DASPluginPrediction *)v7 getpredictionWindowID];
  }

  return v7;
}

- (unint64_t)getpredictionWindowID
{
  v2 = [(_DASPluginPrediction *)self predictionDate];
  v3 = [v2 hash];

  return v3 & 0x7FFFFFFF;
}

@end