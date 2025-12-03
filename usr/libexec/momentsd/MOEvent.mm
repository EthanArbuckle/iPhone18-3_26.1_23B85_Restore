@interface MOEvent
+ (id)FormatDate:(id)date;
+ (id)describeCategory:(unint64_t)category;
+ (id)describeProvider:(unint64_t)provider;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFitnessPlusSession;
- (BOOL)isGComplete;
- (BOOL)isHighConfidence;
- (BOOL)isHomeWorkVisit;
- (BOOL)isInvalid;
- (BOOL)itemIsPinned;
- (CLLocation)workoutLocationStart;
- (GEOAddressObject)geoAddressObject;
- (MOEvent)initWithCoder:(id)coder;
- (MOEvent)initWithEventIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate provider:(unint64_t)provider category:(unint64_t)category;
- (MOEvent)initWithEventMO:(id)o;
- (MOEventExtendedAttributes)extendedAttributes;
- (MOWeather)predominantWeather;
- (NSArray)interactionContacts;
- (NSArray)interactions;
- (NSArray)itemRecipients;
- (NSArray)itemSenders;
- (NSArray)mediaPlaySessions;
- (NSArray)photoMemoryAssets;
- (NSArray)tripParts;
- (NSArray)workoutLocationRoute;
- (NSData)placeMapItem;
- (NSDate)sourceCreationDate;
- (NSDictionary)contactClassificationMap;
- (NSDictionary)patterns;
- (NSDictionary)scoredTopics;
- (NSDictionary)trends;
- (NSNumber)categoryMuid;
- (NSNumber)densityScanDuration;
- (NSNumber)densityScore;
- (NSNumber)interactionContactScore;
- (NSNumber)itemAttributionsCount;
- (NSNumber)mediaRepetitions;
- (NSNumber)mediaSumTimePlayed;
- (NSNumber)motionStepCount;
- (NSNumber)pCount;
- (NSNumber)workoutDuration;
- (NSNumber)workoutTotalDistance;
- (NSNumber)workoutTotalEnergyBurned;
- (NSSet)interactionMechanisms;
- (NSString)interactionGroupName;
- (NSString)mediaAlbum;
- (NSString)mediaArtist;
- (NSString)mediaGenre;
- (NSString)mediaPlayerBundleId;
- (NSString)mediaProductId;
- (NSString)mediaTitle;
- (NSString)mediaType;
- (NSString)photoMemoryTitle;
- (NSString)placeName;
- (NSString)poiCategory;
- (NSString)suggestedEventIdentifier;
- (NSString)suggestedEventTitle;
- (NSString)tripTitle;
- (NSString)workoutType;
- (NSURL)itemURL;
- (PHAsset)photoAsset;
- (PPEvent)suggestedEvent;
- (PPScoredContact)interactionScoredContact;
- (RTAddress)address;
- (RTLocation)location;
- (double)confidenceScore;
- (double)duration;
- (double)familiarityIndexLOI;
- (double)placeNameConfidence;
- (double)weightedDurationWithTimeZone:(id)zone overnightStartDateHour:(double)hour overnightDurationHours:(double)hours overnightDurationWeight:(double)weight;
- (id)bundleSourceType;
- (id)copy;
- (id)describeCategory;
- (id)describeProvider;
- (id)description;
- (id)formatAddressWithFormatOption:(id)option;
- (id)formatAdministrativeAreaWithFormatOption:(id)option;
- (id)formatCountryWithFormatOption:(id)option;
- (id)formatLocalityWithFormatOption:(id)option;
- (int64_t)gaPR;
- (unint64_t)hash;
- (unint64_t)itemShareDirection;
- (unint64_t)itemSyndicationStatus;
- (unint64_t)lifeEventCategory;
- (unint64_t)mode;
- (unint64_t)motionType;
- (unint64_t)photoMemoryCategory;
- (unint64_t)photoMomentSource;
- (unint64_t)placeDiscovery;
- (unint64_t)placeSource;
- (unint64_t)placeType;
- (unint64_t)placeUserType;
- (unint64_t)suggestedEventCategory;
- (unint64_t)timeAtHomeSubType;
- (void)encodeWithCoder:(id)coder;
- (void)initSubEvent;
- (void)setAddress:(id)address;
- (void)setCategoryMuid:(id)muid;
- (void)setConfidenceScore:(double)score;
- (void)setContactClassificationMap:(id)map;
- (void)setDensityScanDuration:(id)duration;
- (void)setDensityScore:(id)score;
- (void)setExtendedAttributes:(id)attributes;
- (void)setFamiliarityIndexLOI:(double)i;
- (void)setGaPR:(int64_t)r;
- (void)setGeoAddressObject:(id)object;
- (void)setInteractionContactScore:(id)score;
- (void)setInteractionContacts:(id)contacts;
- (void)setInteractionGroupName:(id)name;
- (void)setInteractionMechanisms:(id)mechanisms;
- (void)setInteractionScoredContact:(id)contact;
- (void)setInteractions:(id)interactions;
- (void)setItemAttributionsCount:(id)count;
- (void)setItemRecipients:(id)recipients;
- (void)setItemSenders:(id)senders;
- (void)setItemShareDirection:(unint64_t)direction;
- (void)setItemSyndicationStatus:(unint64_t)status;
- (void)setItemURL:(id)l;
- (void)setLifeEventCategory:(unint64_t)category;
- (void)setLocation:(id)location;
- (void)setMediaAlbum:(id)album;
- (void)setMediaArtist:(id)artist;
- (void)setMediaGenre:(id)genre;
- (void)setMediaPlaySessions:(id)sessions;
- (void)setMediaPlayerBundleId:(id)id;
- (void)setMediaProductId:(id)id;
- (void)setMediaRepetitions:(id)repetitions;
- (void)setMediaSumTimePlayed:(id)played;
- (void)setMediaTitle:(id)title;
- (void)setMediaType:(id)type;
- (void)setMode:(unint64_t)mode;
- (void)setMotionStepCount:(id)count;
- (void)setMotionType:(unint64_t)type;
- (void)setPCount:(id)count;
- (void)setPatterns:(id)patterns;
- (void)setPhotoAsset:(id)asset;
- (void)setPhotoMemoryAssets:(id)assets;
- (void)setPhotoMemoryCategory:(unint64_t)category;
- (void)setPhotoMemoryTitle:(id)title;
- (void)setPhotoMomentSource:(unint64_t)source;
- (void)setPlaceDiscovery:(unint64_t)discovery;
- (void)setPlaceMapItem:(id)item;
- (void)setPlaceName:(id)name;
- (void)setPlaceNameConfidence:(double)confidence;
- (void)setPlaceSource:(unint64_t)source;
- (void)setPlaceType:(unint64_t)type;
- (void)setPlaceUserType:(unint64_t)type;
- (void)setPoiCategory:(id)category;
- (void)setPredominantWeather:(id)weather;
- (void)setScoredTopics:(id)topics;
- (void)setSuggestedEvent:(id)event;
- (void)setSuggestedEventCategory:(unint64_t)category;
- (void)setSuggestedEventIdentifier:(id)identifier;
- (void)setSuggestedEventTitle:(id)title;
- (void)setTimeAtHomeSubType:(unint64_t)type;
- (void)setTrends:(id)trends;
- (void)setTripParts:(id)parts;
- (void)setTripTitle:(id)title;
- (void)setWorkoutDuration:(id)duration;
- (void)setWorkoutLocationRoute:(id)route;
- (void)setWorkoutLocationStart:(id)start;
- (void)setWorkoutTotalDistance:(id)distance;
- (void)setWorkoutTotalEnergyBurned:(id)burned;
- (void)setWorkoutType:(id)type;
@end

