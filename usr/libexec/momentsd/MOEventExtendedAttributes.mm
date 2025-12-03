@interface MOEventExtendedAttributes
+ (id)lowerCaseArrayOfStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (MOEventExtendedAttributes)initWithCoder:(id)coder;
- (MOEventExtendedAttributes)initWithLocalIdentifier:(id)identifier;
- (MOEventExtendedAttributes)initWithMoment:(id)moment;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventExtendedAttributes

- (MOEventExtendedAttributes)initWithLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOEventExtendedAttributes initWithLocalIdentifier:v6];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOEventExtendedAtrributes.m" lineNumber:216 description:{@"Invalid parameter not satisfying: localIdentifier (in %s:%d)", "-[MOEventExtendedAttributes initWithLocalIdentifier:]", 216}];
  }

  v12.receiver = self;
  v12.super_class = MOEventExtendedAttributes;
  v8 = [(MOEventExtendedAttributes *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    photoMomentLocalIdentifier = v8->_photoMomentLocalIdentifier;
    v8->_photoMomentLocalIdentifier = v9;
  }

  return v8;
}

+ (id)lowerCaseArrayOfStrings:(id)strings
{
  stringsCopy = strings;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        lowercaseString = [*(*(&v12 + 1) + 8 * i) lowercaseString];
        [v4 addObject:lowercaseString];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (MOEventExtendedAttributes)initWithMoment:(id)moment
{
  momentCopy = moment;
  v5 = [momentCopy objectForKey:@"localIdentifier"];
  v6 = [(MOEventExtendedAttributes *)self initWithLocalIdentifier:v5];
  if (v6)
  {
    v42 = v5;
    v7 = [momentCopy objectForKey:@"inferences"];
    v8 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:v7];
    v41 = v7;
    if (v7)
    {
      v9 = [[NSMutableArray alloc] initWithArray:v8 copyItems:1];
      photoMomentInferences = v6->_photoMomentInferences;
      v6->_photoMomentInferences = v9;
    }

    v40 = v8;
    v11 = [momentCopy objectForKey:@"holidays"];
    v12 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:v11];
    v39 = v11;
    if (v11)
    {
      v13 = [[NSMutableArray alloc] initWithArray:v12 copyItems:1];
      photoMomentHolidays = v6->_photoMomentHolidays;
      v6->_photoMomentHolidays = v13;
    }

    v38 = v12;
    v15 = [momentCopy objectForKey:@"publicEvents"];
    if (v15)
    {
      v16 = objc_opt_new();
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v17 = v15;
      v18 = v15;
      v19 = [v18 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v48;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [[MOPublicEvent alloc] initWithEventDictionary:*(*(&v47 + 1) + 8 * i)];
            [v16 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v20);
      }

      v24 = [[NSArray alloc] initWithArray:v16 copyItems:1];
      photoMomentPublicEvents = v6->_photoMomentPublicEvents;
      v6->_photoMomentPublicEvents = v24;

      v15 = v17;
    }

    v26 = [momentCopy objectForKey:@"persons"];
    if (v26)
    {
      v27 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v28 = v26;
      v29 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v44;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v44 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [[MOPerson alloc] initWithPersonDictionary:*(*(&v43 + 1) + 8 * j)];
            v34 = v33;
            if (v33)
            {
              [(MOPerson *)v33 setSourceEventAccessType:3];
              [v27 addObject:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v30);
      }

      v35 = [[NSArray alloc] initWithArray:v27 copyItems:1];
      photoMomentPersons = v6->_photoMomentPersons;
      v6->_photoMomentPersons = v35;
    }

    v5 = v42;
  }

  return v6;
}

- (id)description
{
  photoMomentLocalIdentifier = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
  photoMomentInferences = [(MOEventExtendedAttributes *)self photoMomentInferences];
  photoMomentHolidays = [(MOEventExtendedAttributes *)self photoMomentHolidays];
  photoMomentPublicEvents = [(MOEventExtendedAttributes *)self photoMomentPublicEvents];
  v7 = [photoMomentPublicEvents description];
  photoMomentPersons = [(MOEventExtendedAttributes *)self photoMomentPersons];
  v9 = [photoMomentPersons description];
  momentPropertyOfAssets = [(MOEventExtendedAttributes *)self momentPropertyOfAssets];
  v11 = [momentPropertyOfAssets description];
  v12 = [NSString stringWithFormat:@"<MOEventExtendedAttributes localIdentifier, %@, photoMomentInferences, %@, photoMomentHolidays, %@, photoMomentPublicEvents, %@, photoMomentPersons, %@, momentPropertyOfAssets, %@>", photoMomentLocalIdentifier, photoMomentInferences, photoMomentHolidays, v7, v9, v11];

  return v12;
}

- (MOEventExtendedAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoMomentLocalIdentifier"];
  if (v5)
  {
    v6 = [(MOEventExtendedAttributes *)self initWithLocalIdentifier:v5];
    if (v6)
    {
      v7 = objc_opt_class();
      v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
      v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"photoMomentInferences"];
      photoMomentInferences = v6->_photoMomentInferences;
      v6->_photoMomentInferences = v9;

      v11 = objc_opt_class();
      v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"photoMomentHolidays"];
      photoMomentHolidays = v6->_photoMomentHolidays;
      v6->_photoMomentHolidays = v13;

      v15 = objc_opt_class();
      v16 = [NSSet setWithObjects:v15, objc_opt_class(), 0];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"photoMomentPublicEvents"];
      photoMomentPublicEvents = v6->_photoMomentPublicEvents;
      v6->_photoMomentPublicEvents = v17;

      v19 = objc_opt_class();
      v20 = [NSSet setWithObjects:v19, objc_opt_class(), 0];
      v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"photoMomentPersons"];
      photoMomentPersons = v6->_photoMomentPersons;
      v6->_photoMomentPersons = v21;

      v23 = objc_opt_class();
      v24 = [NSSet setWithObjects:v23, objc_opt_class(), 0];
      v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"momentPropertyOfAssets"];
      momentPropertyOfAssets = v6->_momentPropertyOfAssets;
      v6->_momentPropertyOfAssets = v25;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  photoMomentLocalIdentifier = self->_photoMomentLocalIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:photoMomentLocalIdentifier forKey:@"photoMomentLocalIdentifier"];
  [coderCopy encodeObject:self->_photoMomentInferences forKey:@"photoMomentInferences"];
  [coderCopy encodeObject:self->_photoMomentHolidays forKey:@"photoMomentHolidays"];
  [coderCopy encodeObject:self->_photoMomentPublicEvents forKey:@"photoMomentPublicEvents"];
  [coderCopy encodeObject:self->_photoMomentPersons forKey:@"photoMomentPersons"];
  [coderCopy encodeObject:self->_momentPropertyOfAssets forKey:@"momentPropertyOfAssets"];
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
        photoMomentLocalIdentifier = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
        if (photoMomentLocalIdentifier || ([(MOEventExtendedAttributes *)v7 photoMomentLocalIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          photoMomentLocalIdentifier2 = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
          photoMomentLocalIdentifier3 = [(MOEventExtendedAttributes *)v7 photoMomentLocalIdentifier];
          v11 = [photoMomentLocalIdentifier2 isEqual:photoMomentLocalIdentifier3];

          if (photoMomentLocalIdentifier)
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

- (void)initWithLocalIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOEventExtendedAttributes initWithLocalIdentifier:]";
  v3 = 1024;
  v4 = 216;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: localIdentifier (in %s:%d)", &v1, 0x12u);
}

@end