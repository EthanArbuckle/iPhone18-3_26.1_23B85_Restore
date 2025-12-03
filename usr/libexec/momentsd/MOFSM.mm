@interface MOFSM
- (BOOL)compareRegionCode:(id)code regionName:(id)name otherRegionCode:(id)regionCode otherRegionName:(id)regionName;
- (BOOL)stayAtTheSameDestinationWithPrevDestinationCode:(id)code prevDestinationName:(id)name newDestinationCode:(id)destinationCode newDestinationName:(id)destinationName;
- (MOFSM)initWithCoder:(id)coder;
- (MOFSM)initWithFSMMO:(id)o;
- (MOFSM)initWithName:(id)name mode:(unint64_t)mode state:(unint64_t)state subState:(id)subState timeRangeStartDate:(id)date timeRangeEndDate:(id)endDate lastProcessedDate:(id)processedDate metaData:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)destination;
- (id)destinationFromVisitEvent:(id)event state:(unint64_t)state;
- (id)processVisitEvent:(id)event;
- (id)referenceCountry;
- (id)referenceCountryCode;
- (id)referenceState;
- (id)referenceStateCode;
- (id)stringFromState:(unint64_t)state;
- (id)subStateFromVisitEvent:(id)event state:(unint64_t)state;
- (unint64_t)tripStateFromVisitEvent:(id)event;
- (void)cleanUpBeforeUpdate;
- (void)encodeWithCoder:(id)coder;
- (void)setDestination:(id)destination;
- (void)setReferenceDataWithCountry:(id)country countryCode:(id)code state:(id)state stateCode:(id)stateCode;
@end

@implementation MOFSM