@implementation MOEvent

- (NSString)placeName
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent placeName];
    v2 = vars8;
  }

  return routineEvent;
}

- (double)duration
{
  endDate = [(MOEvent *)self endDate];
  startDate = [(MOEvent *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (double)placeNameConfidence
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    return 0.0;
  }

  [(MOEventRoutine *)routineEvent placeNameConfidence];
  return result;
}

- (RTLocation)location
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent location];
    v2 = vars8;
  }

  return routineEvent;
}

- (unint64_t)placeType
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeType];
  }

  return result;
}

- (unint64_t)placeSource
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeSource];
  }

  return result;
}

- (unint64_t)placeUserType
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeUserType];
  }

  return result;
}

- (unint64_t)mode
{
  result = self->_routineEvent;
  if (result)
  {
    return [result mode];
  }

  return result;
}

- (NSString)poiCategory
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent poiCategory];
    v2 = vars8;
  }

  return routineEvent;
}

- (NSNumber)categoryMuid
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent categoryMuid];
    v2 = vars8;
  }

  return routineEvent;
}

- (double)familiarityIndexLOI
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    return 0.0;
  }

  [(MOEventRoutine *)routineEvent familiarityIndexLOI];
  return result;
}

- (NSNumber)workoutDuration
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutDuration];
    v2 = vars8;
  }

  return workoutEvent;
}

- (CLLocation)workoutLocationStart
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutLocationStart];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSArray)mediaPlaySessions
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaPlaySessions];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSDictionary)patterns
{
  analyticsEvent = self->_analyticsEvent;
  if (analyticsEvent)
  {
    analyticsEvent = [analyticsEvent patterns];
    v2 = vars8;
  }

  return analyticsEvent;
}

- (BOOL)isFitnessPlusSession
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    LOBYTE(workoutEvent) = [(MOEventWorkout *)workoutEvent isFitnessPlusSession];
  }

  return workoutEvent;
}

- (NSArray)workoutLocationRoute
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutLocationRoute];
    v2 = vars8;
  }

  return workoutEvent;
}

- (id)description
{
  if ([(MOEvent *)self provider]== 5)
  {
    analyticsEvent = self->_analyticsEvent;
    if (analyticsEvent)
    {
LABEL_3:
      analyticsEvent = [(__CFString *)analyticsEvent description];
    }
  }

  else
  {
    v13 = [(MOEvent *)self category]- 1;
    analyticsEvent = 0;
    switch(v13)
    {
      case 0uLL:
        analyticsEvent = self->_routineEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 1uLL:
        analyticsEvent = self->_workoutEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 2uLL:
      case 3uLL:
      case 5uLL:
        analyticsEvent = self->_mediaEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 4uLL:
      case 0x10uLL:
        analyticsEvent = self->_photoEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 6uLL:
        analyticsEvent = self->_portraitEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 7uLL:
        analyticsEvent = self->_travelEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 8uLL:
        analyticsEvent = self->_sharedWithYouEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 9uLL:
        analyticsEvent = self->_significantContactEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0xAuLL:
      case 0xBuLL:
        analyticsEvent = self->_proactiveSuggestedEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0xCuLL:
        break;
      case 0xEuLL:
      case 0x14uLL:
      case 0x16uLL:
        analyticsEvent = self->_peopleDiscoveryEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0xFuLL:
        analyticsEvent = self->_motionActivityEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0x13uLL:
        analyticsEvent = self->_screenTimeEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0x15uLL:
        analyticsEvent = self->_lifeEventsEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      case 0x18uLL:
        analyticsEvent = self->_inviteEvent;
        if (analyticsEvent)
        {
          goto LABEL_3;
        }

        break;
      default:
        analyticsEvent = @"no other details";
        break;
    }
  }

  v23 = analyticsEvent;
  v19 = [NSString alloc];
  eventIdentifier = [(MOEvent *)self eventIdentifier];
  identifierFromProvider = [(MOEvent *)self identifierFromProvider];
  startDate = [(MOEvent *)self startDate];
  v15 = [MOEvent FormatDate:startDate];
  endDate = [(MOEvent *)self endDate];
  v4 = [MOEvent FormatDate:endDate];
  creationDate = [(MOEvent *)self creationDate];
  v5 = [MOEvent FormatDate:creationDate];
  sourceCreationDate = [(MOEvent *)self sourceCreationDate];
  v6 = [MOEvent FormatDate:sourceCreationDate];
  expirationDate = [(MOEvent *)self expirationDate];
  v8 = [MOEvent FormatDate:expirationDate];
  timeZone = [(MOEvent *)self timeZone];
  describeProvider = [(MOEvent *)self describeProvider];
  describeCategory = [(MOEvent *)self describeCategory];
  v20 = [v19 initWithFormat:@"<MOEvent eventIdentifier, %@, identifierFromProvider, %@, startDate, %@, endDate, %@, creationDate, %@, sourceCreationDate, %@, expirationDate, %@, timeZone, %@, provider, %@, category, %@, rehydrationFailCount, %lu, source app, %@, %@>", eventIdentifier, identifierFromProvider, v15, v4, v5, v6, v8, timeZone, describeProvider, describeCategory, -[MOEvent rehydrationFailCount](self, "rehydrationFailCount"), self->_appBundle, v23];

  return v20;
}

- (NSDate)sourceCreationDate
{
  sourceCreationDate = self->_sourceCreationDate;
  if (!sourceCreationDate)
  {
    sourceCreationDate = self->_endDate;
  }

  v3 = sourceCreationDate;

  return v3;
}

- (id)describeProvider
{
  provider = [(MOEvent *)self provider];

  return [MOEvent describeProvider:provider];
}

- (id)describeCategory
{
  category = [(MOEvent *)self category];

  return [MOEvent describeCategory:category];
}

- (NSData)placeMapItem
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent placeMapItem];
    v2 = vars8;
  }

  return routineEvent;
}

- (MOEvent)initWithEventIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate creationDate:(id)creationDate provider:(unint64_t)provider category:(unint64_t)category
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  v20 = creationDateCopy;
  if (!identifierCopy)
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: eventIdentifier";
    v34 = a2;
    selfCopy4 = self;
    v36 = 31;
    goto LABEL_20;
  }

  if (!dateCopy)
  {
    v37 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: startDate";
    v34 = a2;
    selfCopy4 = self;
    v36 = 32;
    goto LABEL_20;
  }

  if (!endDateCopy)
  {
    v38 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: endDate";
    v34 = a2;
    selfCopy4 = self;
    v36 = 33;
    goto LABEL_20;
  }

  if (!creationDateCopy)
  {
    v39 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:];
    }

    v31 = +[NSAssertionHandler currentHandler];
    v32 = v31;
    v33 = @"Invalid parameter not satisfying: creationDate";
    v34 = a2;
    selfCopy4 = self;
    v36 = 34;
LABEL_20:
    [v31 handleFailureInMethod:v34 object:selfCopy4 file:@"MOEvent.m" lineNumber:v36 description:v33];

    selfCopy5 = 0;
    goto LABEL_21;
  }

  v41.receiver = self;
  v41.super_class = MOEvent;
  v21 = [(MOEvent *)&v41 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_eventIdentifier, identifier);
    v23 = [dateCopy copy];
    startDate = v22->_startDate;
    v22->_startDate = v23;

    v25 = [endDateCopy copy];
    endDate = v22->_endDate;
    v22->_endDate = v25;

    v27 = [v20 copy];
    creationDate = v22->_creationDate;
    v22->_creationDate = v27;

    v22->_provider = provider;
    v22->_category = category;
    [(MOEvent *)v22 initSubEvent];
  }

  self = v22;
  selfCopy5 = self;
