@interface ALActivityLog
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALActivityLog

- (void)dealloc
{
  [(ALActivityLog *)self setActivityOverrideMsg:0];
  [(ALActivityLog *)self setBodyMetrics:0];
  [(ALActivityLog *)self setMotionState:0];
  [(ALActivityLog *)self setStepCountData:0];
  [(ALActivityLog *)self setSessionCatherineData:0];
  [(ALActivityLog *)self setJacksonData:0];
  [(ALActivityLog *)self setStrideCalData:0];
  [(ALActivityLog *)self setSedentaryAlarmData:0];
  [(ALActivityLog *)self setAllDayHeartRate:0];
  [(ALActivityLog *)self setFitnessTracking:0];
  [(ALActivityLog *)self setOdometer:0];
  [(ALActivityLog *)self setIdsStatus:0];
  [(ALActivityLog *)self setStairClimbingModel:0];
  [(ALActivityLog *)self setRowingModel:0];
  [(ALActivityLog *)self setExerciseMinute:0];
  [(ALActivityLog *)self setElevation:0];
  [(ALActivityLog *)self setCoarseElevation:0];
  [(ALActivityLog *)self setCalorieData:0];
  [(ALActivityLog *)self setWorkoutEvent:0];
  [(ALActivityLog *)self setNatalieData:0];
  [(ALActivityLog *)self setSedentaryAlarmDataDeprecated:0];
  [(ALActivityLog *)self setStrideCalDataDeprecated:0];
  [(ALActivityLog *)self setCalorieDataDeprecated:0];
  [(ALActivityLog *)self setCoarseElevationDeprecated:0];
  [(ALActivityLog *)self setElevationDeprecated:0];
  [(ALActivityLog *)self setWorkoutEventDeprecated:0];
  v3.receiver = self;
  v3.super_class = ALActivityLog;
  [(ALActivityLog *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALActivityLog;
  return [NSString stringWithFormat:@"%@ %@", [(ALActivityLog *)&v3 description], [(ALActivityLog *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
  activityOverrideMsg = self->_activityOverrideMsg;
  if (activityOverrideMsg)
  {
    [v3 setObject:-[ALActivityOverrideMsg dictionaryRepresentation](activityOverrideMsg forKey:{"dictionaryRepresentation"), @"activityOverrideMsg"}];
  }

  bodyMetrics = self->_bodyMetrics;
  if (bodyMetrics)
  {
    [v3 setObject:-[ALCLBodyMetrics dictionaryRepresentation](bodyMetrics forKey:{"dictionaryRepresentation"), @"bodyMetrics"}];
  }

  motionState = self->_motionState;
  if (motionState)
  {
    [v3 setObject:-[ALMotionState dictionaryRepresentation](motionState forKey:{"dictionaryRepresentation"), @"motionState"}];
  }

  stepCountData = self->_stepCountData;
  if (stepCountData)
  {
    [v3 setObject:-[ALCLStepCountEntry dictionaryRepresentation](stepCountData forKey:{"dictionaryRepresentation"), @"stepCountData"}];
  }

  sessionCatherineData = self->_sessionCatherineData;
  if (sessionCatherineData)
  {
    [v3 setObject:-[ALCLSessionCatherine dictionaryRepresentation](sessionCatherineData forKey:{"dictionaryRepresentation"), @"sessionCatherineData"}];
  }

  jacksonData = self->_jacksonData;
  if (jacksonData)
  {
    [v3 setObject:-[ALCLJacksonData dictionaryRepresentation](jacksonData forKey:{"dictionaryRepresentation"), @"jacksonData"}];
  }

  strideCalData = self->_strideCalData;
  if (strideCalData)
  {
    [v3 setObject:-[ALCLStrideCalEntry dictionaryRepresentation](strideCalData forKey:{"dictionaryRepresentation"), @"strideCalData"}];
  }

  sedentaryAlarmData = self->_sedentaryAlarmData;
  if (sedentaryAlarmData)
  {
    [v3 setObject:-[ALCLSedentaryAlarmData dictionaryRepresentation](sedentaryAlarmData forKey:{"dictionaryRepresentation"), @"sedentaryAlarmData"}];
  }

  allDayHeartRate = self->_allDayHeartRate;
  if (allDayHeartRate)
  {
    [v3 setObject:-[ALCLAllDayHeartRate dictionaryRepresentation](allDayHeartRate forKey:{"dictionaryRepresentation"), @"allDayHeartRate"}];
  }

  fitnessTracking = self->_fitnessTracking;
  if (fitnessTracking)
  {
    [v3 setObject:-[ALCMFitnessTracking dictionaryRepresentation](fitnessTracking forKey:{"dictionaryRepresentation"), @"fitnessTracking"}];
  }

  odometer = self->_odometer;
  if (odometer)
  {
    [v3 setObject:-[ALCLOdometer dictionaryRepresentation](odometer forKey:{"dictionaryRepresentation"), @"odometer"}];
  }

  idsStatus = self->_idsStatus;
  if (idsStatus)
  {
    [v3 setObject:-[ALCLIDSStatus dictionaryRepresentation](idsStatus forKey:{"dictionaryRepresentation"), @"idsStatus"}];
  }

  stairClimbingModel = self->_stairClimbingModel;
  if (stairClimbingModel)
  {
    [v3 setObject:-[ALCLStairClimbingModel dictionaryRepresentation](stairClimbingModel forKey:{"dictionaryRepresentation"), @"stairClimbingModel"}];
  }

  rowingModel = self->_rowingModel;
  if (rowingModel)
  {
    [v3 setObject:-[ALCLRowingModel dictionaryRepresentation](rowingModel forKey:{"dictionaryRepresentation"), @"rowingModel"}];
  }

  exerciseMinute = self->_exerciseMinute;
  if (exerciseMinute)
  {
    [v3 setObject:-[ALCMExerciseMinute dictionaryRepresentation](exerciseMinute forKey:{"dictionaryRepresentation"), @"exerciseMinute"}];
  }

  elevation = self->_elevation;
  if (elevation)
  {
    [v3 setObject:-[ALCMElevation dictionaryRepresentation](elevation forKey:{"dictionaryRepresentation"), @"elevation"}];
  }

  coarseElevation = self->_coarseElevation;
  if (coarseElevation)
  {
    [v3 setObject:-[ALCMCoarseElevation dictionaryRepresentation](coarseElevation forKey:{"dictionaryRepresentation"), @"coarseElevation"}];
  }

  calorieData = self->_calorieData;
  if (calorieData)
  {
    [v3 setObject:-[ALCMCalorieData dictionaryRepresentation](calorieData forKey:{"dictionaryRepresentation"), @"calorieData"}];
  }

  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    [v3 setObject:-[ALCMWorkoutEvent dictionaryRepresentation](workoutEvent forKey:{"dictionaryRepresentation"), @"workoutEvent"}];
  }

  natalieData = self->_natalieData;
  if (natalieData)
  {
    [v3 setObject:-[ALCLNatalieDataDeprecated dictionaryRepresentation](natalieData forKey:{"dictionaryRepresentation"), @"natalieData"}];
  }

  sedentaryAlarmDataDeprecated = self->_sedentaryAlarmDataDeprecated;
  if (sedentaryAlarmDataDeprecated)
  {
    [v3 setObject:-[ALCLSedentaryAlarmDataDeprecated dictionaryRepresentation](sedentaryAlarmDataDeprecated forKey:{"dictionaryRepresentation"), @"sedentaryAlarmDataDeprecated"}];
  }

  strideCalDataDeprecated = self->_strideCalDataDeprecated;
  if (strideCalDataDeprecated)
  {
    [v3 setObject:-[ALCLStrideCalEntryDeprecated dictionaryRepresentation](strideCalDataDeprecated forKey:{"dictionaryRepresentation"), @"strideCalDataDeprecated"}];
  }

  calorieDataDeprecated = self->_calorieDataDeprecated;
  if (calorieDataDeprecated)
  {
    [v3 setObject:-[ALCMCalorieDataDeprecated dictionaryRepresentation](calorieDataDeprecated forKey:{"dictionaryRepresentation"), @"calorieDataDeprecated"}];
  }

  coarseElevationDeprecated = self->_coarseElevationDeprecated;
  if (coarseElevationDeprecated)
  {
    [v3 setObject:-[ALCMCoarseElevationDeprecated dictionaryRepresentation](coarseElevationDeprecated forKey:{"dictionaryRepresentation"), @"coarseElevationDeprecated"}];
  }

  elevationDeprecated = self->_elevationDeprecated;
  if (elevationDeprecated)
  {
    [v3 setObject:-[ALCLElevationDeprecated dictionaryRepresentation](elevationDeprecated forKey:{"dictionaryRepresentation"), @"elevationDeprecated"}];
  }

  workoutEventDeprecated = self->_workoutEventDeprecated;
  if (workoutEventDeprecated)
  {
    [v3 setObject:-[ALCMWorkoutEventDeprecated dictionaryRepresentation](workoutEventDeprecated forKey:{"dictionaryRepresentation"), @"workoutEventDeprecated"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteDoubleField();
  if (self->_activityOverrideMsg)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_bodyMetrics)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_motionState)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_natalieData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sedentaryAlarmDataDeprecated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stepCountData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_strideCalDataDeprecated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sessionCatherineData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_jacksonData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_strideCalData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sedentaryAlarmData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_allDayHeartRate)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_calorieDataDeprecated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_coarseElevationDeprecated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_fitnessTracking)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_odometer)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_elevationDeprecated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_idsStatus)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_stairClimbingModel)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rowingModel)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_exerciseMinute)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_workoutEventDeprecated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_elevation)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_coarseElevation)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_calorieData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_workoutEvent)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = *&self->_timestamp;
  if (self->_activityOverrideMsg)
  {
    [a3 setActivityOverrideMsg:?];
  }

  if (self->_bodyMetrics)
  {
    [a3 setBodyMetrics:?];
  }

  if (self->_motionState)
  {
    [a3 setMotionState:?];
  }

  if (self->_natalieData)
  {
    [a3 setNatalieData:?];
  }

  if (self->_sedentaryAlarmDataDeprecated)
  {
    [a3 setSedentaryAlarmDataDeprecated:?];
  }

  if (self->_stepCountData)
  {
    [a3 setStepCountData:?];
  }

  if (self->_strideCalDataDeprecated)
  {
    [a3 setStrideCalDataDeprecated:?];
  }

  if (self->_sessionCatherineData)
  {
    [a3 setSessionCatherineData:?];
  }

  if (self->_jacksonData)
  {
    [a3 setJacksonData:?];
  }

  if (self->_strideCalData)
  {
    [a3 setStrideCalData:?];
  }

  if (self->_sedentaryAlarmData)
  {
    [a3 setSedentaryAlarmData:?];
  }

  if (self->_allDayHeartRate)
  {
    [a3 setAllDayHeartRate:?];
  }

  if (self->_calorieDataDeprecated)
  {
    [a3 setCalorieDataDeprecated:?];
  }

  if (self->_coarseElevationDeprecated)
  {
    [a3 setCoarseElevationDeprecated:?];
  }

  if (self->_fitnessTracking)
  {
    [a3 setFitnessTracking:?];
  }

  if (self->_odometer)
  {
    [a3 setOdometer:?];
  }

  if (self->_elevationDeprecated)
  {
    [a3 setElevationDeprecated:?];
  }

  if (self->_idsStatus)
  {
    [a3 setIdsStatus:?];
  }

  if (self->_stairClimbingModel)
  {
    [a3 setStairClimbingModel:?];
  }

  if (self->_rowingModel)
  {
    [a3 setRowingModel:?];
  }

  if (self->_exerciseMinute)
  {
    [a3 setExerciseMinute:?];
  }

  if (self->_workoutEventDeprecated)
  {
    [a3 setWorkoutEventDeprecated:?];
  }

  if (self->_elevation)
  {
    [a3 setElevation:?];
  }

  if (self->_coarseElevation)
  {
    [a3 setCoarseElevation:?];
  }

  if (self->_calorieData)
  {
    [a3 setCalorieData:?];
  }

  if (self->_workoutEvent)
  {

    [a3 setWorkoutEvent:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 1) = *&self->_timestamp;

  *(v5 + 2) = [(ALActivityOverrideMsg *)self->_activityOverrideMsg copyWithZone:a3];
  *(v5 + 4) = [(ALCLBodyMetrics *)self->_bodyMetrics copyWithZone:a3];

  *(v5 + 15) = [(ALMotionState *)self->_motionState copyWithZone:a3];
  *(v5 + 16) = [(ALCLNatalieDataDeprecated *)self->_natalieData copyWithZone:a3];

  *(v5 + 20) = [(ALCLSedentaryAlarmDataDeprecated *)self->_sedentaryAlarmDataDeprecated copyWithZone:a3];
  *(v5 + 23) = [(ALCLStepCountEntry *)self->_stepCountData copyWithZone:a3];

  *(v5 + 25) = [(ALCLStrideCalEntryDeprecated *)self->_strideCalDataDeprecated copyWithZone:a3];
  *(v5 + 21) = [(ALCLSessionCatherine *)self->_sessionCatherineData copyWithZone:a3];

  *(v5 + 14) = [(ALCLJacksonData *)self->_jacksonData copyWithZone:a3];
  *(v5 + 24) = [(ALCLStrideCalEntry *)self->_strideCalData copyWithZone:a3];

  *(v5 + 19) = [(ALCLSedentaryAlarmData *)self->_sedentaryAlarmData copyWithZone:a3];
  *(v5 + 3) = [(ALCLAllDayHeartRate *)self->_allDayHeartRate copyWithZone:a3];

  *(v5 + 6) = [(ALCMCalorieDataDeprecated *)self->_calorieDataDeprecated copyWithZone:a3];
  *(v5 + 8) = [(ALCMCoarseElevationDeprecated *)self->_coarseElevationDeprecated copyWithZone:a3];

  *(v5 + 12) = [(ALCMFitnessTracking *)self->_fitnessTracking copyWithZone:a3];
  *(v5 + 17) = [(ALCLOdometer *)self->_odometer copyWithZone:a3];

  *(v5 + 10) = [(ALCLElevationDeprecated *)self->_elevationDeprecated copyWithZone:a3];
  *(v5 + 13) = [(ALCLIDSStatus *)self->_idsStatus copyWithZone:a3];

  *(v5 + 22) = [(ALCLStairClimbingModel *)self->_stairClimbingModel copyWithZone:a3];
  *(v5 + 18) = [(ALCLRowingModel *)self->_rowingModel copyWithZone:a3];

  *(v5 + 11) = [(ALCMExerciseMinute *)self->_exerciseMinute copyWithZone:a3];
  *(v5 + 27) = [(ALCMWorkoutEventDeprecated *)self->_workoutEventDeprecated copyWithZone:a3];

  *(v5 + 9) = [(ALCMElevation *)self->_elevation copyWithZone:a3];
  *(v5 + 7) = [(ALCMCoarseElevation *)self->_coarseElevation copyWithZone:a3];

  *(v5 + 5) = [(ALCMCalorieData *)self->_calorieData copyWithZone:a3];
  *(v5 + 26) = [(ALCMWorkoutEvent *)self->_workoutEvent copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_timestamp == *(a3 + 1))
    {
      activityOverrideMsg = self->_activityOverrideMsg;
      if (!(activityOverrideMsg | *(a3 + 2)) || (v5 = [(ALActivityOverrideMsg *)activityOverrideMsg isEqual:?]) != 0)
      {
        bodyMetrics = self->_bodyMetrics;
        if (!(bodyMetrics | *(a3 + 4)) || (v5 = [(ALCLBodyMetrics *)bodyMetrics isEqual:?]) != 0)
        {
          motionState = self->_motionState;
          if (!(motionState | *(a3 + 15)) || (v5 = [(ALMotionState *)motionState isEqual:?]) != 0)
          {
            natalieData = self->_natalieData;
            if (!(natalieData | *(a3 + 16)) || (v5 = [(ALCLNatalieDataDeprecated *)natalieData isEqual:?]) != 0)
            {
              sedentaryAlarmDataDeprecated = self->_sedentaryAlarmDataDeprecated;
              if (!(sedentaryAlarmDataDeprecated | *(a3 + 20)) || (v5 = [(ALCLSedentaryAlarmDataDeprecated *)sedentaryAlarmDataDeprecated isEqual:?]) != 0)
              {
                stepCountData = self->_stepCountData;
                if (!(stepCountData | *(a3 + 23)) || (v5 = [(ALCLStepCountEntry *)stepCountData isEqual:?]) != 0)
                {
                  strideCalDataDeprecated = self->_strideCalDataDeprecated;
                  if (!(strideCalDataDeprecated | *(a3 + 25)) || (v5 = [(ALCLStrideCalEntryDeprecated *)strideCalDataDeprecated isEqual:?]) != 0)
                  {
                    sessionCatherineData = self->_sessionCatherineData;
                    if (!(sessionCatherineData | *(a3 + 21)) || (v5 = [(ALCLSessionCatherine *)sessionCatherineData isEqual:?]) != 0)
                    {
                      jacksonData = self->_jacksonData;
                      if (!(jacksonData | *(a3 + 14)) || (v5 = [(ALCLJacksonData *)jacksonData isEqual:?]) != 0)
                      {
                        strideCalData = self->_strideCalData;
                        if (!(strideCalData | *(a3 + 24)) || (v5 = [(ALCLStrideCalEntry *)strideCalData isEqual:?]) != 0)
                        {
                          sedentaryAlarmData = self->_sedentaryAlarmData;
                          if (!(sedentaryAlarmData | *(a3 + 19)) || (v5 = [(ALCLSedentaryAlarmData *)sedentaryAlarmData isEqual:?]) != 0)
                          {
                            allDayHeartRate = self->_allDayHeartRate;
                            if (!(allDayHeartRate | *(a3 + 3)) || (v5 = [(ALCLAllDayHeartRate *)allDayHeartRate isEqual:?]) != 0)
                            {
                              calorieDataDeprecated = self->_calorieDataDeprecated;
                              if (!(calorieDataDeprecated | *(a3 + 6)) || (v5 = [(ALCMCalorieDataDeprecated *)calorieDataDeprecated isEqual:?]) != 0)
                              {
                                coarseElevationDeprecated = self->_coarseElevationDeprecated;
                                if (!(coarseElevationDeprecated | *(a3 + 8)) || (v5 = [(ALCMCoarseElevationDeprecated *)coarseElevationDeprecated isEqual:?]) != 0)
                                {
                                  fitnessTracking = self->_fitnessTracking;
                                  if (!(fitnessTracking | *(a3 + 12)) || (v5 = [(ALCMFitnessTracking *)fitnessTracking isEqual:?]) != 0)
                                  {
                                    odometer = self->_odometer;
                                    if (!(odometer | *(a3 + 17)) || (v5 = [(ALCLOdometer *)odometer isEqual:?]) != 0)
                                    {
                                      elevationDeprecated = self->_elevationDeprecated;
                                      if (!(elevationDeprecated | *(a3 + 10)) || (v5 = [(ALCLElevationDeprecated *)elevationDeprecated isEqual:?]) != 0)
                                      {
                                        idsStatus = self->_idsStatus;
                                        if (!(idsStatus | *(a3 + 13)) || (v5 = [(ALCLIDSStatus *)idsStatus isEqual:?]) != 0)
                                        {
                                          stairClimbingModel = self->_stairClimbingModel;
                                          if (!(stairClimbingModel | *(a3 + 22)) || (v5 = [(ALCLStairClimbingModel *)stairClimbingModel isEqual:?]) != 0)
                                          {
                                            rowingModel = self->_rowingModel;
                                            if (!(rowingModel | *(a3 + 18)) || (v5 = [(ALCLRowingModel *)rowingModel isEqual:?]) != 0)
                                            {
                                              exerciseMinute = self->_exerciseMinute;
                                              if (!(exerciseMinute | *(a3 + 11)) || (v5 = [(ALCMExerciseMinute *)exerciseMinute isEqual:?]) != 0)
                                              {
                                                workoutEventDeprecated = self->_workoutEventDeprecated;
                                                if (!(workoutEventDeprecated | *(a3 + 27)) || (v5 = [(ALCMWorkoutEventDeprecated *)workoutEventDeprecated isEqual:?]) != 0)
                                                {
                                                  elevation = self->_elevation;
                                                  if (!(elevation | *(a3 + 9)) || (v5 = [(ALCMElevation *)elevation isEqual:?]) != 0)
                                                  {
                                                    coarseElevation = self->_coarseElevation;
                                                    if (!(coarseElevation | *(a3 + 7)) || (v5 = [(ALCMCoarseElevation *)coarseElevation isEqual:?]) != 0)
                                                    {
                                                      calorieData = self->_calorieData;
                                                      if (!(calorieData | *(a3 + 5)) || (v5 = [(ALCMCalorieData *)calorieData isEqual:?]) != 0)
                                                      {
                                                        workoutEvent = self->_workoutEvent;
                                                        if (workoutEvent | *(a3 + 26))
                                                        {

                                                          LOBYTE(v5) = [(ALCMWorkoutEvent *)workoutEvent isEqual:?];
                                                        }

                                                        else
                                                        {
                                                          LOBYTE(v5) = 1;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v6), v3, v2).i64[0];
  v7 = (timestamp - *v2.i64) * 1.84467441e19;
  v8 = 2654435761u * *v3.i64;
  v9 = v8 + v7;
  if (v7 <= 0.0)
  {
    v9 = 2654435761u * *v3.i64;
  }

  v10 = v8 - fabs(v7);
  if (v7 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [(ALActivityOverrideMsg *)self->_activityOverrideMsg hash];
  v13 = v12 ^ [(ALCLBodyMetrics *)self->_bodyMetrics hash];
  v14 = v13 ^ [(ALMotionState *)self->_motionState hash];
  v15 = v14 ^ [(ALCLNatalieDataDeprecated *)self->_natalieData hash];
  v16 = v15 ^ [(ALCLSedentaryAlarmDataDeprecated *)self->_sedentaryAlarmDataDeprecated hash];
  v17 = v16 ^ [(ALCLStepCountEntry *)self->_stepCountData hash];
  v18 = v17 ^ [(ALCLStrideCalEntryDeprecated *)self->_strideCalDataDeprecated hash];
  v19 = v18 ^ [(ALCLSessionCatherine *)self->_sessionCatherineData hash];
  v20 = v19 ^ [(ALCLJacksonData *)self->_jacksonData hash];
  v21 = v20 ^ [(ALCLStrideCalEntry *)self->_strideCalData hash];
  v22 = v21 ^ [(ALCLSedentaryAlarmData *)self->_sedentaryAlarmData hash];
  v23 = v22 ^ [(ALCLAllDayHeartRate *)self->_allDayHeartRate hash];
  v24 = v23 ^ [(ALCMCalorieDataDeprecated *)self->_calorieDataDeprecated hash];
  v25 = v24 ^ [(ALCMCoarseElevationDeprecated *)self->_coarseElevationDeprecated hash];
  v26 = v25 ^ [(ALCMFitnessTracking *)self->_fitnessTracking hash];
  v27 = v26 ^ [(ALCLOdometer *)self->_odometer hash];
  v28 = v27 ^ [(ALCLElevationDeprecated *)self->_elevationDeprecated hash];
  v29 = v28 ^ [(ALCLIDSStatus *)self->_idsStatus hash];
  v30 = v29 ^ [(ALCLStairClimbingModel *)self->_stairClimbingModel hash];
  v31 = v30 ^ [(ALCLRowingModel *)self->_rowingModel hash];
  v32 = v31 ^ [(ALCMExerciseMinute *)self->_exerciseMinute hash];
  v33 = v32 ^ [(ALCMWorkoutEventDeprecated *)self->_workoutEventDeprecated hash];
  v34 = v33 ^ [(ALCMElevation *)self->_elevation hash];
  v35 = v34 ^ [(ALCMCoarseElevation *)self->_coarseElevation hash];
  v36 = v35 ^ [(ALCMCalorieData *)self->_calorieData hash];
  return v36 ^ [(ALCMWorkoutEvent *)self->_workoutEvent hash]^ v11;
}

- (void)mergeFrom:(id)a3
{
  self->_timestamp = *(a3 + 1);
  activityOverrideMsg = self->_activityOverrideMsg;
  v6 = *(a3 + 2);
  if (activityOverrideMsg)
  {
    if (v6)
    {
      [(ALActivityOverrideMsg *)activityOverrideMsg mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ALActivityLog *)self setActivityOverrideMsg:?];
  }

  bodyMetrics = self->_bodyMetrics;
  v8 = *(a3 + 4);
  if (bodyMetrics)
  {
    if (v8)
    {
      [(ALCLBodyMetrics *)bodyMetrics mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ALActivityLog *)self setBodyMetrics:?];
  }

  motionState = self->_motionState;
  v10 = *(a3 + 15);
  if (motionState)
  {
    if (v10)
    {
      [(ALMotionState *)motionState mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(ALActivityLog *)self setMotionState:?];
  }

  natalieData = self->_natalieData;
  v12 = *(a3 + 16);
  if (natalieData)
  {
    if (v12)
    {
      [(ALCLNatalieDataDeprecated *)natalieData mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ALActivityLog *)self setNatalieData:?];
  }

  sedentaryAlarmDataDeprecated = self->_sedentaryAlarmDataDeprecated;
  v14 = *(a3 + 20);
  if (sedentaryAlarmDataDeprecated)
  {
    if (v14)
    {
      [(ALCLSedentaryAlarmDataDeprecated *)sedentaryAlarmDataDeprecated mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(ALActivityLog *)self setSedentaryAlarmDataDeprecated:?];
  }

  stepCountData = self->_stepCountData;
  v16 = *(a3 + 23);
  if (stepCountData)
  {
    if (v16)
    {
      [(ALCLStepCountEntry *)stepCountData mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(ALActivityLog *)self setStepCountData:?];
  }

  strideCalDataDeprecated = self->_strideCalDataDeprecated;
  v18 = *(a3 + 25);
  if (strideCalDataDeprecated)
  {
    if (v18)
    {
      [(ALCLStrideCalEntryDeprecated *)strideCalDataDeprecated mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(ALActivityLog *)self setStrideCalDataDeprecated:?];
  }

  sessionCatherineData = self->_sessionCatherineData;
  v20 = *(a3 + 21);
  if (sessionCatherineData)
  {
    if (v20)
    {
      [(ALCLSessionCatherine *)sessionCatherineData mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(ALActivityLog *)self setSessionCatherineData:?];
  }

  jacksonData = self->_jacksonData;
  v22 = *(a3 + 14);
  if (jacksonData)
  {
    if (v22)
    {
      [(ALCLJacksonData *)jacksonData mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(ALActivityLog *)self setJacksonData:?];
  }

  strideCalData = self->_strideCalData;
  v24 = *(a3 + 24);
  if (strideCalData)
  {
    if (v24)
    {
      [(ALCLStrideCalEntry *)strideCalData mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(ALActivityLog *)self setStrideCalData:?];
  }

  sedentaryAlarmData = self->_sedentaryAlarmData;
  v26 = *(a3 + 19);
  if (sedentaryAlarmData)
  {
    if (v26)
    {
      [(ALCLSedentaryAlarmData *)sedentaryAlarmData mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(ALActivityLog *)self setSedentaryAlarmData:?];
  }

  allDayHeartRate = self->_allDayHeartRate;
  v28 = *(a3 + 3);
  if (allDayHeartRate)
  {
    if (v28)
    {
      [(ALCLAllDayHeartRate *)allDayHeartRate mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(ALActivityLog *)self setAllDayHeartRate:?];
  }

  calorieDataDeprecated = self->_calorieDataDeprecated;
  v30 = *(a3 + 6);
  if (calorieDataDeprecated)
  {
    if (v30)
    {
      [(ALCMCalorieDataDeprecated *)calorieDataDeprecated mergeFrom:?];
    }
  }

  else if (v30)
  {
    [(ALActivityLog *)self setCalorieDataDeprecated:?];
  }

  coarseElevationDeprecated = self->_coarseElevationDeprecated;
  v32 = *(a3 + 8);
  if (coarseElevationDeprecated)
  {
    if (v32)
    {
      [(ALCMCoarseElevationDeprecated *)coarseElevationDeprecated mergeFrom:?];
    }
  }

  else if (v32)
  {
    [(ALActivityLog *)self setCoarseElevationDeprecated:?];
  }

  fitnessTracking = self->_fitnessTracking;
  v34 = *(a3 + 12);
  if (fitnessTracking)
  {
    if (v34)
    {
      [(ALCMFitnessTracking *)fitnessTracking mergeFrom:?];
    }
  }

  else if (v34)
  {
    [(ALActivityLog *)self setFitnessTracking:?];
  }

  odometer = self->_odometer;
  v36 = *(a3 + 17);
  if (odometer)
  {
    if (v36)
    {
      [(ALCLOdometer *)odometer mergeFrom:?];
    }
  }

  else if (v36)
  {
    [(ALActivityLog *)self setOdometer:?];
  }

  elevationDeprecated = self->_elevationDeprecated;
  v38 = *(a3 + 10);
  if (elevationDeprecated)
  {
    if (v38)
    {
      [(ALCLElevationDeprecated *)elevationDeprecated mergeFrom:?];
    }
  }

  else if (v38)
  {
    [(ALActivityLog *)self setElevationDeprecated:?];
  }

  idsStatus = self->_idsStatus;
  v40 = *(a3 + 13);
  if (idsStatus)
  {
    if (v40)
    {
      [(ALCLIDSStatus *)idsStatus mergeFrom:?];
    }
  }

  else if (v40)
  {
    [(ALActivityLog *)self setIdsStatus:?];
  }

  stairClimbingModel = self->_stairClimbingModel;
  v42 = *(a3 + 22);
  if (stairClimbingModel)
  {
    if (v42)
    {
      [(ALCLStairClimbingModel *)stairClimbingModel mergeFrom:?];
    }
  }

  else if (v42)
  {
    [(ALActivityLog *)self setStairClimbingModel:?];
  }

  rowingModel = self->_rowingModel;
  v44 = *(a3 + 18);
  if (rowingModel)
  {
    if (v44)
    {
      [(ALCLRowingModel *)rowingModel mergeFrom:?];
    }
  }

  else if (v44)
  {
    [(ALActivityLog *)self setRowingModel:?];
  }

  exerciseMinute = self->_exerciseMinute;
  v46 = *(a3 + 11);
  if (exerciseMinute)
  {
    if (v46)
    {
      [(ALCMExerciseMinute *)exerciseMinute mergeFrom:?];
    }
  }

  else if (v46)
  {
    [(ALActivityLog *)self setExerciseMinute:?];
  }

  workoutEventDeprecated = self->_workoutEventDeprecated;
  v48 = *(a3 + 27);
  if (workoutEventDeprecated)
  {
    if (v48)
    {
      [(ALCMWorkoutEventDeprecated *)workoutEventDeprecated mergeFrom:?];
    }
  }

  else if (v48)
  {
    [(ALActivityLog *)self setWorkoutEventDeprecated:?];
  }

  elevation = self->_elevation;
  v50 = *(a3 + 9);
  if (elevation)
  {
    if (v50)
    {
      [(ALCMElevation *)elevation mergeFrom:?];
    }
  }

  else if (v50)
  {
    [(ALActivityLog *)self setElevation:?];
  }

  coarseElevation = self->_coarseElevation;
  v52 = *(a3 + 7);
  if (coarseElevation)
  {
    if (v52)
    {
      [(ALCMCoarseElevation *)coarseElevation mergeFrom:?];
    }
  }

  else if (v52)
  {
    [(ALActivityLog *)self setCoarseElevation:?];
  }

  calorieData = self->_calorieData;
  v54 = *(a3 + 5);
  if (calorieData)
  {
    if (v54)
    {
      [(ALCMCalorieData *)calorieData mergeFrom:?];
    }
  }

  else if (v54)
  {
    [(ALActivityLog *)self setCalorieData:?];
  }

  workoutEvent = self->_workoutEvent;
  v56 = *(a3 + 26);
  if (workoutEvent)
  {
    if (v56)
    {

      [(ALCMWorkoutEvent *)workoutEvent mergeFrom:?];
    }
  }

  else if (v56)
  {

    [(ALActivityLog *)self setWorkoutEvent:?];
  }
}

@end