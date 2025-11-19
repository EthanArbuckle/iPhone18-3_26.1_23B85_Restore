@interface MOConversation
+ (id)conversationWithContactIdentifier:(id)a3 scoredContact:(id)a4 interactions:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversation:(id)a3;
- (MOConversation)initWithCoder:(id)a3;
- (MOConversation)initWithContactIdentifier:(id)a3 scoredContact:(id)a4 interactions:(id)a5;
- (id)description;
- (id)providerIdFromConcatenatedIdentifiers:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOConversation

- (MOConversation)initWithContactIdentifier:(id)a3 scoredContact:(id)a4 interactions:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    if (v12)
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
    objc_storeStrong(&v18->_contactIdentifier, a3);
    objc_storeStrong(&v19->_scoredContact, a4);
    objc_storeStrong(&v19->_interactions, a5);
    v20 = [v13 objectAtIndexedSubscript:0];
    v21 = [v20 startDate];
    startDate = v19->_startDate;
    v19->_startDate = v21;

    v23 = [v13 objectAtIndexedSubscript:0];
    v24 = [v23 endDate];
    endDate = v19->_endDate;
    v19->_endDate = v24;

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

+ (id)conversationWithContactIdentifier:(id)a3 scoredContact:(id)a4 interactions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContactIdentifier:v10 scoredContact:v9 interactions:v8];

  return v11;
}

- (id)providerIdFromConcatenatedIdentifiers:(id)a3
{
  if (!a3)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v3 = [a3 dataUsingEncoding:2];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = [v3 bytes];
  [v4 length];
  if (v5)
  {
    if ([v4 length])
    {
      _PASMurmur3_x86_128();
      v5 = _PASBytesToHex();
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

LABEL_9:

  return v5;
}

- (BOOL)isEqualToConversation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_contactIdentifier == 0;
  v7 = [v4 contactIdentifier];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    v10 = [v5 contactIdentifier];
    v11 = [(NSString *)contactIdentifier isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_scoredContact == 0;
  v13 = [v5 scoredContact];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  scoredContact = self->_scoredContact;
  if (scoredContact)
  {
    v16 = [v5 scoredContact];
    v17 = [(PPScoredContact *)scoredContact isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_interactions == 0;
  v19 = [v5 interactions];
  v20 = v19 != 0;

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
      v22 = [v5 interactions];
      v23 = [(NSArray *)interactions isEqual:v22];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (MOConversation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scoredContact"];
      if (!v6)
      {
        v18 = [v4 error];

        if (v18)
        {
          v11 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v7 = [NSSet alloc];
      v8 = objc_opt_class();
      v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"interactions"];

      if (!v10)
      {
        v19 = [v4 error];

        if (v19)
        {
          goto LABEL_16;
        }

        v27 = NSLocalizedDescriptionKey;
        v28 = @"Retrieved nil serialized value for nonnull MOConversation.interactions";
        v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v16 = [[NSError alloc] initWithDomain:@"MOConversationOCNTErrorDomain" code:2 userInfo:v15];
        [v4 failWithError:v16];
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = [(MOConversation *)self initWithContactIdentifier:v5 scoredContact:v6 interactions:v10];
        v11 = self;
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
      [v4 failWithError:v24];
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
      [v4 failWithError:v17];
    }

LABEL_11:
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v12 = [v4 error];

  if (!v12)
  {
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Retrieved nil serialized value for nonnull MOConversation.contactIdentifier";
    v6 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v10 = [[NSError alloc] initWithDomain:@"MOConversationOCNTErrorDomain" code:2 userInfo:v6];
    [v4 failWithError:v10];
    goto LABEL_16;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  contactIdentifier = self->_contactIdentifier;
  v8 = v4;
  if (contactIdentifier)
  {
    [v4 encodeObject:contactIdentifier forKey:@"contactIdentifier"];
    v4 = v8;
  }

  scoredContact = self->_scoredContact;
  if (scoredContact)
  {
    [v8 encodeObject:scoredContact forKey:@"scoredContact"];
    v4 = v8;
  }

  interactions = self->_interactions;
  if (interactions)
  {
    [v8 encodeObject:interactions forKey:@"interactions"];
    v4 = v8;
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