LABEL_21:

  return selfCopy5;
}

- (void)initSubEvent
{
  category = self->_category;
  if (category == 1)
  {
    v6 = off_100334DD8;
    v7 = 120;
  }

  else
  {
    if (category != 2)
    {
      if (category != 16)
      {
        return;
      }

      v4 = objc_alloc_init(MOEventMotionActivity);
      motionActivityEvent = self->_motionActivityEvent;
      self->_motionActivityEvent = v4;
    }

    v6 = &off_100334DE0;
    v7 = 128;
  }

  v8 = objc_alloc_init(*v6);
  v9 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = v8;

  _objc_release_x1();
}

+ (id)describeProvider:(unint64_t)provider
{
  if (provider >= 0xD)
  {
    provider = [[NSString alloc] initWithFormat:@"Unknown (%lu)", provider];
  }

  else
  {
    provider = off_100336510[provider];
  }

  return provider;
}

+ (id)describeCategory:(unint64_t)category
{
  if (category - 1 > 0x18)
  {
    return @"Unknown Category";
  }

  else
  {
    return off_100336578[category - 1];
  }
}

- (unint64_t)photoMomentSource
{
  result = self->_photoEvent;
  if (result)
  {
    return [result photoMomentSource];
  }

  return result;
}

- (MOEventExtendedAttributes)extendedAttributes
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent extendedAttributes];
    v2 = vars8;
  }

  return photoEvent;
}

- (PHAsset)photoAsset
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent photoAsset];
    v2 = vars8;
  }

  return photoEvent;
}

- (NSString)photoMemoryTitle
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent photoMemoryTitle];
    v2 = vars8;
  }

  return photoEvent;
}

- (NSArray)photoMemoryAssets
{
  photoEvent = self->_photoEvent;
  if (photoEvent)
  {
    photoEvent = [photoEvent photoMemoryAssets];
    v2 = vars8;
  }

  return photoEvent;
}

- (unint64_t)photoMemoryCategory
{
  result = self->_photoEvent;
  if (result)
  {
    return [result photoMemoryCategory];
  }

  return result;
}

- (unint64_t)timeAtHomeSubType
{
  result = self->_analyticsEvent;
  if (result)
  {
    return [result timeAtHomeSubType];
  }

  return result;
}

- (BOOL)isHighConfidence
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    LOBYTE(routineEvent) = [(MOEventRoutine *)routineEvent isHighConfidence];
  }

  return routineEvent;
}

- (BOOL)isInvalid
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    LOBYTE(routineEvent) = [(MOEventRoutine *)routineEvent isInvalid];
  }

  return routineEvent;
}

- (unint64_t)placeDiscovery
{
  result = self->_routineEvent;
  if (result)
  {
    return [result placeDiscovery];
  }

  return result;
}

- (RTAddress)address
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent address];
    v2 = vars8;
  }

  return routineEvent;
}

- (GEOAddressObject)geoAddressObject
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent geoAddressObject];
    v2 = vars8;
  }

  return routineEvent;
}

- (NSString)workoutType
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutType];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSNumber)workoutTotalDistance
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutTotalDistance];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSNumber)workoutTotalEnergyBurned
{
  workoutEvent = self->_workoutEvent;
  if (workoutEvent)
  {
    workoutEvent = [workoutEvent workoutTotalEnergyBurned];
    v2 = vars8;
  }

  return workoutEvent;
}

- (NSNumber)motionStepCount
{
  motionActivityEvent = self->_motionActivityEvent;
  if (motionActivityEvent)
  {
    motionActivityEvent = [motionActivityEvent motionStepCount];
    v2 = vars8;
  }

  return motionActivityEvent;
}

- (NSString)suggestedEventTitle
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (proactiveSuggestedEvent)
  {
    proactiveSuggestedEvent = [proactiveSuggestedEvent suggestedEventTitle];
    v2 = vars8;
  }

  return proactiveSuggestedEvent;
}

- (NSString)suggestedEventIdentifier
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (proactiveSuggestedEvent)
  {
    proactiveSuggestedEvent = [proactiveSuggestedEvent suggestedEventIdentifier];
    v2 = vars8;
  }

  return proactiveSuggestedEvent;
}

- (unint64_t)suggestedEventCategory
{
  result = self->_proactiveSuggestedEvent;
  if (result)
  {
    return [result suggestedEventCategory];
  }

  return result;
}

- (PPEvent)suggestedEvent
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (proactiveSuggestedEvent)
  {
    proactiveSuggestedEvent = [proactiveSuggestedEvent suggestedEvent];
    v2 = vars8;
  }

  return proactiveSuggestedEvent;
}

- (NSString)tripTitle
{
  travelEvent = self->_travelEvent;
  if (travelEvent)
  {
    travelEvent = [travelEvent tripTitle];
    v2 = vars8;
  }

  return travelEvent;
}

- (NSArray)tripParts
{
  travelEvent = self->_travelEvent;
  if (travelEvent)
  {
    travelEvent = [travelEvent tripParts];
    v2 = vars8;
  }

  return travelEvent;
}

- (NSString)mediaTitle
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaTitle];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaAlbum
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaAlbum];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaPlayerBundleId
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaPlayerBundleId];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaProductId
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaProductId];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaGenre
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaGenre];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaType
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaType];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSString)mediaArtist
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaArtist];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSNumber)mediaRepetitions
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaRepetitions];
    v2 = vars8;
  }

  return mediaEvent;
}

- (NSNumber)mediaSumTimePlayed
{
  mediaEvent = self->_mediaEvent;
  if (mediaEvent)
  {
    mediaEvent = [mediaEvent mediaSumTimePlayed];
    v2 = vars8;
  }

  return mediaEvent;
}

- (MOWeather)predominantWeather
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    routineEvent = [routineEvent predominantWeather];
    v2 = vars8;
  }

  return routineEvent;
}

- (NSURL)itemURL
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemURL];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (NSArray)itemSenders
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemSenders];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (NSArray)itemRecipients
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemRecipients];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (unint64_t)itemShareDirection
{
  result = self->_sharedWithYouEvent;
  if (result)
  {
    return [result itemShareDirection];
  }

  return result;
}

- (BOOL)itemIsPinned
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    LOBYTE(sharedWithYouEvent) = [(MOEventSharedWithYou *)sharedWithYouEvent itemIsPinned];
  }

  return sharedWithYouEvent;
}

- (unint64_t)itemSyndicationStatus
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    return [(MOEventSharedWithYou *)sharedWithYouEvent itemSyndicationStatus];
  }

  else
  {
    return 1;
  }
}

- (NSNumber)itemAttributionsCount
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (sharedWithYouEvent)
  {
    sharedWithYouEvent = [sharedWithYouEvent itemAttributionsCount];
    v2 = vars8;
  }

  return sharedWithYouEvent;
}

- (NSNumber)interactionContactScore
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionContactScore];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (PPScoredContact)interactionScoredContact
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionScoredContact];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSString)interactionGroupName
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionGroupName];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSArray)interactionContacts
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionContacts];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSDictionary)contactClassificationMap
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent contactClassificationMap];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSSet)interactionMechanisms
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactionMechanisms];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (NSArray)interactions
{
  significantContactEvent = self->_significantContactEvent;
  if (significantContactEvent)
  {
    significantContactEvent = [significantContactEvent interactions];
    v2 = vars8;
  }

  return significantContactEvent;
}

- (BOOL)isGComplete
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    LOBYTE(peopleDiscoveryEvent) = [(MOEventPeopleDiscovery *)peopleDiscoveryEvent isGComplete];
  }

  return peopleDiscoveryEvent;
}

