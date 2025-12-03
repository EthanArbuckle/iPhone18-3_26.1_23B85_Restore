@interface MOEventRoutine
+ (id)descriptionOfMode:(unint64_t)mode;
+ (id)stringOfMapItemPlaceType:(unint64_t)type;
+ (id)stringOfPlaceInferencePlaceType:(unint64_t)type;
+ (id)stringOfPlaceUserType:(unint64_t)type;
- (BOOL)fallbackToAddressFormattingWithFormatOption:(id)option preferredCategories:(id)categories poiCategoryBlocklist:(id)blocklist mediumConfidenceThreshold:(double)threshold aoiConfidenceThreshold:(double)confidenceThreshold;
- (MOEventRoutine)init;
- (MOEventRoutine)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)formatAddressParkingDisplayNameWithFallback:(BOOL)fallback;
- (id)formatAddressWithFormatOption:(id)option;
- (id)formatAdministrativeAreaWithFormatOption:(id)option;
- (id)formatCountryWithFormatOption:(id)option;
- (id)formatLocalityWithFormatOption:(id)option;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventRoutine

- (MOEventRoutine)init
{
  v3.receiver = self;
  v3.super_class = MOEventRoutine;
  result = [(MOEventRoutine *)&v3 init];
  if (result)
  {
    result->_isInvalid = 0;
  }

  return result;
}

+ (id)descriptionOfMode:(unint64_t)mode
{
  v3 = @"Unknown";
  if (mode == 1)
  {
    v3 = @"Local";
  }

  if (mode == 2)
  {
    return @"Tourist";
  }

  else
  {
    return v3;
  }
}

