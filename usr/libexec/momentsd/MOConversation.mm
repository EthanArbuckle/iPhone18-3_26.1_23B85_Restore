@interface MOConversation
+ (id)conversationWithContactIdentifier:(id)identifier scoredContact:(id)contact interactions:(id)interactions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversation:(id)conversation;
- (MOConversation)initWithCoder:(id)coder;
- (MOConversation)initWithContactIdentifier:(id)identifier scoredContact:(id)contact interactions:(id)interactions;
- (id)description;
- (id)providerIdFromConcatenatedIdentifiers:(id)identifiers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOConversation

- (MOConversation)initWithContactIdentifier:(id)identifier scoredContact:(id)contact interactions:(id)interactions
{
  identifierCopy = identifier;
  contactCopy = contact;
  interactionsCopy = interactions;
  v13 = interactionsCopy;
  if (identifierCopy)
  {
    if (interactionsCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [MOConversation initWithContactIdentifier:scoredContact:interactions:];
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"MOConversation.m" lineNumber:16 description:{@"Invalid parameter not satisfying: contactIdentifier != nil (in %s:%d)", "-[MOConversation initWithContactIdentifier:scoredContact:interactions:]", 16}];

  if (!v13)
  {
LABEL_7:
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOConversation initWithContactIdentifier:scoredContact:interactions:];
    }

    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MOConversation.m" lineNumber:17 description:{@"Invalid parameter not satisfying: interactions != nil (in %s:%d)", "-[MOConversation initWithContactIdentifier:scoredContact:interactions:]", 17}];
  }

LABEL_10:
  v36.receiver = self;
  v36.super_class = MOConversation;
  v18 = [(MOConversation *)&v36 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contactIdentifier, identifier);
    objc_storeStrong(&v19->_scoredContact, contact);
    objc_storeStrong(&v19->_interactions, interactions);
    v20 = [v13 objectAtIndexedSubscript:0];
    startDate = [v20 startDate];
    startDate = v19->_startDate;
    v19->_startDate = startDate;

    v23 = [v13 objectAtIndexedSubscript:0];
    endDate = [v23 endDate];
    endDate = v19->_endDate;
    v19->_endDate = endDate;

    v26 = objc_alloc_init(NSMutableArray);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __71__MOConversation_initWithContactIdentifier_scoredContact_interactions___block_invoke;
    v33[3] = &unk_1003387E8;
    v27 = v19;
    v34 = v27;
    v35 = v26;
    v28 = v26;
    [v13 enumerateObjectsUsingBlock:v33];
    v29 = [v28 componentsJoinedByString:@"|"];
    v30 = [(MOConversation *)v27 providerIdFromConcatenatedIdentifiers:v29];
    providerId = v27->_providerId;
    v27->_providerId = v30;
  }

  return v19;
}

void __71__MOConversation_initWithContactIdentifier_scoredContact_interactions___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v19 startDate];
  v5 = [v3 earlierDate:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = *(*(a1 + 32) + 40);
  v9 = [v19 endDate];
  v10 = [v8 laterDate:v9];
  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v19 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = [v19 identifier];
    v16 = [v15 length];

    if (v16)
    {
      v17 = *(a1 + 40);
      v18 = [v19 identifier];
      [v17 addObject:v18];
    }
  }
}

+ (id)conversationWithContactIdentifier:(id)identifier scoredContact:(id)contact interactions:(id)interactions
{
  interactionsCopy = interactions;
  contactCopy = contact;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithContactIdentifier:identifierCopy scoredContact:contactCopy interactions:interactionsCopy];

  return v11;
}

- (id)providerIdFromConcatenatedIdentifiers:(id)identifiers
{
  if (!identifiers)
  {
    bytes = 0;
    goto LABEL_9;
  }

  v3 = [identifiers dataUsingEncoding:2];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  bytes = [v3 bytes];
  [v4 length];
  if (bytes)
  {
    if ([v4 length])
    {
      _PASMurmur3_x86_128();
      bytes = _PASBytesToHex();
      goto LABEL_8;
    }

LABEL_7:
    bytes = 0;
  }

LABEL_8:

LABEL_9:

  return bytes;
}