- (int64_t)gaPR
{
  result = self->_peopleDiscoveryEvent;
  if (result)
  {
    return [result gaPR];
  }

  return result;
}

- (NSNumber)pCount
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    peopleDiscoveryEvent = [peopleDiscoveryEvent pCount];
    v2 = vars8;
  }

  return peopleDiscoveryEvent;
}

- (NSNumber)densityScore
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    peopleDiscoveryEvent = [peopleDiscoveryEvent densityScore];
    v2 = vars8;
  }

  return peopleDiscoveryEvent;
}

- (NSNumber)densityScanDuration
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (peopleDiscoveryEvent)
  {
    peopleDiscoveryEvent = [peopleDiscoveryEvent densityScanDuration];
    v2 = vars8;
  }

  return peopleDiscoveryEvent;
}

- (NSDictionary)scoredTopics
{
  portraitEvent = self->_portraitEvent;
  if (portraitEvent)
  {
    portraitEvent = [portraitEvent scoredTopics];
    v2 = vars8;
  }

  return portraitEvent;
}

- (unint64_t)motionType
{
  result = self->_motionActivityEvent;
  if (result)
  {
    return [result motionType];
  }

  return result;
}

- (NSDictionary)trends
{
  analyticsEvent = self->_analyticsEvent;
  if (analyticsEvent)
  {
    analyticsEvent = [analyticsEvent trends];
    v2 = vars8;
  }

  return analyticsEvent;
}

- (unint64_t)lifeEventCategory
{
  result = self->_lifeEventsEvent;
  if (result)
  {
    return [result lifeEventCategory];
  }

  return result;
}

- (double)confidenceScore
{
  lifeEventsEvent = self->_lifeEventsEvent;
  if (!lifeEventsEvent)
  {
    return 0.0;
  }

  [(MOEventLifeEvents *)lifeEventsEvent confidenceScore];
  return result;
}

- (void)setPhotoMomentSource:(unint64_t)source
{
  photoEvent = self->_photoEvent;
  if (!photoEvent)
  {
    v6 = objc_alloc_init(MOEventPhoto);
    v7 = self->_photoEvent;
    self->_photoEvent = v6;

    photoEvent = self->_photoEvent;
  }

  [(MOEventPhoto *)photoEvent setPhotoMomentSource:source];
}

- (void)setExtendedAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (attributesCopy)
  {
    photoEvent = self->_photoEvent;
    v8 = attributesCopy;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setExtendedAttributes:v8];
  }

  _objc_release_x1();
}

- (void)setPhotoAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    photoEvent = self->_photoEvent;
    v8 = assetCopy;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setPhotoAsset:v8];
  }

  _objc_release_x1();
}

- (void)setPhotoMemoryTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    photoEvent = self->_photoEvent;
    v8 = titleCopy;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setPhotoMemoryTitle:v8];
  }

  _objc_release_x1();
}

- (void)setPhotoMemoryAssets:(id)assets
{
  assetsCopy = assets;
  if (assetsCopy)
  {
    photoEvent = self->_photoEvent;
    v8 = assetsCopy;
    if (!photoEvent)
    {
      v6 = objc_alloc_init(MOEventPhoto);
      v7 = self->_photoEvent;
      self->_photoEvent = v6;

      photoEvent = self->_photoEvent;
    }

    [(MOEventPhoto *)photoEvent setPhotoMemoryAssets:v8];
  }

  _objc_release_x1();
}

- (void)setPhotoMemoryCategory:(unint64_t)category
{
  photoEvent = self->_photoEvent;
  if (!photoEvent)
  {
    v6 = objc_alloc_init(MOEventPhoto);
    v7 = self->_photoEvent;
    self->_photoEvent = v6;

    photoEvent = self->_photoEvent;
  }

  [(MOEventPhoto *)photoEvent setPhotoMemoryCategory:category];
}

- (void)setTimeAtHomeSubType:(unint64_t)type
{
  analyticsEvent = self->_analyticsEvent;
  if (!analyticsEvent)
  {
    v6 = objc_alloc_init(MOEventAnalytics);
    v7 = self->_analyticsEvent;
    self->_analyticsEvent = v6;

    analyticsEvent = self->_analyticsEvent;
  }

  [(MOEventAnalytics *)analyticsEvent setTimeAtHomeSubType:type];
}

- (void)setPlaceType:(unint64_t)type
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceType:type];
}

- (void)setPlaceUserType:(unint64_t)type
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceUserType:type];
}

- (void)setPlaceName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = nameCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPlaceName:v8];
  }

  _objc_release_x1();
}

- (void)setPlaceNameConfidence:(double)confidence
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceNameConfidence:confidence];
}

- (void)setPlaceDiscovery:(unint64_t)discovery
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceDiscovery:discovery];
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = locationCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setLocation:v8];
  }

  _objc_release_x1();
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = addressCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setAddress:v8];
  }

  _objc_release_x1();
}

- (void)setGeoAddressObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = objectCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setGeoAddressObject:v8];
  }

  _objc_release_x1();
}

- (void)setMode:(unint64_t)mode
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setMode:mode];
}

- (void)setPlaceMapItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = itemCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPlaceMapItem:v8];
  }

  _objc_release_x1();
}

- (void)setPoiCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = categoryCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPoiCategory:v8];
  }

  _objc_release_x1();
}

- (void)setCategoryMuid:(id)muid
{
  muidCopy = muid;
  if (muidCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = muidCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setCategoryMuid:v8];
  }

  _objc_release_x1();
}

- (void)setPlaceSource:(unint64_t)source
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setPlaceSource:source];
}

- (void)setFamiliarityIndexLOI:(double)i
{
  routineEvent = self->_routineEvent;
  if (!routineEvent)
  {
    v6 = objc_alloc_init(MOEventRoutine);
    v7 = self->_routineEvent;
    self->_routineEvent = v6;

    routineEvent = self->_routineEvent;
  }

  [(MOEventRoutine *)routineEvent setFamiliarityIndexLOI:i];
}

- (void)setWorkoutType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    workoutEvent = self->_workoutEvent;
    v8 = typeCopy;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutType:v8];
  }

  _objc_release_x1();
}

- (void)setWorkoutTotalDistance:(id)distance
{
  distanceCopy = distance;
  if (distanceCopy)
  {
    workoutEvent = self->_workoutEvent;
    v8 = distanceCopy;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutTotalDistance:v8];
  }

  _objc_release_x1();
}

- (void)setWorkoutTotalEnergyBurned:(id)burned
{
  burnedCopy = burned;
  if (burnedCopy)
  {
    workoutEvent = self->_workoutEvent;
    v8 = burnedCopy;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutTotalEnergyBurned:v8];
  }

  _objc_release_x1();
}

- (void)setWorkoutDuration:(id)duration
{
  durationCopy = duration;
  if (durationCopy)
  {
    workoutEvent = self->_workoutEvent;
    v8 = durationCopy;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutDuration:v8];
  }

  _objc_release_x1();
}

- (void)setWorkoutLocationStart:(id)start
{
  startCopy = start;
  if (startCopy)
  {
    workoutEvent = self->_workoutEvent;
    v8 = startCopy;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutLocationStart:v8];
  }

  _objc_release_x1();
}

- (void)setWorkoutLocationRoute:(id)route
{
  routeCopy = route;
  if (routeCopy)
  {
    workoutEvent = self->_workoutEvent;
    v8 = routeCopy;
    if (!workoutEvent)
    {
      v6 = objc_alloc_init(MOEventWorkout);
      v7 = self->_workoutEvent;
      self->_workoutEvent = v6;

      workoutEvent = self->_workoutEvent;
    }

    [(MOEventWorkout *)workoutEvent setWorkoutLocationRoute:v8];
  }

  _objc_release_x1();
}