+ (id)stringOfPlaceUserType:(unint64_t)type
{
  v3 = @"Unknown";
  v4 = @"School";
  v5 = @"Gym";
  v6 = @"Outing";
  if (type != 100)
  {
    v6 = @"Unknown";
  }

  if (type != 4)
  {
    v5 = v6;
  }

  if (type != 3)
  {
    v4 = v5;
  }

  if (type == 2)
  {
    v3 = @"Work";
  }

  if (type == 1)
  {
    v3 = @"Home";
  }

  if (type <= 2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)stringOfPlaceInferencePlaceType:(unint64_t)type
{
  v3 = @"Unknown";
  v4 = @"City";
  v5 = @"State";
  v6 = @"Country";
  if (type != 102)
  {
    v6 = @"Unknown";
  }

  if (type != 101)
  {
    v5 = v6;
  }

  if (type != 100)
  {
    v4 = v5;
  }

  v7 = @"Custom";
  if (type != 6)
  {
    v7 = @"Unknown";
  }

  if (type == 5)
  {
    v7 = @"CoarseAddress";
  }

  if (type <= 99)
  {
    v4 = v7;
  }

  v8 = @"PointOfInterest";
  v9 = @"Address";
  if (type != 4)
  {
    v9 = @"Unknown";
  }

  if (type != 3)
  {
    v8 = v9;
  }

  if (type == 2)
  {
    v3 = @"AreaOfInterest";
  }

  if (type == 1)
  {
    v3 = @"NonClassified";
  }

  if (type > 2)
  {
    v3 = v8;
  }

  if (type <= 4)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)stringOfMapItemPlaceType:(unint64_t)type
{
  result = @"AreaOfInterest";
  switch(type)
  {
    case 0uLL:
      result = @"Unknown";
      break;
    case 1uLL:
      return result;
    case 2uLL:
      result = @"PointOfInterest";
      break;
    case 3uLL:
      result = @"Address";
      break;
    case 4uLL:
      result = @"Country";
      break;
    case 5uLL:
      result = @"AdministrativeArea";
      break;
    case 6uLL:
      result = @"SubAdministrativeArea";
      break;
    case 7uLL:
      result = @"Locality";
      break;
    case 8uLL:
      result = @"TimeZone";
      break;
    case 9uLL:
      result = @"SubLocality";
      break;
    case 0xAuLL:
      result = @"Ocean";
      break;
    case 0xBuLL:
      result = @"InlandWater";
      break;
    case 0xCuLL:
      result = @"Island";
      break;
    case 0xDuLL:
      result = @"Street";
      break;
    case 0xEuLL:
      result = @"Admin";
      break;
    case 0xFuLL:
      result = @"Postal";
      break;
    case 0x10uLL:
      result = @"Intersection";
      break;
    case 0x11uLL:
      result = @"Building";
      break;
    case 0x12uLL:
      result = @"Continent";
      break;
    case 0x13uLL:
      result = @"Region";
      break;
    case 0x14uLL:
      result = @"Division";
      break;
    default:
      if (type == 1000)
      {
        result = @"Undefined";
      }

      break;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  isInvalid = self->_isInvalid;
  coderCopy = coder;
  [coderCopy encodeBool:isInvalid forKey:@"isInvalid"];
  [coderCopy encodeBool:self->_isHighConfidence forKey:@"isHighConfidence"];
  [coderCopy encodeObject:self->_placeName forKey:@"placeName"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeInteger:self->_mapItemPlaceType forKey:@"mapItemPlaceType"];
  [coderCopy encodeInteger:self->_placeType forKey:@"placeType"];
  [coderCopy encodeInteger:self->_placeUserType forKey:@"placeUserType"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeInteger:self->_placeDiscovery forKey:@"placeDiscovery"];
  [coderCopy encodeObject:self->_address forKey:@"address"];
  [coderCopy encodeObject:self->_geoAddressObject forKey:@"geoAddressObject"];
  placeNameConfidence = self->_placeNameConfidence;
  *&placeNameConfidence = placeNameConfidence;
  [coderCopy encodeFloat:@"placeNameConfidence" forKey:placeNameConfidence];
  [coderCopy encodeObject:self->_placeMapItem forKey:@"placeMapItem"];
  [coderCopy encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [coderCopy encodeObject:self->_categoryMuid forKey:@"categoryMuid"];
  [coderCopy encodeDouble:@"familiarityIndexLOI" forKey:self->_familiarityIndexLOI];
  [coderCopy encodeInteger:self->_placeSource forKey:@"placeSource"];
  [coderCopy encodeObject:self->_predominantWeather forKey:@"predominantWeather"];
  [coderCopy encodeBool:self->_isPreOnboardedVisit forKey:@"isPreOnboardedVisit"];
  [coderCopy encodeObject:self->_mapItemLocation forKey:@"mapItemLocation"];
  [coderCopy encodeDouble:@"distanceFromVisitToPlace" forKey:self->_distanceFromVisitToPlace];
  [coderCopy encodeInteger:self->_mapItemID forKey:@"mapItemID"];
}

- (MOEventRoutine)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = MOEventRoutine;
  v5 = [(MOEventRoutine *)&v28 init];
  if (v5)
  {
    v5->_isInvalid = [coderCopy decodeBoolForKey:@"isInvalid"];
    v5->_isHighConfidence = [coderCopy decodeBoolForKey:@"isHighConfidence"];
    v5->_isPreOnboardedVisit = [coderCopy decodeBoolForKey:@"isPreOnboardedVisit"];
    v5->_mapItemPlaceType = [coderCopy decodeIntegerForKey:@"mapItemPlaceType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
    placeName = v5->_placeName;
    v5->_placeName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v5->_placeType = [coderCopy decodeIntegerForKey:@"placeType"];
    v5->_placeUserType = [coderCopy decodeIntegerForKey:@"placeUserType"];
    v5->_mode = [coderCopy decodeIntegerForKey:@"mode"];
    v5->_placeDiscovery = [coderCopy decodeIntForKey:@"placeDiscovery"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoAddressObject"];
    geoAddressObject = v5->_geoAddressObject;
    v5->_geoAddressObject = v12;

    [coderCopy decodeFloatForKey:@"placeNameConfidence"];
    v5->_placeNameConfidence = v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeMapItem"];
    placeMapItem = v5->_placeMapItem;
    v5->_placeMapItem = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
    poiCategory = v5->_poiCategory;
    v5->_poiCategory = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryMuid"];
    categoryMuid = v5->_categoryMuid;
    v5->_categoryMuid = v19;

    [coderCopy decodeDoubleForKey:@"familiarityIndexLOI"];
    v5->_familiarityIndexLOI = v21;
    v5->_placeSource = [coderCopy decodeIntegerForKey:@"placeSource"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predominantWeather"];
    predominantWeather = v5->_predominantWeather;
    v5->_predominantWeather = v22;

    [coderCopy decodeDoubleForKey:@"distanceFromVisitToPlace"];
    v5->_distanceFromVisitToPlace = v24;
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItemLocation"];
    mapItemLocation = v5->_mapItemLocation;
    v5->_mapItemLocation = v25;

    v5->_mapItemID = [coderCopy decodeIntegerForKey:@"mapItemID"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventRoutine);
  v4->_isInvalid = self->_isInvalid;
  v4->_isHighConfidence = self->_isHighConfidence;
  objc_storeStrong(&v4->_address, self->_address);
  objc_storeStrong(&v4->_geoAddressObject, self->_geoAddressObject);
  v4->_mode = self->_mode;
  objc_storeStrong(&v4->_location, self->_location);
  v4->_mapItemPlaceType = self->_mapItemPlaceType;
  objc_storeStrong(&v4->_placeName, self->_placeName);
  v4->_placeType = self->_placeType;
  v4->_placeSource = self->_placeSource;
  objc_storeStrong(&v4->_poiCategory, self->_poiCategory);
  objc_storeStrong(&v4->_categoryMuid, self->_categoryMuid);
  v4->_placeDiscovery = self->_placeDiscovery;
  objc_storeStrong(&v4->_placeMapItem, self->_placeMapItem);
  v4->_placeUserType = self->_placeUserType;
  objc_storeStrong(&v4->_predominantWeather, self->_predominantWeather);
  v4->_familiarityIndexLOI = self->_familiarityIndexLOI;
  v4->_placeNameConfidence = self->_placeNameConfidence;
  v4->_isPreOnboardedVisit = self->_isPreOnboardedVisit;
  objc_storeStrong(&v4->_mapItemLocation, self->_mapItemLocation);
  v4->_mapItemID = self->_mapItemID;
  v4->_distanceFromVisitToPlace = self->_distanceFromVisitToPlace;
  return v4;
}

- (id)description
{
  v17 = [NSString alloc];
  mask = [(NSString *)self->_placeName mask];
  placeNameConfidence = self->_placeNameConfidence;
  v5 = [MOEventRoutine descriptionOfMode:[(MOEventRoutine *)self mode]];
  placeDiscovery = self->_placeDiscovery;
  isHighConfidence = self->_isHighConfidence;
  isInvalid = self->_isInvalid;
  isPreOnboardedVisit = self->_isPreOnboardedVisit;
  v16 = *&self->_poiCategory;
  placeSource = self->_placeSource;
  v11 = [objc_opt_class() stringOfPlaceInferencePlaceType:self->_placeType];
  v12 = [objc_opt_class() stringOfMapItemPlaceType:self->_mapItemPlaceType];
  placeUserType = self->_placeUserType;
  v14 = [v17 initWithFormat:@"placeName, %@, confidence, %f, locationMode, %@, new place, %lu, isHighConfidence, %d, isInvalid, %d, isPreOnboardedVisit, %d, poiCategory, %@, categoryMuid, %@, placeSource, %lu, placeType, %@, mapItemPlaceType, %@, userType, %lu, predominantWeather %@, familiarityIndexLOI, %.2f, mapItem, %lu", mask, *&placeNameConfidence, v5, placeDiscovery, isHighConfidence, isInvalid, isPreOnboardedVisit, v16, placeSource, v11, v12, placeUserType, self->_predominantWeather, *&self->_familiarityIndexLOI, self->_mapItemID];

  return v14;
}

- (BOOL)fallbackToAddressFormattingWithFormatOption:(id)option preferredCategories:(id)categories poiCategoryBlocklist:(id)blocklist mediumConfidenceThreshold:(double)threshold aoiConfidenceThreshold:(double)confidenceThreshold
{
  categoriesCopy = categories;
  blocklistCopy = blocklist;
  poiCategory = [(MOEventRoutine *)self poiCategory];
  v14 = [blocklistCopy containsObject:poiCategory];

  if ([(MOEventRoutine *)self placeType]== 3)
  {
    poiCategory2 = [(MOEventRoutine *)self poiCategory];
    if (([categoriesCopy containsObject:poiCategory2] & 1) != 0 || (-[MOEventRoutine placeNameConfidence](self, "placeNameConfidence"), v16 > threshold))
    {
    }

    else
    {
      placeSource = [(MOEventRoutine *)self placeSource];

      if ((placeSource & 0x40000) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  if ([(MOEventRoutine *)self placeType]!= 2)
  {
    if ([(MOEventRoutine *)self placeType]!= 4 && [(MOEventRoutine *)self placeType]!= 5 && ([(MOEventRoutine *)self placeSource]& 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = 1;
    goto LABEL_14;
  }

  [(MOEventRoutine *)self placeNameConfidence];
  if (v17 <= confidenceThreshold)
  {
    v14 |= ([(MOEventRoutine *)self placeSource]& 1) == 0;
  }

LABEL_14:

  return v14 & 1;
}

- (id)formatAddressParkingDisplayNameWithFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  parkingDisplayName = [(GEOAddressObject *)self->_geoAddressObject parkingDisplayName];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromSelector(a2);
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = parkingDisplayName;
    v20 = 1024;
    v21 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@, parkingDisplayName output string, %@, fallback, %i", &v16, 0x1Cu);
  }

  if ([parkingDisplayName length])
  {
    v8 = 1;
  }

  else
  {
    v8 = !fallbackCopy;
  }

  if (v8)
  {
    shortAddress = parkingDisplayName;
  }

  else
  {
    shortAddress = [(GEOAddressObject *)self->_geoAddressObject shortAddress];

    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(MOEventRoutine *)a2 formatAddressParkingDisplayNameWithFallback:shortAddress, v10];
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(a2);
    v16 = 138412802;
    v17 = v15;
    v18 = 2112;
    v19 = shortAddress;
    v20 = 1024;
    v21 = fallbackCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@, output string, %@, fallback, %i", &v16, 0x1Cu);
  }

  return shortAddress;
}

- (id)formatAddressWithFormatOption:(id)option
{
  optionCopy = option;
  address = [(GEOAddressObject *)self->_geoAddressObject address];
  structuredAddress = [address structuredAddress];
  areaOfInterests = [structuredAddress areaOfInterests];
  v9 = [areaOfInterests count];

  if (v9)
  {
    address2 = [(GEOAddressObject *)self->_geoAddressObject address];
    structuredAddress2 = [address2 structuredAddress];
    areaOfInterests2 = [structuredAddress2 areaOfInterests];
    aboveDoorShortAddress = [areaOfInterests2 objectAtIndexedSubscript:0];

    goto LABEL_3;
  }

  if ([(MOEventRoutine *)self mapItemPlaceType]== 15)
  {
    shortAddress = [(MOEventRoutine *)self formatLocalityWithFormatOption:optionCopy];
LABEL_11:
    aboveDoorShortAddress = shortAddress;
    goto LABEL_12;
  }

  if ([optionCopy isEqualToString:@"shortAddress"])
  {
    shortAddress = [(GEOAddressObject *)self->_geoAddressObject shortAddress];
    goto LABEL_11;
  }

  if ([optionCopy isEqualToString:@"parkingDisplayName"])
  {
    shortAddress = [(MOEventRoutine *)self formatAddressParkingDisplayNameWithFallback:1];
    goto LABEL_11;
  }

  v21 = [optionCopy isEqualToString:@"aboveDoorShortAddress"];
  aboveDoorShortAddress = [(GEOAddressObject *)self->_geoAddressObject aboveDoorShortAddress];
  if ((v21 & 1) == 0)
  {
    address2 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
    if (!os_log_type_enabled(address2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    structuredAddress2 = NSStringFromSelector(a2);
    v22 = 138412802;
    v23 = structuredAddress2;
    v24 = 2112;
    v25 = optionCopy;
    v26 = 2112;
    v27 = aboveDoorShortAddress;
    _os_log_error_impl(&_mh_execute_header, address2, OS_LOG_TYPE_ERROR, "%@, unrecognized format option, %@, will use default, %@", &v22, 0x20u);
LABEL_3:

LABEL_4:
  }

LABEL_12:
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = NSStringFromSelector(a2);
    address3 = [(GEOAddressObject *)self->_geoAddressObject address];
    structuredAddress3 = [address3 structuredAddress];
    areaOfInterests3 = [structuredAddress3 areaOfInterests];
    v22 = 138413058;
    v23 = v17;
    v24 = 2112;
    v25 = optionCopy;
    v26 = 2112;
    v27 = aboveDoorShortAddress;
    v28 = 2112;
    v29 = areaOfInterests3;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@, AOI List, %@", &v22, 0x2Au);
  }

  return aboveDoorShortAddress;
}

- (id)formatLocalityWithFormatOption:(id)option
{
  optionCopy = option;
  v6 = [(GEOAddressObject *)self->_geoAddressObject cityDisplayNameWithFallback:1];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = optionCopy;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@", &v10, 0x20u);
  }

  return v6;
}

- (id)formatAdministrativeAreaWithFormatOption:(id)option
{
  optionCopy = option;
  administrativeArea = [(RTAddress *)self->_address administrativeArea];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = optionCopy;
    v14 = 2112;
    v15 = administrativeArea;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@", &v10, 0x20u);
  }

  return administrativeArea;
}

- (id)formatCountryWithFormatOption:(id)option
{
  optionCopy = option;
  countryName = [(GEOAddressObject *)self->_geoAddressObject countryName];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = optionCopy;
    v14 = 2112;
    v15 = countryName;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@, format option, %@, output string, %@", &v10, 0x20u);
  }

  return countryName;
}

- (void)formatAddressParkingDisplayNameWithFallback:(NSObject *)a3 .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = 138412802;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  v10 = 1024;
  v11 = 1;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@, shortAddress output string, %@, fallback, %i", &v6, 0x1Cu);
}

@end