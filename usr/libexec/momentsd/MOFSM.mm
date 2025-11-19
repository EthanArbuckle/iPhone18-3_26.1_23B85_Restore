@interface MOFSM
- (BOOL)compareRegionCode:(id)a3 regionName:(id)a4 otherRegionCode:(id)a5 otherRegionName:(id)a6;
- (BOOL)stayAtTheSameDestinationWithPrevDestinationCode:(id)a3 prevDestinationName:(id)a4 newDestinationCode:(id)a5 newDestinationName:(id)a6;
- (MOFSM)initWithCoder:(id)a3;
- (MOFSM)initWithFSMMO:(id)a3;
- (MOFSM)initWithName:(id)a3 mode:(unint64_t)a4 state:(unint64_t)a5 subState:(id)a6 timeRangeStartDate:(id)a7 timeRangeEndDate:(id)a8 lastProcessedDate:(id)a9 metaData:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)destination;
- (id)destinationFromVisitEvent:(id)a3 state:(unint64_t)a4;
- (id)processVisitEvent:(id)a3;
- (id)referenceCountry;
- (id)referenceCountryCode;
- (id)referenceState;
- (id)referenceStateCode;
- (id)stringFromState:(unint64_t)a3;
- (id)subStateFromVisitEvent:(id)a3 state:(unint64_t)a4;
- (unint64_t)tripStateFromVisitEvent:(id)a3;
- (void)cleanUpBeforeUpdate;
- (void)encodeWithCoder:(id)a3;
- (void)setDestination:(id)a3;
- (void)setReferenceDataWithCountry:(id)a3 countryCode:(id)a4 state:(id)a5 stateCode:(id)a6;
@end

@implementation MOFSM