- (void)setMotionStepCount:(id)count
{
  countCopy = count;
  if (countCopy)
  {
    motionActivityEvent = self->_motionActivityEvent;
    v8 = countCopy;
    if (!motionActivityEvent)
    {
      v6 = objc_alloc_init(MOEventMotionActivity);
      v7 = self->_motionActivityEvent;
      self->_motionActivityEvent = v6;

      motionActivityEvent = self->_motionActivityEvent;
    }

    [(MOEventMotionActivity *)motionActivityEvent setMotionStepCount:v8];
  }

  _objc_release_x1();
}

- (void)setSuggestedEventTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    v8 = titleCopy;
    if (!proactiveSuggestedEvent)
    {
      v6 = objc_alloc_init(MOEventProactiveSuggested);
      v7 = self->_proactiveSuggestedEvent;
      self->_proactiveSuggestedEvent = v6;

      proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    }

    [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEventTitle:v8];
  }

  _objc_release_x1();
}

- (void)setSuggestedEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    v8 = identifierCopy;
    if (!proactiveSuggestedEvent)
    {
      v6 = objc_alloc_init(MOEventProactiveSuggested);
      v7 = self->_proactiveSuggestedEvent;
      self->_proactiveSuggestedEvent = v6;

      proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    }

    [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEventIdentifier:v8];
  }

  _objc_release_x1();
}

- (void)setSuggestedEventCategory:(unint64_t)category
{
  proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  if (!proactiveSuggestedEvent)
  {
    v6 = objc_alloc_init(MOEventProactiveSuggested);
    v7 = self->_proactiveSuggestedEvent;
    self->_proactiveSuggestedEvent = v6;

    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
  }

  [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEventCategory:category];
}

- (void)setSuggestedEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    v8 = eventCopy;
    if (!proactiveSuggestedEvent)
    {
      v6 = objc_alloc_init(MOEventProactiveSuggested);
      v7 = self->_proactiveSuggestedEvent;
      self->_proactiveSuggestedEvent = v6;

      proactiveSuggestedEvent = self->_proactiveSuggestedEvent;
    }

    [(MOEventProactiveSuggested *)proactiveSuggestedEvent setSuggestedEvent:v8];
  }

  _objc_release_x1();
}

- (void)setTripTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    travelEvent = self->_travelEvent;
    v8 = titleCopy;
    if (!travelEvent)
    {
      v6 = objc_alloc_init(MOEventTravel);
      v7 = self->_travelEvent;
      self->_travelEvent = v6;

      travelEvent = self->_travelEvent;
    }

    [(MOEventTravel *)travelEvent setTripTitle:v8];
  }

  _objc_release_x1();
}

- (void)setTripParts:(id)parts
{
  partsCopy = parts;
  if (partsCopy)
  {
    travelEvent = self->_travelEvent;
    v8 = partsCopy;
    if (!travelEvent)
    {
      v6 = objc_alloc_init(MOEventTravel);
      v7 = self->_travelEvent;
      self->_travelEvent = v6;

      travelEvent = self->_travelEvent;
    }

    [(MOEventTravel *)travelEvent setTripParts:v8];
  }

  _objc_release_x1();
}

- (void)setMediaTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = titleCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaTitle:v8];
  }

  _objc_release_x1();
}

- (void)setMediaAlbum:(id)album
{
  albumCopy = album;
  if (albumCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = albumCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaAlbum:v8];
  }

  _objc_release_x1();
}

- (void)setMediaPlayerBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = idCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaPlayerBundleId:v8];
  }

  _objc_release_x1();
}

- (void)setMediaProductId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = idCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaProductId:v8];
  }

  _objc_release_x1();
}

- (void)setMediaGenre:(id)genre
{
  genreCopy = genre;
  if (genreCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = genreCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaGenre:v8];
  }

  _objc_release_x1();
}

- (void)setMediaType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = typeCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaType:v8];
  }

  _objc_release_x1();
}

- (void)setMediaArtist:(id)artist
{
  artistCopy = artist;
  if (artistCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = artistCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaArtist:v8];
  }

  _objc_release_x1();
}

- (void)setMediaRepetitions:(id)repetitions
{
  repetitionsCopy = repetitions;
  if (repetitionsCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = repetitionsCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaRepetitions:v8];
  }

  _objc_release_x1();
}

- (void)setMediaSumTimePlayed:(id)played
{
  playedCopy = played;
  if (playedCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = playedCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaSumTimePlayed:v8];
  }

  _objc_release_x1();
}

- (void)setMediaPlaySessions:(id)sessions
{
  sessionsCopy = sessions;
  if (sessionsCopy)
  {
    mediaEvent = self->_mediaEvent;
    v8 = sessionsCopy;
    if (!mediaEvent)
    {
      v6 = objc_alloc_init(MOEventMedia);
      v7 = self->_mediaEvent;
      self->_mediaEvent = v6;

      mediaEvent = self->_mediaEvent;
    }

    [(MOEventMedia *)mediaEvent setMediaPlaySessions:v8];
  }

  _objc_release_x1();
}

- (void)setPredominantWeather:(id)weather
{
  weatherCopy = weather;
  if (weatherCopy)
  {
    routineEvent = self->_routineEvent;
    v8 = weatherCopy;
    if (!routineEvent)
    {
      v6 = objc_alloc_init(MOEventRoutine);
      v7 = self->_routineEvent;
      self->_routineEvent = v6;

      routineEvent = self->_routineEvent;
    }

    [(MOEventRoutine *)routineEvent setPredominantWeather:v8];
  }

  _objc_release_x1();
}

- (void)setItemURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = lCopy;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemURL:v8];
  }

  _objc_release_x1();
}

- (void)setItemSenders:(id)senders
{
  sendersCopy = senders;
  if (sendersCopy)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = sendersCopy;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemSenders:v8];
  }

  _objc_release_x1();
}

- (void)setItemRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (recipientsCopy)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = recipientsCopy;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemRecipients:v8];
  }

  _objc_release_x1();
}

- (void)setItemShareDirection:(unint64_t)direction
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (!sharedWithYouEvent)
  {
    v6 = objc_alloc_init(MOEventSharedWithYou);
    v7 = self->_sharedWithYouEvent;
    self->_sharedWithYouEvent = v6;

    sharedWithYouEvent = self->_sharedWithYouEvent;
  }

  [(MOEventSharedWithYou *)sharedWithYouEvent setItemShareDirection:direction];
}

- (void)setItemSyndicationStatus:(unint64_t)status
{
  sharedWithYouEvent = self->_sharedWithYouEvent;
  if (!sharedWithYouEvent)
  {
    v6 = objc_alloc_init(MOEventSharedWithYou);
    v7 = self->_sharedWithYouEvent;
    self->_sharedWithYouEvent = v6;

    sharedWithYouEvent = self->_sharedWithYouEvent;
  }

  [(MOEventSharedWithYou *)sharedWithYouEvent setItemSyndicationStatus:status];
}

- (void)setItemAttributionsCount:(id)count
{
  countCopy = count;
  if (countCopy)
  {
    sharedWithYouEvent = self->_sharedWithYouEvent;
    v8 = countCopy;
    if (!sharedWithYouEvent)
    {
      v6 = objc_alloc_init(MOEventSharedWithYou);
      v7 = self->_sharedWithYouEvent;
      self->_sharedWithYouEvent = v6;

      sharedWithYouEvent = self->_sharedWithYouEvent;
    }

    [(MOEventSharedWithYou *)sharedWithYouEvent setItemAttributionsCount:v8];
  }

  _objc_release_x1();
}