- (id)referenceState
{
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
    v5 = [metaData2 objectForKey:@"state"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)referenceStateCode
{
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
    v5 = [metaData2 objectForKey:@"stateCode"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)referenceCountry
{
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
    v5 = [metaData2 objectForKey:@"country"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)referenceCountryCode
{
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
    v5 = [metaData2 objectForKey:@"countryCode"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setReferenceDataWithCountry:(id)country countryCode:(id)code state:(id)state stateCode:(id)stateCode
{
  countryCopy = country;
  codeCopy = code;
  stateCopy = state;
  stateCodeCopy = stateCode;
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
  }

  else
  {
    metaData2 = objc_opt_new();
  }

  v15 = metaData2;
  if (countryCopy && codeCopy)
  {
    [metaData2 setObject:countryCopy forKey:@"country"];
    [v15 setObject:codeCopy forKey:@"countryCode"];
  }

  if (stateCopy && stateCodeCopy)
  {
    [v15 setObject:stateCopy forKey:@"state"];
    [v15 setObject:stateCodeCopy forKey:@"stateCode"];
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
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
    v5 = [metaData2 objectForKeyedSubscript:@"destination"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDestination:(id)destination
{
  destinationCopy = destination;
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
  }

  else
  {
    metaData2 = objc_opt_new();
  }

  v7 = metaData2;
  [metaData2 setObject:destinationCopy forKeyedSubscript:@"destination"];

  [(MOFSM *)self setMetaData:v7];
}

- (id)processVisitEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy category] != 1)
  {
    goto LABEL_11;
  }

  startDate = [eventCopy startDate];
  lastProcessedDate = [(MOFSM *)self lastProcessedDate];
  v7 = [startDate isBeforeDate:lastProcessedDate];

  if ((v7 & 1) != 0 || (v8 = [(MOFSM *)self tripStateFromVisitEvent:eventCopy]) == 0)
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [(MOFSM *)self subStateFromVisitEvent:eventCopy state:v8];
  v11 = [(MOFSM *)self destinationFromVisitEvent:eventCopy state:v9];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [(MOFSM *)self stringFromState:[(MOFSM *)self state]];
    substate = [(MOFSM *)self substate];
    [substate mask];
    v17 = v37 = v11;
    v18 = [(MOFSM *)self stringFromState:v9];
    *buf = 138413570;
    v39 = v14;
    v40 = 2112;
    selfCopy = v15;
    v42 = 2112;
    v43 = v17;
    v44 = 2112;
    v45 = v18;
    v46 = 2112;
    v47 = v10;
    v48 = 2112;
    v49 = eventCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: FSM, prevState, %@, prevSubState, %@, newState, %@, newSubState, %@, event, %@", buf, 0x3Eu);

    v11 = v37;
  }

  state = [(MOFSM *)self state];
  if (state - 2 >= 2)
  {
    if (state != 1)
    {
      v20 = 0;
      if (state || v9 != 1)
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

    substate2 = [(MOFSM *)self substate];
    destination = [(MOFSM *)self destination];
    v24 = [(MOFSM *)self stayAtTheSameDestinationWithPrevDestinationCode:substate2 prevDestinationName:destination newDestinationCode:v10 newDestinationName:v11];

    if (v24)
    {
      goto LABEL_25;
    }
  }

  destination2 = [(MOFSM *)self destination];

  if (destination2)
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
    destination3 = [(MOFSM *)self destination];
    timeRangeStartDate = [(MOFSM *)self timeRangeStartDate];
    timeRangeEndDate = [(MOFSM *)self timeRangeEndDate];
    v20 = [(MOTripPlan *)v27 initWithDestination:destination3 destinationType:v26 startDate:timeRangeStartDate endDate:timeRangeEndDate];

    goto LABEL_31;
  }

LABEL_24:
  v20 = 0;
LABEL_31:
  [(MOFSM *)self setState:v9];
  [(MOFSM *)self setSubstate:v10];
  [(MOFSM *)self setDestination:v11];
  startDate2 = [eventCopy startDate];
  [(MOFSM *)self setTimeRangeStartDate:startDate2];

LABEL_32:
  endDate = [eventCopy endDate];
  [(MOFSM *)self setTimeRangeEndDate:endDate];

LABEL_33:
  endDate2 = [eventCopy endDate];
  [(MOFSM *)self setLastProcessedDate:endDate2];

  v34 = _mo_log_facility_get_os_log(&MOLogFacilityTripAnnotationManager);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    *buf = 138412802;
    v39 = v36;
    v40 = 2112;
    selfCopy = self;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@: FSM, %@, completed trip, %@", buf, 0x20u);
  }

LABEL_12:

  return v20;
}

- (void)cleanUpBeforeUpdate
{
  metaData = [(MOFSM *)self metaData];

  if (metaData)
  {
    metaData2 = [(MOFSM *)self metaData];
    v6[0] = @"state";
    v6[1] = @"stateCode";
    v6[2] = @"country";
    v6[3] = @"countryCode";
    v5 = [NSArray arrayWithObjects:v6 count:4];
    [metaData2 removeObjectsForKeys:v5];
  }
}

- (BOOL)stayAtTheSameDestinationWithPrevDestinationCode:(id)code prevDestinationName:(id)name newDestinationCode:(id)destinationCode newDestinationName:(id)destinationName
{
  codeCopy = code;
  nameCopy = name;
  destinationCodeCopy = destinationCode;
  destinationNameCopy = destinationName;
  v14 = (codeCopy != 0) == (destinationCodeCopy != 0) && (!(codeCopy | destinationCodeCopy) || codeCopy && destinationCodeCopy && [(MOFSM *)self compareRegionCode:codeCopy regionName:nameCopy otherRegionCode:destinationCodeCopy otherRegionName:destinationNameCopy]);

  return v14;
}

- (BOOL)compareRegionCode:(id)code regionName:(id)name otherRegionCode:(id)regionCode otherRegionName:(id)regionName
{
  codeCopy = code;
  nameCopy = name;
  regionCodeCopy = regionCode;
  regionNameCopy = regionName;
  if (!(nameCopy | regionNameCopy))
  {
    nameCopy = 0;
    v13 = 0;
    goto LABEL_7;
  }

  v13 = regionNameCopy;
  if (nameCopy)
  {
    if (regionNameCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    nameCopy = codeCopy;
    if (v13)
    {
      goto LABEL_4;
    }
  }

  v13 = regionCodeCopy;
LABEL_4:
  if (([nameCopy isEqualToString:v13] & 1) == 0)
  {
LABEL_7:
    v14 = [codeCopy isEqualToString:regionCodeCopy];
    goto LABEL_8;
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (unint64_t)tripStateFromVisitEvent:(id)event
{
  eventCopy = event;
  if (-[MOFSM mode](self, "mode") && [eventCopy category] == 1)
  {
    if ([(MOFSM *)self mode]== 2)
    {
      routineEvent = [eventCopy routineEvent];
      address = [routineEvent address];
      v7 = [MOFSM stateFromAddress:address];

      routineEvent2 = [eventCopy routineEvent];
      address2 = [routineEvent2 address];
      v10 = [MOFSM stateCodeFromAddress:address2];
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

    routineEvent3 = [eventCopy routineEvent];
    address3 = [routineEvent3 address];
    v14 = [MOFSM countryCodeFromAddress:address3];

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
        referenceCountryCode = [(MOFSM *)self referenceCountryCode];

        if (referenceCountryCode)
        {
          referenceCountryCode2 = [(MOFSM *)self referenceCountryCode];
          v17 = [referenceCountryCode2 isEqualToString:v14];

          if (v17)
          {
            referenceStateCode = [(MOFSM *)self referenceStateCode];
            v19 = referenceStateCode;
            if (referenceStateCode && v10)
            {
              referenceStateCode2 = [(MOFSM *)self referenceStateCode];
              v21 = [referenceStateCode2 isEqualToString:v10];

              if (v21)
              {
                referenceCountryCode = 1;
              }

              else
              {
                referenceCountryCode = 2;
              }
            }

            else
            {

              referenceCountryCode = 1;
            }
          }

          else
          {
            referenceCountryCode = 3;
          }
        }
      }

      else
      {
        referenceCountryCode = 0;
      }
    }

    else
    {
      referenceCountryCode = 0;
      if ([(MOFSM *)self mode]== 1)
      {
        if (v14)
        {
          referenceCountryCode = [(MOFSM *)self referenceCountryCode];

          if (referenceCountryCode)
          {
            referenceCountryCode3 = [(MOFSM *)self referenceCountryCode];
            v23 = [referenceCountryCode3 isEqualToString:v14];

            if (v23)
            {
              referenceCountryCode = 1;
            }

            else
            {
              referenceCountryCode = 3;
            }
          }
        }
      }
    }
  }

  else
  {
    referenceCountryCode = 0;
  }

  return referenceCountryCode;
}

- (id)subStateFromVisitEvent:(id)event state:(unint64_t)state
{
  eventCopy = event;
  v6 = eventCopy;
  switch(state)
  {
    case 3uLL:
      routineEvent = [eventCopy routineEvent];
      address = [routineEvent address];
      v9 = [MOFSM countryCodeFromAddress:address];
      goto LABEL_7;
    case 2uLL:
      routineEvent = [eventCopy routineEvent];
      address = [routineEvent address];
      v9 = [MOFSM stateCodeFromAddress:address];
      goto LABEL_7;
    case 1uLL:
      routineEvent = [eventCopy routineEvent];
      address = [routineEvent address];
      v9 = [MOFSM cityFromAddress:address];
LABEL_7:
      v10 = v9;

      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)destinationFromVisitEvent:(id)event state:(unint64_t)state
{
  eventCopy = event;
  v6 = eventCopy;
  switch(state)
  {
    case 3uLL:
      routineEvent = [eventCopy routineEvent];
      address = [routineEvent address];
      v9 = [MOFSM countryFromAddress:address];
      goto LABEL_7;
    case 2uLL:
      routineEvent = [eventCopy routineEvent];
      address = [routineEvent address];
      v9 = [MOFSM stateFromAddress:address];
      goto LABEL_7;
    case 1uLL:
      routineEvent = [eventCopy routineEvent];
      address = [routineEvent address];
      v9 = [MOFSM cityFromAddress:address];
LABEL_7:
      v10 = v9;

      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)stringFromState:(unint64_t)state
{
  if (state - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_100336E88[state - 1];
  }
}

- (MOFSM)initWithFSMMO:(id)o
{
  if (o)
  {
    oCopy = o;
    name = [oCopy name];
    mode = [oCopy mode];
    state = [oCopy state];
    substate = [oCopy substate];
    timeRangeStartDate = [oCopy timeRangeStartDate];
    timeRangeEndDate = [oCopy timeRangeEndDate];
    lastProcessedDate = [oCopy lastProcessedDate];
    metaData = [oCopy metaData];

    v12 = [MODictionaryEncoder decodeToDictionary:metaData];
    self = [(MOFSM *)self initWithName:name mode:mode state:state subState:substate timeRangeStartDate:timeRangeStartDate timeRangeEndDate:timeRangeEndDate lastProcessedDate:lastProcessedDate metaData:v12];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MOFSM)initWithName:(id)name mode:(unint64_t)mode state:(unint64_t)state subState:(id)subState timeRangeStartDate:(id)date timeRangeEndDate:(id)endDate lastProcessedDate:(id)processedDate metaData:(id)self0
{
  nameCopy = name;
  subStateCopy = subState;
  dateCopy = date;
  endDateCopy = endDate;
  processedDateCopy = processedDate;
  dataCopy = data;
  v28.receiver = self;
  v28.super_class = MOFSM;
  v19 = [(MOFSM *)&v28 init];
  if (v19)
  {
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v19->_mode = mode;
    v19->_state = state;
    objc_storeStrong(&v19->_substate, subState);
    objc_storeStrong(&v19->_timeRangeStartDate, date);
    objc_storeStrong(&v19->_timeRangeEndDate, endDate);
    objc_storeStrong(&v19->_lastProcessedDate, processedDate);
    v22 = [dataCopy mutableCopy];
    metaData = v19->_metaData;
    v19->_metaData = v22;
  }

  return v19;
}

- (id)description
{
  name = [(MOFSM *)self name];
  mode = [(MOFSM *)self mode];
  state = [(MOFSM *)self state];
  substate = [(MOFSM *)self substate];
  timeRangeStartDate = [(MOFSM *)self timeRangeStartDate];
  timeRangeEndDate = [(MOFSM *)self timeRangeEndDate];
  lastProcessedDate = [(MOFSM *)self lastProcessedDate];
  v10 = [NSString stringWithFormat:@"<MOFSM name, %@, mode, %lu, state, %lu, substate, %@, startDate, %@, endDate, %@, lastProcessedDate, %@>", name, mode, state, substate, timeRangeStartDate, timeRangeEndDate, lastProcessedDate];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_substate forKey:@"substate"];
  [coderCopy encodeObject:self->_timeRangeStartDate forKey:@"timeRangeStartDate"];
  [coderCopy encodeObject:self->_timeRangeEndDate forKey:@"timeRangeEndDate"];
  [coderCopy encodeObject:self->_lastProcessedDate forKey:@"lastProcessedDate"];
  [coderCopy encodeObject:self->_metaData forKey:@"timeRangeMetaData"];
}

- (MOFSM)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeIntegerForKey:@"mode"];
  v7 = [coderCopy decodeIntegerForKey:@"state"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"substate"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeStartDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeEndDate"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastProcessedDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRangeMetaData"];

  v13 = [(MOFSM *)self initWithName:v5 mode:v6 state:v7 subState:v8 timeRangeStartDate:v9 timeRangeEndDate:v10 lastProcessedDate:v11 metaData:v12];
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [MOFSM alloc];
  name = [(MOFSM *)self name];
  mode = [(MOFSM *)self mode];
  state = [(MOFSM *)self state];
  substate = [(MOFSM *)self substate];
  timeRangeStartDate = [(MOFSM *)self timeRangeStartDate];
  timeRangeEndDate = [(MOFSM *)self timeRangeEndDate];
  lastProcessedDate = [(MOFSM *)self lastProcessedDate];
  metaData = [(MOFSM *)self metaData];
  v14 = [metaData copyWithZone:zone];
  v15 = [(MOFSM *)v5 initWithName:name mode:mode state:state subState:substate timeRangeStartDate:timeRangeStartDate timeRangeEndDate:timeRangeEndDate lastProcessedDate:lastProcessedDate metaData:v14];

  return v15;
}

@end