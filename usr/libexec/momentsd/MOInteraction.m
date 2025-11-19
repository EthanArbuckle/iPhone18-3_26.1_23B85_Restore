@interface MOInteraction
+ (int64_t)convertDirection:(int64_t)a3;
+ (int64_t)convertMechanism:(int64_t)a3;
- (MOInteraction)initWithCDInteraction:(id)a3 meIdentifier:(id)a4;
- (MOInteraction)initWithCoder:(id)a3;
- (MOInteraction)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 mechanism:(int64_t)a6 direction:(int64_t)a7 bundleId:(id)a8 groupName:(id)a9 sender:(id)a10 recipients:(id)a11;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOInteraction

+ (int64_t)convertMechanism:(int64_t)a3
{
  if ((a3 - 1) >= 0x15)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)convertDirection:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (MOInteraction)initWithCDInteraction:(id)a3 meIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 uuid];

  if (v9)
  {
    v45 = self;
    if ([v7 direction] == 1 || (objc_msgSend(v7, "sender"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = 0;
    }

    else
    {
      v11 = v10;
      v12 = [v7 sender];
      [v12 personId];
      v14 = v13 = v7;
      if ([v8 containsObject:v14])
      {
      }

      else
      {
        v19 = [v13 sender];
        v20 = [v19 identifier];
        v21 = [v8 containsObject:v20];

        if ((v21 & 1) == 0)
        {
          v22 = [MOContact alloc];
          v23 = [v13 sender];
          v15 = [(MOContact *)v22 initWithCDContact:v23];

          v24 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
          v7 = v13;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [MOInteraction(_CDInteraction) initWithCDInteraction:v13 meIdentifier:v24];
          }

          goto LABEL_15;
        }
      }

      v15 = 0;
      v7 = v13;
    }

LABEL_15:
    v44 = v15;
    v48 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v46 = v7;
    v25 = [v7 recipients];
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
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
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v49 + 1) + 8 * v29);
        if (v30)
        {
          v31 = [*(*(&v49 + 1) + 8 * v29) personId];
          if (([v8 containsObject:v31] & 1) == 0)
          {
            v32 = [v30 identifier];
            v33 = [v8 containsObject:v32];

            if (v33)
            {
              goto LABEL_28;
            }

            v31 = [[MOContact alloc] initWithCDContact:v30];
            v34 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v35 = [v30 identifier];
              v36 = [v30 contactIdType];
              *buf = 138412546;
              v54 = v35;
              v55 = 2048;
              v56 = v36;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "recipient with ID, %@, CDContactIDType, %ld", buf, 0x16u);
            }

            if (v31)
            {
              [v48 addObject:v31];
            }
          }
        }

LABEL_28:
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (!v27)
      {
LABEL_30:

        v7 = v46;
        v37 = [v46 uuid];
        v38 = [v46 startDate];
        v47 = [v46 endDate];
        v43 = +[MOInteraction convertMechanism:](MOInteraction, "convertMechanism:", [v46 mechanism]);
        v39 = +[MOInteraction convertDirection:](MOInteraction, "convertDirection:", [v46 direction]);
        v40 = [v46 bundleId];
        v41 = [v46 groupName];
        v17 = v44;
        self = [(MOInteraction *)v45 initWithIdentifier:v37 startDate:v38 endDate:v47 mechanism:v43 direction:v39 bundleId:v40 groupName:v41 sender:v44 recipients:v48];

        v18 = self;
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
  v18 = 0;
LABEL_31:

  return v18;
}

- (MOInteraction)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 mechanism:(int64_t)a6 direction:(int64_t)a7 bundleId:(id)a8 groupName:(id)a9 sender:(id)a10 recipients:(id)a11
{
  v16 = a3;
  v48 = a4;
  v17 = a4;
  v49 = a5;
  v18 = a5;
  v52 = a8;
  v19 = a8;
  v54 = a9;
  v20 = a10;
  v21 = a11;
  v53 = v21;
  if (v16)
  {
    v22 = v21;
    v46 = v16;
    v23 = objc_alloc_init(NSMutableArray);
    if (v20)
    {
      v24 = [v20 personId];

      if (v24)
      {
        v25 = [v20 personId];
LABEL_10:
        v29 = v25;
        [v23 addObject:v25];

        goto LABEL_11;
      }

      v28 = [v20 identifier];

      if (v28)
      {
        v25 = [v20 identifier];
        goto LABEL_10;
      }
    }

LABEL_11:
    v43 = v19;
    v44 = v18;
    v45 = v17;
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
        v36 = [v35 personId];

        if (v36)
        {
          v37 = [v35 personId];
        }

        else
        {
          v38 = [v35 identifier];

          if (!v38)
          {
            continue;
          }

          v37 = [v35 identifier];
        }

        v39 = v37;
        [v23 addObject:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (!v32)
      {
LABEL_23:

        v55.receiver = self;
        v55.super_class = MOInteraction;
        v40 = [(MOGenericInteraction *)&v55 initWithParticipants:v23];
        v41 = v40;
        v16 = v46;
        v19 = v43;
        if (v40)
        {
          objc_storeStrong(&v40->_identifier, a3);
          objc_storeStrong(&v41->_startDate, v48);
          objc_storeStrong(&v41->_endDate, v49);
          v41->_mechanism = a6;
          v41->_direction = a7;
          objc_storeStrong(&v41->_bundleId, v52);
          objc_storeStrong(&v41->_groupName, a9);
          objc_storeStrong(&v41->_sender, a10);
          objc_storeStrong(&v41->_recipients, a11);
        }

        self = v41;
        v27 = self;
        v18 = v44;
        v17 = v45;
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
  v27 = 0;
LABEL_26:

  return v27;
}

- (id)description
{
  v3 = [(MOInteraction *)self sender];
  v21 = [v3 description];

  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(MOInteraction *)self recipients];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v22 + 1) + 8 * i) description];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:@""];;
  v12 = [(MOInteraction *)self identifier];
  v13 = [(MOInteraction *)self startDate];
  v14 = [(MOInteraction *)self endDate];
  v15 = [(MOInteraction *)self mechanism];
  v16 = [(MOInteraction *)self direction];
  v17 = [(MOInteraction *)self bundleId];
  v18 = [(MOInteraction *)self groupName];
  v19 = [NSString stringWithFormat:@"identifier, %@, startDate, %@, endDate, %@, mechanism, %lu, direction, %lu, bundleId, %@, group name, %@, sender, <%@>, receipts, <%@>", v12, v13, v14, v15, v16, v17, v18, v21, v11];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeInteger:self->_mechanism forKey:@"mechanism"];
  [v5 encodeInteger:self->_direction forKey:@"direction"];
  [v5 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_groupName forKey:@"groupName"];
  [v5 encodeObject:self->_sender forKey:@"sender"];
  [v5 encodeObject:self->_recipients forKey:@"recipients"];
}

- (MOInteraction)initWithCoder:(id)a3
{
  v3 = a3;
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v15 = [v3 decodeIntegerForKey:@"mechanism"];
  v6 = [v3 decodeIntegerForKey:@"direction"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"recipients"];

  v13 = [(MOInteraction *)self initWithIdentifier:v16 startDate:v4 endDate:v5 mechanism:v15 direction:v6 bundleId:v7 groupName:v8 sender:v9 recipients:v12];
  return v13;
}

@end