- (void)setInteractionContactScore:(id)score
{
  scoreCopy = score;
  if (scoreCopy)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = scoreCopy;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionContactScore:v8];
  }

  _objc_release_x1();
}

- (void)setInteractionScoredContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = contactCopy;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionScoredContact:v8];
  }

  _objc_release_x1();
}

- (void)setInteractionGroupName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = nameCopy;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionGroupName:v8];
  }

  _objc_release_x1();
}

- (void)setInteractionContacts:(id)contacts
{
  contactsCopy = contacts;
  if (contactsCopy)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = contactsCopy;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionContacts:v8];
  }

  _objc_release_x1();
}

- (void)setContactClassificationMap:(id)map
{
  mapCopy = map;
  if (mapCopy)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = mapCopy;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setContactClassificationMap:v8];
  }

  _objc_release_x1();
}

- (void)setInteractionMechanisms:(id)mechanisms
{
  mechanismsCopy = mechanisms;
  if (mechanismsCopy)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = mechanismsCopy;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractionMechanisms:v8];
  }

  _objc_release_x1();
}

- (void)setInteractions:(id)interactions
{
  interactionsCopy = interactions;
  if (interactionsCopy)
  {
    significantContactEvent = self->_significantContactEvent;
    v8 = interactionsCopy;
    if (!significantContactEvent)
    {
      v6 = objc_alloc_init(MOEventSignificantContact);
      v7 = self->_significantContactEvent;
      self->_significantContactEvent = v6;

      significantContactEvent = self->_significantContactEvent;
    }

    [(MOEventSignificantContact *)significantContactEvent setInteractions:v8];
  }

  _objc_release_x1();
}

- (void)setGaPR:(int64_t)r
{
  peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  if (!peopleDiscoveryEvent)
  {
    v6 = objc_alloc_init(MOEventPeopleDiscovery);
    v7 = self->_peopleDiscoveryEvent;
    self->_peopleDiscoveryEvent = v6;

    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
  }

  [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setGaPR:r];
}

- (void)setPCount:(id)count
{
  countCopy = count;
  if (countCopy)
  {
    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    v8 = countCopy;
    if (!peopleDiscoveryEvent)
    {
      v6 = objc_alloc_init(MOEventPeopleDiscovery);
      v7 = self->_peopleDiscoveryEvent;
      self->_peopleDiscoveryEvent = v6;

      peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    }

    [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setPCount:v8];
  }

  _objc_release_x1();
}

- (void)setDensityScore:(id)score
{
  scoreCopy = score;
  if (scoreCopy)
  {
    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    v8 = scoreCopy;
    if (!peopleDiscoveryEvent)
    {
      v6 = objc_alloc_init(MOEventPeopleDiscovery);
      v7 = self->_peopleDiscoveryEvent;
      self->_peopleDiscoveryEvent = v6;

      peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    }

    [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setDensityScore:v8];
  }

  _objc_release_x1();
}

- (void)setDensityScanDuration:(id)duration
{
  durationCopy = duration;
  if (durationCopy)
  {
    peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    v8 = durationCopy;
    if (!peopleDiscoveryEvent)
    {
      v6 = objc_alloc_init(MOEventPeopleDiscovery);
      v7 = self->_peopleDiscoveryEvent;
      self->_peopleDiscoveryEvent = v6;

      peopleDiscoveryEvent = self->_peopleDiscoveryEvent;
    }

    [(MOEventPeopleDiscovery *)peopleDiscoveryEvent setDensityScanDuration:v8];
  }

  _objc_release_x1();
}

- (void)setScoredTopics:(id)topics
{
  topicsCopy = topics;
  if (topicsCopy)
  {
    portraitEvent = self->_portraitEvent;
    v8 = topicsCopy;
    if (!portraitEvent)
    {
      v6 = objc_alloc_init(MOEventPortrait);
      v7 = self->_portraitEvent;
      self->_portraitEvent = v6;

      portraitEvent = self->_portraitEvent;
    }

    [(MOEventPortrait *)portraitEvent setScoredTopics:v8];
  }

  _objc_release_x1();
}

- (void)setMotionType:(unint64_t)type
{
  motionActivityEvent = self->_motionActivityEvent;
  if (!motionActivityEvent)
  {
    v6 = objc_alloc_init(MOEventMotionActivity);
    v7 = self->_motionActivityEvent;
    self->_motionActivityEvent = v6;

    motionActivityEvent = self->_motionActivityEvent;
  }

  [(MOEventMotionActivity *)motionActivityEvent setMotionType:type];
}

- (void)setTrends:(id)trends
{
  trendsCopy = trends;
  if (trendsCopy)
  {
    analyticsEvent = self->_analyticsEvent;
    v8 = trendsCopy;
    if (!analyticsEvent)
    {
      v6 = objc_alloc_init(MOEventAnalytics);
      v7 = self->_analyticsEvent;
      self->_analyticsEvent = v6;

      analyticsEvent = self->_analyticsEvent;
    }

    [(MOEventAnalytics *)analyticsEvent setTrends:v8];
  }

  _objc_release_x1();
}

- (void)setPatterns:(id)patterns
{
  patternsCopy = patterns;
  if (patternsCopy)
  {
    analyticsEvent = self->_analyticsEvent;
    v8 = patternsCopy;
    if (!analyticsEvent)
    {
      v6 = objc_alloc_init(MOEventAnalytics);
      v7 = self->_analyticsEvent;
      self->_analyticsEvent = v6;

      analyticsEvent = self->_analyticsEvent;
    }

    [(MOEventAnalytics *)analyticsEvent setPatterns:v8];
  }

  _objc_release_x1();
}

- (void)setLifeEventCategory:(unint64_t)category
{
  lifeEventsEvent = self->_lifeEventsEvent;
  if (!lifeEventsEvent)
  {
    v6 = objc_alloc_init(MOEventLifeEvents);
    v7 = self->_lifeEventsEvent;
    self->_lifeEventsEvent = v6;

    lifeEventsEvent = self->_lifeEventsEvent;
  }

  [(MOEventLifeEvents *)lifeEventsEvent setLifeEventCategory:category];
}

- (void)setConfidenceScore:(double)score
{
  lifeEventsEvent = self->_lifeEventsEvent;
  if (!lifeEventsEvent)
  {
    v6 = objc_alloc_init(MOEventLifeEvents);
    v7 = self->_lifeEventsEvent;
    self->_lifeEventsEvent = v6;

    lifeEventsEvent = self->_lifeEventsEvent;
  }

  [(MOEventLifeEvents *)lifeEventsEvent setConfidenceScore:score];
}

