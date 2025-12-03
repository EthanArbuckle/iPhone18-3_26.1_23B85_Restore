@interface MOInteraction
+ (int64_t)convertDirection:(int64_t)direction;
+ (int64_t)convertMechanism:(int64_t)mechanism;
- (MOInteraction)initWithCDInteraction:(id)interaction meIdentifier:(id)identifier;
- (MOInteraction)initWithCoder:(id)coder;
- (MOInteraction)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate mechanism:(int64_t)mechanism direction:(int64_t)direction bundleId:(id)id groupName:(id)name sender:(id)self0 recipients:(id)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOInteraction

+ (int64_t)convertMechanism:(int64_t)mechanism
{
  if ((mechanism - 1) >= 0x15)
  {
    return 0;
  }

  else
  {
    return mechanism;
  }
}

+ (int64_t)convertDirection:(int64_t)direction
{
  if ((direction - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return direction;
  }
}

- (MOInteraction)initWithCDInteraction:(id)interaction meIdentifier:(id)identifier
{
  interactionCopy = interaction;
  identifierCopy = identifier;
  uuid = [interactionCopy uuid];

  if (uuid)
  {
    selfCopy = self;
    if ([interactionCopy direction] == 1 || (objc_msgSend(interactionCopy, "sender"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = 0;
    }

    else
    {
      v11 = v10;
      sender = [interactionCopy sender];
      [sender personId];
      v14 = v13 = interactionCopy;
      if ([identifierCopy containsObject:v14])
      {
      }

      else
      {
        sender2 = [v13 sender];
        identifier = [sender2 identifier];
        v21 = [identifierCopy containsObject:identifier];

        if ((v21 & 1) == 0)
        {
          v22 = [MOContact alloc];
          sender3 = [v13 sender];
          v15 = [(MOContact *)v22 initWithCDContact:sender3];

          v24 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
          interactionCopy = v13;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [MOInteraction(_CDInteraction) initWithCDInteraction:v13 meIdentifier:v24];
          }

          goto LABEL_15;
        }
      }

      v15 = 0;
      interactionCopy = v13;
    }

LABEL_15:
    v44 = v15;
    v48 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v46 = interactionCopy;
    recipients = [interactionCopy recipients];
    v26 = [recipients countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (!v26)
    {
      goto LABEL_30;
    }

    v27 = v26;
    v28 = *v50;
    while (1)
    {
      v29 = 0;
      do
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(recipients);
        }

        v30 = *(*(&v49 + 1) + 8 * v29);
        if (v30)
        {
          personId = [*(*(&v49 + 1) + 8 * v29) personId];
          if (([identifierCopy containsObject:personId] & 1) == 0)
          {
            identifier2 = [v30 identifier];
            v33 = [identifierCopy containsObject:identifier2];

            if (v33)
            {
              goto LABEL_28;
            }

            personId = [[MOContact alloc] initWithCDContact:v30];
            v34 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              identifier3 = [v30 identifier];
              contactIdType = [v30 contactIdType];
              *buf = 138412546;
              v54 = identifier3;
              v55 = 2048;
              v56 = contactIdType;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "recipient with ID, %@, CDContactIDType, %ld", buf, 0x16u);
            }

            if (personId)
            {
              [v48 addObject:personId];
            }
          }
        }

LABEL_28:
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [recipients countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (!v27)
      {
LABEL_30:

        interactionCopy = v46;
        uuid2 = [v46 uuid];
        startDate = [v46 startDate];
        endDate = [v46 endDate];
        v43 = +[MOInteraction convertMechanism:](MOInteraction, "convertMechanism:", [v46 mechanism]);
        v39 = +[MOInteraction convertDirection:](MOInteraction, "convertDirection:", [v46 direction]);
        bundleId = [v46 bundleId];
        groupName = [v46 groupName];
        v17 = v44;
        self = [(MOInteraction *)selfCopy initWithIdentifier:uuid2 startDate:startDate endDate:endDate mechanism:v43 direction:v39 bundleId:bundleId groupName:groupName sender:v44 recipients:v48];

        selfCopy2 = self;
        goto LABEL_31;
      }
    }
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [MOInteraction(_CDInteraction) initWithCDInteraction:v16 meIdentifier:?];
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"MOInteraction+_CDInteraction.m" lineNumber:85 description:@"Invalid parameter not satisfying: cdInteraction.uuid"];
  selfCopy2 = 0;
LABEL_31:

  return selfCopy2;
}

- (MOInteraction)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate mechanism:(int64_t)mechanism direction:(int64_t)direction bundleId:(id)id groupName:(id)name sender:(id)self0 recipients:(id)self1
{
  identifierCopy = identifier;
  dateCopy = date;
  dateCopy2 = date;
  endDateCopy = endDate;
  endDateCopy2 = endDate;
  idCopy = id;
  idCopy2 = id;
  nameCopy = name;
  senderCopy = sender;
  recipientsCopy = recipients;
  v53 = recipientsCopy;
  if (identifierCopy)
  {
    v22 = recipientsCopy;
    v46 = identifierCopy;
    v23 = objc_alloc_init(NSMutableArray);
    if (senderCopy)
    {
      personId = [senderCopy personId];

      if (personId)
      {
        personId2 = [senderCopy personId];
LABEL_10:
        v29 = personId2;
        [v23 addObject:personId2];

        goto LABEL_11;
      }

      identifier = [senderCopy identifier];

      if (identifier)
      {
        personId2 = [senderCopy identifier];
        goto LABEL_10;
      }
    }

LABEL_11:
    v43 = idCopy2;
    v44 = endDateCopy2;
    v45 = dateCopy2;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v30 = v22;
    v31 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (!v31)
    {
      goto LABEL_23;
    }

    v32 = v31;
    v33 = *v57;
    while (1)
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v57 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v56 + 1) + 8 * i);
        personId3 = [v35 personId];

        if (personId3)
        {
          personId4 = [v35 personId];
        }

        else
        {
          identifier2 = [v35 identifier];

          if (!identifier2)
          {
            continue;
          }

          personId4 = [v35 identifier];
        }

        v39 = personId4;
        [v23 addObject:personId4];
      }

      v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (!v32)
      {
LABEL_23:

        v55.receiver = self;
        v55.super_class = MOInteraction;
        v40 = [(MOGenericInteraction *)&v55 initWithParticipants:v23];
        v41 = v40;
        identifierCopy = v46;
        idCopy2 = v43;
        if (v40)
        {
          objc_storeStrong(&v40->_identifier, identifier);
          objc_storeStrong(&v41->_startDate, dateCopy);
          objc_storeStrong(&v41->_endDate, endDateCopy);
          v41->_mechanism = mechanism;
          v41->_direction = direction;
          objc_storeStrong(&v41->_bundleId, idCopy);
          objc_storeStrong(&v41->_groupName, name);
          objc_storeStrong(&v41->_sender, sender);
          objc_storeStrong(&v41->_recipients, recipients);
        }

        self = v41;
        selfCopy = self;
        endDateCopy2 = v44;
        dateCopy2 = v45;
        goto LABEL_26;
      }
    }
  }

  v26 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [MOInteraction initWithIdentifier:v26 startDate:? endDate:? mechanism:? direction:? bundleId:? groupName:? sender:? recipients:?];
  }

  v23 = +[NSAssertionHandler currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"MOInteraction.m" lineNumber:34 description:@"Invalid parameter not satisfying: identifier"];
  selfCopy = 0;