- (id)referenceState
{
  v3 = [(MOFSM *)self metaData];

  if (v3)
  {
    v4 = [(MOFSM *)self metaData];
    v5 = [v4 objectForKey:@"state"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)referenceStateCode
{
  v3 = [(MOFSM *)self metaData];

  if (v3)
  {
    v4 = [(MOFSM *)self metaData];
    v5 = [v4 objectForKey:@"stateCode"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)referenceCountry
{
  v3 = [(MOFSM *)self metaData];

  if (v3)
  {
    v4 = [(MOFSM *)self metaData];
    v5 = [v4 objectForKey:@"country"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)referenceCountryCode
{
  v3 = [(MOFSM *)self metaData];

  if (v3)
  {
    v4 = [(MOFSM *)self metaData];
    v5 = [v4 objectForKey:@"countryCode"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setReferenceDataWithCountry:(id)a3 countryCode:(id)a4 state:(id)a5 stateCode:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MOFSM *)self metaData];

  if (v13)
  {
    v14 = [(MOFSM *)self metaData];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  if (v16 && v10)
  {
    [v14 setObject:v16 forKey:@"country"];
    [v15 setObject:v10 forKey:@"countryCode"];
  }

  if (v11 && v12)
  {
    [v15 setObject:v11 forKey:@"state"];
    [v15 setObject:v12 forKey:@"stateCode"];
  }

  else if ([(MOFSM *)self mode]== 2)
  {
    [(MOFSM *)self setMode:1];
  }

  if (![v15 count])
  {
    [(MOFSM *)self setMode:0];
  }

  [(MOFSM *)self setMetaData:v15];
}

- (id)destination
{
  v3 = [(MOFSM *)self metaData];

  if (v3)
  {
    v4 = [(MOFSM *)self metaData];
    v5 = [v4 objectForKeyedSubscript:@"destination"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDestination:(id)a3
{
  v4 = a3;
  v5 = [(MOFSM *)self metaData];

  if (v5)
  {
    v6 = [(MOFSM *)self metaData];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  [v6 setObject:v4 forKeyedSubscript:@"destination"];

  [(MOFSM *)self setMetaData:v7];
}

- (id)processVisitEvent:(id)a3
{
  v4 = a3;
  if ([v4 category] != 1)
  {
    goto LABEL_11;
  }

  v5 = [v4 startDate];
  v6 = [(MOFSM *)self lastProcessedDate];
  v7 = [v5 isBeforeDate:v6];

  if ((v7 & 1) != 0 || (v8 = [(MOFSM *)self tripStateFromVisitEvent:v4]) == 0)
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [(MOFSM *)self subStateFromVisitEvent:v4 state:v8];
  v11 = [(MOFSM *)self destinationFromVisitEvent:v4 state:v9];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [(MOFSM *)self stringFromState:[(MOFSM *)self state]];
    v16 = [(MOFSM *)self substate];
    [v16 mask];
    v17 = v37 = v11;
    v18 = [(MOFSM *)self stringFromState:v9];
    *buf = 138413570;
    v39 = v14;
    v40 = 2112;
    v41 = v15;
    v42 = 2112;
    v43 = v17;
    v44 = 2112;
    v45 = v18;
    v46 = 2112;
    v47 = v10;
    v48 = 2112;
    v49 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: FSM, prevState, %@, prevSubState, %@, newState, %@, newSubState, %@, event, %@", buf, 0x3Eu);

    v11 = v37;
  }

  v19 = [(MOFSM *)self state];
  if (v19 - 2 >= 2)
  {
    if (v19 != 1)
    {
      v20 = 0;
      if (v19 || v9 != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      goto LABEL_24;
    }

LABEL_25:
    v20 = 0;
    if ([(MOFSM *)self state]!= v9)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v9 != 1 && [(MOFSM *)self state]== v9)
  {
    if ([(MOFSM *)self state]!= 2 && [(MOFSM *)self state]!= 3)
    {
      goto LABEL_25;
    }

    v22 = [(MOFSM *)self substate];
    v23 = [(MOFSM *)self destination];
    v24 = [(MOFSM *)self stayAtTheSameDestinationWithPrevDestinationCode:v22 prevDestinationName:v23 newDestinationCode:v10 newDestinationName:v11];

    if (v24)
    {
      goto LABEL_25;
    }
  }

  v25 = [(MOFSM *)self destination];

  if (v25)
  {
    if ([(MOFSM *)self state]== 3)
    {
      v26 = 3;
    }

    else if ([(MOFSM *)self state]== 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    v27 = [MOTripPlan alloc];
    v28 = [(MOFSM *)self destination];
    v29 = [(MOFSM *)self timeRangeStartDate];
    v30 = [(MOFSM *)self timeRangeEndDate];
    v20 = [(MOTripPlan *)v27 initWithDestination:v28 destinationType:v26 startDate:v29 endDate:v30];

    goto LABEL_31;
  }

LABEL_24:
  v20 = 0;
LABEL_31:
  [(MOFSM *)self setState:v9];
  [(MOFSM *)self setSubstate:v10];
  [(MOFSM *)self setDestination:v11];
  v31 = [v4 startDate];
  [(MOFSM *)self setTimeRangeStartDate:v31];

LABEL_32:
  v32 = [v4 endDate];
  [(MOFSM *)self setTimeRangeEndDate:v32];

LABEL_33:
  v33 = [v4 endDate];
  [(MOFSM *)self setLastProcessedDate:v33];

  v34 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    *buf = 138412802;
    v39 = v36;
    v40 = 2112;
    v41 = self;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@: FSM, %@, completed trip, %@", buf, 0x20u);
  }

LABEL_12:

  return v20;
}

- (void)cleanUpBeforeUpdate
{
  v3 = [(MOFSM *)self metaData];

  if (v3)
  {
    v4 = [(MOFSM *)self metaData];
    v6[0] = @"state";
    v6[1] = @"stateCode";
    v6[2] = @"country";
    v6[3] = @"countryCode";
    v5 = [NSArray arrayWithObjects:v6 count:4];
    [v4 removeObjectsForKeys:v5];
  }
}

- (BOOL)stayAtTheSameDestinationWithPrevDestinationCode:(id)a3 prevDestinationName:(id)a4 newDestinationCode:(id)a5 newDestinationName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = (v10 != 0) == (v12 != 0) && (!(v10 | v12) || v10 && v12 && [(MOFSM *)self compareRegionCode:v10 regionName:v11 otherRegionCode:v12 otherRegionName:v13]);

  return v14;
}

- (BOOL)compareRegionCode:(id)a3 regionName:(id)a4 otherRegionCode:(id)a5 otherRegionName:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!(v10 | v12))
  {
    v10 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  v13 = v12;
  if (v10)
  {
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = v9;
    if (v13)
    {
      goto LABEL_4;
    }
  }

  v13 = v11;
LABEL_4:
  if (([v10 isEqualToString:v13] & 1) == 0)
  {
LABEL_7:
    v14 = [v9 isEqualToString:v11];
    goto LABEL_8;
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (unint64_t)tripStateFromVisitEvent:(id)a3
{
  v4 = a3;
  if (-[MOFSM mode](self, "mode") && [v4 category] == 1)
  {
    if ([(MOFSM *)self mode]== 2)
    {
      v5 = [v4 routineEvent];
      v6 = [v5 address];
      v7 = [MOFSM stateFromAddress:v6];

      v8 = [v4 routineEvent];
      v9 = [v8 address];
      v10 = [MOFSM stateCodeFromAddress:v9];
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

    v12 = [v4 routineEvent];
    v13 = [v12 address];
    v14 = [MOFSM countryCodeFromAddress:v13];

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v25 = 138412802;
      v26 = v7;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "tripStateFromVisitEvent : state : %@ , stateCode : %@, countryCode : %@", &v25, 0x20u);
    }

    if ([(MOFSM *)self mode]== 2)
    {
      if (v14)
      {
        v11 = [(MOFSM *)self referenceCountryCode];

        if (v11)
        {
          v16 = [(MOFSM *)self referenceCountryCode];
          v17 = [v16 isEqualToString:v14];

          if (v17)
          {
            v18 = [(MOFSM *)self referenceStateCode];
            v19 = v18;
            if (v18 && v10)
            {
              v20 = [(MOFSM *)self referenceStateCode];
              v21 = [v20 isEqualToString:v10];

              if (v21)
              {
                v11 = 1;
              }

              else
              {
                v11 = 2;
              }
            }

            else
            {

              v11 = 1;
            }
          }

          else
          {
            v11 = 3;
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      if ([(MOFSM *)self mode]== 1)
      {
        if (v14)
        {
          v11 = [(MOFSM *)self referenceCountryCode];

          if (v11)
          {
            v22 = [(MOFSM *)self referenceCountryCode];
            v23 = [v22 isEqualToString:v14];

            if (v23)
            {
              v11 = 1;
            }

            else
            {
              v11 = 3;
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)subStateFromVisitEvent:(id)a3 state:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  switch(a4)
  {
    case 3uLL:
      v7 = [v5 routineEvent];
      v8 = [v7 address];
      v9 = [MOFSM countryCodeFromAddress:v8];
      goto LABEL_7;
    case 2uLL:
      v7 = [v5 routineEvent];
      v8 = [v7 address];
      v9 = [MOFSM stateCodeFromAddress:v8];
      goto LABEL_7;
    case 1uLL:
      v7 = [v5 routineEvent];
      v8 = [v7 address];
      v9 = [MOFSM cityFromAddress:v8];
LABEL_7:
      v10 = v9;

      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)destinationFromVisitEvent:(id)a3 state:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  switch(a4)
  {
    case 3uLL:
      v7 = [v5 routineEvent];
      v8 = [v7 address];
      v9 = [MOFSM countryFromAddress:v8];
      goto LABEL_7;
    case 2uLL:
      v7 = [v5 routineEvent];
      v8 = [v7 address];
      v9 = [MOFSM stateFromAddress:v8];
      goto LABEL_7;
    case 1uLL:
      v7 = [v5 routineEvent];
      v8 = [v7 address];
      v9 = [MOFSM cityFromAddress:v8];
LABEL_7:
      v10 = v9;

      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)stringFromState:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_100336E88[a3 - 1];
  }
}

- (MOFSM)initWithFSMMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v15 = [v4 name];
    v5 = [v4 mode];
    v6 = [v4 state];
    v7 = [v4 substate];
    v8 = [v4 timeRangeStartDate];
    v9 = [v4 timeRangeEndDate];
    v10 = [v4 lastProcessedDate];
    v11 = [v4 metaData];

    v12 = [MODictionaryEncoder decodeToDictionary:v11];
    self = [(MOFSM *)self initWithName:v15 mode:v5 state:v6 subState:v7 timeRangeStartDate:v8 timeRangeEndDate:v9 lastProcessedDate:v10 metaData:v12];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MOFSM)initWithName:(id)a3 mode:(unint64_t)a4 state:(unint64_t)a5 subState:(id)a6 timeRangeStartDate:(id)a7 timeRangeEndDate:(id)a8 lastProcessedDate:(id)a9 metaData:(id)a10
{
  v15 = a3;
  v27 = a6;
  v26 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = MOFSM;
  v19 = [(MOFSM *)&v28 init];
  if (v19)
  {
    v20 = [v15 copy];
    name = v19->_name;
    v19->_name = v20;

    v19->_mode = a4;
    v19->_state = a5;
    objc_storeStrong(&v19->_substate, a6);
    objc_storeStrong(&v19->_timeRangeStartDate, a7);
    objc_storeStrong(&v19->_timeRangeEndDate, a8);
    objc_storeStrong(&v19->_lastProcessedDate, a9);
    v22 = [v18 mutableCopy];
    metaData = v19->_metaData;
    v19->_metaData = v22;
  }

  return v19;
}

- (id)description
{
  v3 = [(MOFSM *)self name];
  v4 = [(MOFSM *)self mode];
  v5 = [(MOFSM *)self state];
  v6 = [(MOFSM *)self substate];
  v7 = [(MOFSM *)self timeRangeStartDate];
  v8 = [(MOFSM *)self timeRangeEndDate];
  v9 = [(MOFSM *)self lastProcessedDate];
  v10 = [NSString stringWithFormat:@"<MOFSM name, %@, mode, %lu, state, %lu, substate, %@, startDate, %@, endDate, %@, lastProcessedDate, %@>", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeObject:self->_substate forKey:@"substate"];
  [v5 encodeObject:self->_timeRangeStartDate forKey:@"timeRangeStartDate"];
  [v5 encodeObject:self->_timeRangeEndDate forKey:@"timeRangeEndDate"];
  [v5 encodeObject:self->_lastProcessedDate forKey:@"lastProcessedDate"];
  [v5 encodeObject:self->_metaData forKey:@"timeRangeMetaData"];
}

- (MOFSM)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeIntegerForKey:@"mode"];
  v7 = [v4 decodeIntegerForKey:@"state"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"substate"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeStartDate"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeEndDate"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastProcessedDate"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeMetaData"];

  v13 = [(MOFSM *)self initWithName:v5 mode:v6 state:v7 subState:v8 timeRangeStartDate:v9 timeRangeEndDate:v10 lastProcessedDate:v11 metaData:v12];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [MOFSM alloc];
  v6 = [(MOFSM *)self name];
  v7 = [(MOFSM *)self mode];
  v8 = [(MOFSM *)self state];
  v9 = [(MOFSM *)self substate];
  v10 = [(MOFSM *)self timeRangeStartDate];
  v11 = [(MOFSM *)self timeRangeEndDate];
  v12 = [(MOFSM *)self lastProcessedDate];
  v13 = [(MOFSM *)self metaData];
  v14 = [v13 copyWithZone:a3];
  v15 = [(MOFSM *)v5 initWithName:v6 mode:v7 state:v8 subState:v9 timeRangeStartDate:v10 timeRangeEndDate:v11 lastProcessedDate:v12 metaData:v14];

  return v15;
}

@end