+ (id)FormatDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateStyle:4];
    [v4 setTimeStyle:3];
    v5 = [v4 stringFromDate:dateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MOEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v6 == 0 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v14 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](self, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v5, v6, v7, v8, [coderCopy decodeIntegerForKey:@"provider"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"category"));
    v15 = v14;
    if (v14)
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierFromProvider"];
      identifierFromProvider = v15->_identifierFromProvider;
      v15->_identifierFromProvider = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
      expirationDate = v15->_expirationDate;
      v15->_expirationDate = v18;

      v15->_fromFirstParty = [coderCopy decodeBoolForKey:@"fromFirstParty"];
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceCreationDate"];
      sourceCreationDate = v15->_sourceCreationDate;
      v15->_sourceCreationDate = v20;

      v15->_rehydrationFailCount = [coderCopy decodeIntegerForKey:@"rehydrationFailCount"];
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundle"];
      appBundle = v15->_appBundle;
      v15->_appBundle = v22;

      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoEvent"];
      photoEvent = v15->_photoEvent;
      v15->_photoEvent = v24;

      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routineEvent"];
      routineEvent = v15->_routineEvent;
      v15->_routineEvent = v26;

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutEvent"];
      workoutEvent = v15->_workoutEvent;
      v15->_workoutEvent = v28;

      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestedEvent"];
      proactiveSuggestedEvent = v15->_proactiveSuggestedEvent;
      v15->_proactiveSuggestedEvent = v30;

      v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"travelEvent"];
      travelEvent = v15->_travelEvent;
      v15->_travelEvent = v32;

      v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaEvent"];
      mediaEvent = v15->_mediaEvent;
      v15->_mediaEvent = v34;

      v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedWithYouEvent"];
      sharedWithYouEvent = v15->_sharedWithYouEvent;
      v15->_sharedWithYouEvent = v36;

      v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"significantContactEvent"];
      significantContactEvent = v15->_significantContactEvent;
      v15->_significantContactEvent = v38;

      v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peopleDiscoveryEvent"];
      peopleDiscoveryEvent = v15->_peopleDiscoveryEvent;
      v15->_peopleDiscoveryEvent = v40;

      v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"portraitEvent"];
      portraitEvent = v15->_portraitEvent;
      v15->_portraitEvent = v42;

      v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"motionActivityEvent"];
      motionActivityEvent = v15->_motionActivityEvent;
      v15->_motionActivityEvent = v44;

      v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsEvent"];
      analyticsEvent = v15->_analyticsEvent;
      v15->_analyticsEvent = v46;

      v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lifeEventsEvent"];
      lifeEventsEvent = v15->_lifeEventsEvent;
      v15->_lifeEventsEvent = v48;

      v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateOfMindEvent"];
      stateOfMindEvent = v15->_stateOfMindEvent;
      v15->_stateOfMindEvent = v50;

      v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenTimeEvent"];
      screenTimeEvent = v15->_screenTimeEvent;
      v15->_screenTimeEvent = v52;

      v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteEvent"];
      inviteEvent = v15->_inviteEvent;
      v15->_inviteEvent = v54;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  eventIdentifier = self->_eventIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:eventIdentifier forKey:@"eventIdentifier"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeInteger:self->_provider forKey:@"provider"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_identifierFromProvider forKey:@"identifierFromProvider"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_fromFirstParty forKey:@"fromFirstParty"];
  [coderCopy encodeObject:self->_sourceCreationDate forKey:@"sourceCreationDate"];
  [coderCopy encodeInteger:self->_rehydrationFailCount forKey:@"rehydrationFailCount"];
  [coderCopy encodeObject:self->_appBundle forKey:@"appBundle"];
  [coderCopy encodeObject:self->_photoEvent forKey:@"photoEvent"];
  [coderCopy encodeObject:self->_routineEvent forKey:@"routineEvent"];
  [coderCopy encodeObject:self->_workoutEvent forKey:@"workoutEvent"];
  [coderCopy encodeObject:self->_proactiveSuggestedEvent forKey:@"proactiveSuggestedEvent"];
  [coderCopy encodeObject:self->_travelEvent forKey:@"travelEvent"];
  [coderCopy encodeObject:self->_mediaEvent forKey:@"mediaEvent"];
  [coderCopy encodeObject:self->_sharedWithYouEvent forKey:@"sharedWithYouEvent"];
  [coderCopy encodeObject:self->_significantContactEvent forKey:@"significantContactEvent"];
  [coderCopy encodeObject:self->_peopleDiscoveryEvent forKey:@"peopleDiscoveryEvent"];
  [coderCopy encodeObject:self->_portraitEvent forKey:@"portraitEvent"];
  [coderCopy encodeObject:self->_motionActivityEvent forKey:@"motionActivityEvent"];
  [coderCopy encodeObject:self->_analyticsEvent forKey:@"analyticsEvent"];
  [coderCopy encodeObject:self->_lifeEventsEvent forKey:@"lifeEventsEvent"];
  [coderCopy encodeObject:self->_stateOfMindEvent forKey:@"stateOfMindEvent"];
  [coderCopy encodeObject:self->_screenTimeEvent forKey:@"screenTimeEvent"];
  [coderCopy encodeObject:self->_inviteEvent forKey:@"inviteEvent"];
}

- (unint64_t)hash
{
  eventIdentifier = [(MOEvent *)self eventIdentifier];
  v3 = [eventIdentifier hash];

  return v3;
}

- (id)copy
{
  v3 = [MOEvent alloc];
  eventIdentifier = [(MOEvent *)self eventIdentifier];
  startDate = [(MOEvent *)self startDate];
  endDate = [(MOEvent *)self endDate];
  creationDate = [(MOEvent *)self creationDate];
  v8 = [(MOEvent *)v3 initWithEventIdentifier:eventIdentifier startDate:startDate endDate:endDate creationDate:creationDate provider:[(MOEvent *)self provider] category:[(MOEvent *)self category]];

  objc_storeStrong(&v8->_expirationDate, self->_expirationDate);
  objc_storeStrong(&v8->_sourceCreationDate, self->_sourceCreationDate);
  objc_storeStrong(&v8->_identifierFromProvider, self->_identifierFromProvider);
  v8->_rehydrationFailCount = self->_rehydrationFailCount;
  objc_storeStrong(&v8->_appBundle, self->_appBundle);
  v9 = [(MOEventPhoto *)self->_photoEvent copy];
  photoEvent = v8->_photoEvent;
  v8->_photoEvent = v9;

  v11 = [(MOEventRoutine *)self->_routineEvent copy];
  routineEvent = v8->_routineEvent;
  v8->_routineEvent = v11;

  v13 = [(MOEventWorkout *)self->_workoutEvent copy];
  workoutEvent = v8->_workoutEvent;
  v8->_workoutEvent = v13;

  v15 = [(MOEventProactiveSuggested *)self->_proactiveSuggestedEvent copy];
  proactiveSuggestedEvent = v8->_proactiveSuggestedEvent;
  v8->_proactiveSuggestedEvent = v15;

  v17 = [(MOEventTravel *)self->_travelEvent copy];
  travelEvent = v8->_travelEvent;
  v8->_travelEvent = v17;

  v19 = [(MOEventMedia *)self->_mediaEvent copy];
  mediaEvent = v8->_mediaEvent;
  v8->_mediaEvent = v19;

  v21 = [(MOEventSharedWithYou *)self->_sharedWithYouEvent copy];
  sharedWithYouEvent = v8->_sharedWithYouEvent;
  v8->_sharedWithYouEvent = v21;

  v23 = [(MOEventSignificantContact *)self->_significantContactEvent copy];
  significantContactEvent = v8->_significantContactEvent;
  v8->_significantContactEvent = v23;

  v25 = [(MOEventPeopleDiscovery *)self->_peopleDiscoveryEvent copy];
  peopleDiscoveryEvent = v8->_peopleDiscoveryEvent;
  v8->_peopleDiscoveryEvent = v25;

  v27 = [(MOEventPortrait *)self->_portraitEvent copy];
  portraitEvent = v8->_portraitEvent;
  v8->_portraitEvent = v27;

  v29 = [(MOEventMotionActivity *)self->_motionActivityEvent copy];
  motionActivityEvent = v8->_motionActivityEvent;
  v8->_motionActivityEvent = v29;

  v31 = [(MOEventAnalytics *)self->_analyticsEvent copy];
  analyticsEvent = v8->_analyticsEvent;
  v8->_analyticsEvent = v31;

  v33 = [(MOEventLifeEvents *)self->_lifeEventsEvent copy];
  lifeEventsEvent = v8->_lifeEventsEvent;
  v8->_lifeEventsEvent = v33;

  v35 = [(MOEventStateOfMind *)self->_stateOfMindEvent copy];
  stateOfMindEvent = v8->_stateOfMindEvent;
  v8->_stateOfMindEvent = v35;

  v37 = [(MOEventScreenTime *)self->_screenTimeEvent copy];
  screenTimeEvent = v8->_screenTimeEvent;
  v8->_screenTimeEvent = v37;

  v39 = [(MOEventInvite *)self->_inviteEvent copy];
  inviteEvent = v8->_inviteEvent;
  v8->_inviteEvent = v39;

  return v8;
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
        eventIdentifier = [(MOEvent *)self eventIdentifier];
        if (eventIdentifier || ([(MOEvent *)v7 eventIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          eventIdentifier2 = [(MOEvent *)self eventIdentifier];
          eventIdentifier3 = [(MOEvent *)v7 eventIdentifier];
          v11 = [eventIdentifier2 isEqual:eventIdentifier3];

          if (eventIdentifier)
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

- (BOOL)isHomeWorkVisit
{
  if (self->_category != 1)
  {
    goto LABEL_5;
  }

  placeUserType = [(MOEvent *)self placeUserType];
  if (placeUserType != 1)
  {
    if ([(MOEvent *)self placeUserType]== 2)
    {
      LOBYTE(placeUserType) = 1;
      return placeUserType;
    }

LABEL_5:
    LOBYTE(placeUserType) = 0;
  }

  return placeUserType;
}

- (id)formatAddressWithFormatOption:(id)option
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatAddressWithFormatOption:option];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatAddressWithFormatOption:];
    }

    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1777 description:{@"request formatAddressWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatAddressWithFormatOption:]", 1777}];

    v5 = 0;
  }

  return v5;
}

