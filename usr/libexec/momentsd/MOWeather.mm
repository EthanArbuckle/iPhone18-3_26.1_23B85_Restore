@interface MOWeather
- (BOOL)isEqual:(id)equal;
- (MOWeather)initWithCoder:(id)coder;
- (MOWeather)initWithStartDate:(id)date endDate:(id)endDate temperature:(id)temperature weatherSummary:(id)summary weatherSymbolName:(id)name windSpeed:(id)speed;
- (MOWeather)initWithWeatherIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate weatherSummary:(id)summary weatherSymbolName:(id)name temperature:(id)temperature windSpeed:(id)speed;
- (MOWeather)initWithWeatherMO:(id)o;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOWeather

- (MOWeather)initWithWeatherMO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (oCopy)
  {
    weatherIdentifier = [oCopy weatherIdentifier];
    startDate = [v5 startDate];
    endDate = [v5 endDate];
    weatherSummary = [v5 weatherSummary];
    weatherSymbolName = [v5 weatherSymbolName];
    temperature = [v5 temperature];
    windSpeed = [v5 windSpeed];
    self = [(MOWeather *)self initWithWeatherIdentifier:weatherIdentifier startDate:startDate endDate:endDate weatherSummary:weatherSummary weatherSymbolName:weatherSymbolName temperature:temperature windSpeed:windSpeed];

    sourceEventIdentifier = [v5 sourceEventIdentifier];

    if (sourceEventIdentifier)
    {
      sourceEventIdentifier2 = [v5 sourceEventIdentifier];
      [(MOWeather *)self setSourceEventIdentifier:sourceEventIdentifier2];
    }

    if ([v5 sourceEventAccessType])
    {
      -[MOWeather setSourceEventAccessType:](self, "setSourceEventAccessType:", [v5 sourceEventAccessType]);
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MOWeather)initWithStartDate:(id)date endDate:(id)endDate temperature:(id)temperature weatherSummary:(id)summary weatherSymbolName:(id)name windSpeed:(id)speed
{
  speedCopy = speed;
  nameCopy = name;
  summaryCopy = summary;
  temperatureCopy = temperature;
  endDateCopy = endDate;
  dateCopy = date;
  v20 = +[NSUUID UUID];
  v21 = [(MOWeather *)self initWithWeatherIdentifier:v20 startDate:dateCopy endDate:endDateCopy weatherSummary:summaryCopy weatherSymbolName:nameCopy temperature:temperatureCopy windSpeed:speedCopy];

  return v21;
}

- (MOWeather)initWithWeatherIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate weatherSummary:(id)summary weatherSymbolName:(id)name temperature:(id)temperature windSpeed:(id)speed
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  summaryCopy = summary;
  nameCopy = name;
  temperatureCopy = temperature;
  speedCopy = speed;
  v26.receiver = self;
  v26.super_class = MOWeather;
  v18 = [(MOWeather *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_weatherIdentifier, identifier);
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    objc_storeStrong(&v19->_weatherSummary, summary);
    objc_storeStrong(&v19->_weatherSymbolName, name);
    objc_storeStrong(&v19->_temperature, temperature);
    objc_storeStrong(&v19->_windSpeed, speed);
    v19->_sourceEventAccessType = 5;
  }

  return v19;
}

- (id)description
{
  weatherIdentifier = [(MOWeather *)self weatherIdentifier];
  startDate = [(MOWeather *)self startDate];
  endDate = [(MOWeather *)self endDate];
  weatherSummary = [(MOWeather *)self weatherSummary];
  weatherSymbolName = [(MOWeather *)self weatherSymbolName];
  temperature = [(MOWeather *)self temperature];
  windSpeed = [(MOWeather *)self windSpeed];
  v10 = [NSString stringWithFormat:@"<MOWeather identifier, %@, startDate, %@, endDate, %@, weatherSummary, %@, weatherSymbolName, %@, temperature, %@, windSpeed %@>", weatherIdentifier, startDate, endDate, weatherSummary, weatherSymbolName, temperature, windSpeed];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  weatherIdentifier = self->_weatherIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:weatherIdentifier forKey:@"weatherIdentifier"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_weatherSummary forKey:@"weatherSummary"];
  [coderCopy encodeObject:self->_weatherSymbolName forKey:@"weatherSymbolName"];
  [coderCopy encodeObject:self->_temperature forKey:@"temperature"];
  [coderCopy encodeObject:self->_windSpeed forKey:@"windSpeed"];
  [coderCopy encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [coderCopy encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (MOWeather)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weatherIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weatherSummary"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weatherSymbolName"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"temperature"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windSpeed"];
  v12 = [(MOWeather *)self initWithWeatherIdentifier:v5 startDate:v6 endDate:v7 weatherSummary:v8 weatherSymbolName:v9 temperature:v10 windSpeed:v11];
  if (v12)
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOWeather *)v12 setSourceEventIdentifier:v13];

    -[MOWeather setSourceEventAccessType:](v12, "setSourceEventAccessType:", [coderCopy decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v12;
}

- (unint64_t)hash
{
  weatherIdentifier = [(MOWeather *)self weatherIdentifier];
  v3 = [weatherIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        weatherIdentifier = [(MOWeather *)self weatherIdentifier];
        if (weatherIdentifier || ([(MOWeather *)v7 weatherIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          weatherIdentifier2 = [(MOWeather *)self weatherIdentifier];
          weatherIdentifier3 = [(MOWeather *)v7 weatherIdentifier];
          v11 = [weatherIdentifier2 isEqual:weatherIdentifier3];

          if (weatherIdentifier)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end