LABEL_26:

  return selfCopy;
}

- (id)description
{
  sender = [(MOInteraction *)self sender];
  v21 = [sender description];

  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  recipients = [(MOInteraction *)self recipients];
  v6 = [recipients countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(recipients);
        }

        v10 = [*(*(&v22 + 1) + 8 * i) description];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [recipients countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:@""];;
  identifier = [(MOInteraction *)self identifier];
  startDate = [(MOInteraction *)self startDate];
  endDate = [(MOInteraction *)self endDate];
  mechanism = [(MOInteraction *)self mechanism];
  direction = [(MOInteraction *)self direction];
  bundleId = [(MOInteraction *)self bundleId];
  groupName = [(MOInteraction *)self groupName];
  v19 = [NSString stringWithFormat:@"identifier, %@, startDate, %@, endDate, %@, mechanism, %lu, direction, %lu, bundleId, %@, group name, %@, sender, <%@>, receipts, <%@>", identifier, startDate, endDate, mechanism, direction, bundleId, groupName, v21, v11];

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_mechanism forKey:@"mechanism"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
  [coderCopy encodeObject:self->_sender forKey:@"sender"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
}

- (MOInteraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v15 = [coderCopy decodeIntegerForKey:@"mechanism"];
  v6 = [coderCopy decodeIntegerForKey:@"direction"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"recipients"];

  v13 = [(MOInteraction *)self initWithIdentifier:v16 startDate:v4 endDate:v5 mechanism:v15 direction:v6 bundleId:v7 groupName:v8 sender:v9 recipients:v12];
  return v13;
}

@end