- (BOOL)isEqualToConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = conversationCopy;
  if (!conversationCopy)
  {
    goto LABEL_11;
  }

  v6 = self->_contactIdentifier == 0;
  contactIdentifier = [conversationCopy contactIdentifier];
  v8 = contactIdentifier != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    contactIdentifier2 = [v5 contactIdentifier];
    v11 = [(NSString *)contactIdentifier isEqual:contactIdentifier2];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_scoredContact == 0;
  scoredContact = [v5 scoredContact];
  v14 = scoredContact != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  scoredContact = self->_scoredContact;
  if (scoredContact)
  {
    scoredContact2 = [v5 scoredContact];
    v17 = [(PPScoredContact *)scoredContact isEqual:scoredContact2];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_interactions == 0;
  interactions = [v5 interactions];
  v20 = interactions != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    interactions = self->_interactions;
    if (interactions)
    {
      interactions2 = [v5 interactions];
      v23 = [(NSArray *)interactions isEqual:interactions2];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MOConversation *)self isEqualToConversation:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = [(PPScoredContact *)self->_scoredContact hash]+ 32 * v3 - v3;
  return [(NSArray *)self->_interactions hash]- v4 + 32 * v4;
}

- (MOConversation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scoredContact"];
      if (!v6)
      {
        error = [coderCopy error];

        if (error)
        {
          selfCopy = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v7 = [NSSet alloc];
      v8 = objc_opt_class();
      v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"interactions"];

      if (!v10)
      {
        error2 = [coderCopy error];

        if (error2)
        {
          goto LABEL_16;
        }

        v27 = NSLocalizedDescriptionKey;
        v28 = @"Retrieved nil serialized value for nonnull MOConversation.interactions";
        v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v16 = [[NSError alloc] initWithDomain:@"MOConversationOCNTErrorDomain" code:2 userInfo:v15];
        [coderCopy failWithError:v16];
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = [(MOConversation *)self initWithContactIdentifier:v5 scoredContact:v6 interactions:v10];
        selfCopy = self;
LABEL_17:

        goto LABEL_18;
      }

      v21 = objc_opt_class();
      v15 = NSStringFromClass(v21);
      v22 = objc_opt_class();
      v16 = NSStringFromClass(v22);
      v17 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOConversation key interactions (expected %@, decoded %@)", v15, v16, 0];
      v25 = NSLocalizedDescriptionKey;
      v26 = v17;
      v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v24 = [[NSError alloc] initWithDomain:@"MOConversationOCNTErrorDomain" code:3 userInfo:v23];
      [coderCopy failWithError:v24];
    }

    else
    {
      v13 = objc_opt_class();
      v6 = NSStringFromClass(v13);
      v14 = objc_opt_class();
      v10 = NSStringFromClass(v14);
      v15 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOConversation key contactIdentifier (expected %@, decoded %@)", v6, v10, 0];
      v29 = NSLocalizedDescriptionKey;
      v30 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v17 = [[NSError alloc] initWithDomain:@"MOConversationOCNTErrorDomain" code:3 userInfo:v16];
      [coderCopy failWithError:v17];
    }

LABEL_11:
LABEL_16:
    selfCopy = 0;
    goto LABEL_17;
  }

  error3 = [coderCopy error];

  if (!error3)
  {
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Retrieved nil serialized value for nonnull MOConversation.contactIdentifier";
    v6 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v10 = [[NSError alloc] initWithDomain:@"MOConversationOCNTErrorDomain" code:2 userInfo:v6];
    [coderCopy failWithError:v10];
    goto LABEL_16;
  }

  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactIdentifier = self->_contactIdentifier;
  v8 = coderCopy;
  if (contactIdentifier)
  {
    [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];
    coderCopy = v8;
  }

  scoredContact = self->_scoredContact;
  if (scoredContact)
  {
    [v8 encodeObject:scoredContact forKey:@"scoredContact"];
    coderCopy = v8;
  }

  interactions = self->_interactions;
  if (interactions)
  {
    [v8 encodeObject:interactions forKey:@"interactions"];
    coderCopy = v8;
  }
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"<MOConversation | contactIdentifier:%@ scoredContact:%@ interactions:%@>", self->_contactIdentifier, self->_scoredContact, self->_interactions];

  return v2;
}

- (void)initWithContactIdentifier:scoredContact:interactions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 16;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactIdentifier != nil (in %s:%d)", v1, 0x12u);
}

- (void)initWithContactIdentifier:scoredContact:interactions:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 17;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: interactions != nil (in %s:%d)", v1, 0x12u);
}

@end