- (id)formatLocalityWithFormatOption:(id)option
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatLocalityWithFormatOption:option];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatLocalityWithFormatOption:];
    }

    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1786 description:{@"request formatLocalityWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatLocalityWithFormatOption:]", 1786}];

    v5 = 0;
  }

  return v5;
}

- (id)formatAdministrativeAreaWithFormatOption:(id)option
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatAdministrativeAreaWithFormatOption:option];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatAdministrativeAreaWithFormatOption:];
    }

    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1795 description:{@"request formatLocalityWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatAdministrativeAreaWithFormatOption:]", 1795}];

    v5 = 0;
  }

  return v5;
}

- (id)formatCountryWithFormatOption:(id)option
{
  routineEvent = self->_routineEvent;
  if (routineEvent)
  {
    v5 = [(MOEventRoutine *)routineEvent formatCountryWithFormatOption:option];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEvent formatCountryWithFormatOption:];
    }

    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MOEvent.m" lineNumber:1804 description:{@"request formatCountryWithFormatOption on non routine event instance (in %s:%d)", "-[MOEvent formatCountryWithFormatOption:]", 1804}];

    v5 = 0;
  }

  return v5;
}

- (id)bundleSourceType
{
  v2 = [(MOEvent *)self category]- 1;
  if (v2 <= 0x18 && ((0x1F1E2BFu >> v2) & 1) != 0)
  {
    v3 = *off_100336640[v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)weightedDurationWithTimeZone:(id)zone overnightStartDateHour:(double)hour overnightDurationHours:(double)hours overnightDurationWeight:(double)weight
{
  zoneCopy = zone;
  endDate = [(MOEvent *)self endDate];

  v12 = 0.0;
  if (endDate)
  {
    startDate = [(MOEvent *)self startDate];
    endDate2 = [(MOEvent *)self endDate];
    v15 = [startDate isAfterDate:endDate2];

    if ((v15 & 1) == 0)
    {
      startDate2 = [(MOEvent *)self startDate];
      v17 = [MOTime localTimeOfDate:startDate2 timeZone:zoneCopy];

      endDate3 = [(MOEvent *)self endDate];
      v19 = [MOTime localTimeOfDate:endDate3 timeZone:zoneCopy];

      if (([v17 isAfterDate:v19] & 1) == 0)
      {
        v20 = [[NSDateInterval alloc] initWithStartDate:v17 endDate:v19];
        v21 = [v17 startOfDayWithBoundaryOfADay:10800.0];
        v22 = [v21 dateByAddingTimeInterval:86400.0];

        if ([v20 containsDate:v22])
        {
          v23 = [MOTime dateFromDate:v17 hour:hour];
          v37 = v22;
          if ([v23 isBeforeDate:v17])
          {
            v24 = [v23 dateByAddingTimeInterval:86400.0];

            v23 = v24;
          }

          v25 = v23;
          v26 = 0.0;
          v27 = v25;
          if ([v25 isBeforeDate:v19])
          {
            v28 = hours * 3600.0;
            v29 = v25;
            do
            {
              v30 = [[NSDateInterval alloc] initWithStartDate:v29 duration:v28];
              v31 = [v20 intersectionWithDateInterval:v30];
              v32 = v31;
              if (v31)
              {
                [v31 duration];
                v26 = v26 + v33;
              }

              v27 = [v29 dateByAddingTimeInterval:86400.0];

              v29 = v27;
            }

            while (([v27 isBeforeDate:v19] & 1) != 0);
          }

          [(MOEvent *)self duration];
          v12 = v34 + (weight + -1.0) * v26;

          v22 = v37;
        }

        else
        {
          [(MOEvent *)self duration];
          v12 = v35;
        }
      }
    }
  }

  return v12;
}

- (MOEvent)initWithEventMO:(id)o
{
  if (o)
  {
    oCopy = o;
    eventIdentifier = [oCopy eventIdentifier];
    startDate = [oCopy startDate];
    endDate = [oCopy endDate];
    creationDate = [oCopy creationDate];
    provider = [oCopy provider];
    unsignedIntegerValue = [provider unsignedIntegerValue];
    category = [oCopy category];
    self = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](self, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", eventIdentifier, startDate, endDate, creationDate, unsignedIntegerValue, [category unsignedIntegerValue]);

    sourceCreationDate = [oCopy sourceCreationDate];
    [(MOEvent *)self setSourceCreationDate:sourceCreationDate];

    expirationDate = [oCopy expirationDate];
    [(MOEvent *)self setExpirationDate:expirationDate];

    mode = [oCopy mode];
    -[MOEvent setMode:](self, "setMode:", [mode unsignedIntValue]);

    -[MOEvent setIsInvalid:](self, "setIsInvalid:", [oCopy isInvalid]);
    -[MOEvent setIsHighConfidence:](self, "setIsHighConfidence:", [oCopy isHighConfidence]);
    identifierFromProvider = [oCopy identifierFromProvider];
    [(MOEvent *)self setIdentifierFromProvider:identifierFromProvider];

    trends = [oCopy trends];
    [(MOEvent *)self setTrends:trends];

    patterns = [oCopy patterns];
    [(MOEvent *)self setPatterns:patterns];

    -[MOEvent setIsGComplete:](self, "setIsGComplete:", [oCopy isGatheringComplete]);
    timeAtHomeSubType = [oCopy timeAtHomeSubType];
    -[MOEvent setTimeAtHomeSubType:](self, "setTimeAtHomeSubType:", [timeAtHomeSubType unsignedIntegerValue]);

    rehydrationFailCount = [oCopy rehydrationFailCount];

    -[MOEvent setRehydrationFailCount:](self, "setRehydrationFailCount:", [rehydrationFailCount unsignedIntegerValue]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventIdentifier:startDate:endDate:creationDate:provider:category:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)formatAddressWithFormatOption:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)formatLocalityWithFormatOption:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)formatAdministrativeAreaWithFormatOption:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)formatCountryWithFormatOption:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end