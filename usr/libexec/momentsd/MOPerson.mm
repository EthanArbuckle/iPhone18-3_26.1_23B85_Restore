@interface MOPerson
- (BOOL)isEqual:(id)equal;
- (MOPerson)initWithCoder:(id)coder;
- (MOPerson)initWithLocalIdentifier:(id)identifier name:(id)name contactIdentifier:(id)contactIdentifier family:(id)family isPHPersonTypeImportant:(BOOL)important isMePerson:(BOOL)person mePersonIdentified:(BOOL)identified personRelationships:(id)self0 priorityScore:(double)self1 significanceScore:(double)self2;
- (MOPerson)initWithPersonDictionary:(id)dictionary;
- (MOPerson)initWithPersonMO:(id)o;
- (id)description;
- (int64_t)comparePersons:(id)persons;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOPerson

- (unint64_t)hash
{
  localIdentifier = [(MOPerson *)self localIdentifier];
  if (localIdentifier)
  {
    localIdentifier2 = [(MOPerson *)self localIdentifier];
    v5 = [localIdentifier2 hash];
  }

  else
  {
    v5 = 0;
  }

  name = [(MOPerson *)self name];
  if (name)
  {
    name2 = [(MOPerson *)self name];
    v8 = [name2 hash];
  }

  else
  {
    v8 = 0;
  }

  givenName = [(MOPerson *)self givenName];
  if (givenName)
  {
    givenName2 = [(MOPerson *)self givenName];
    v11 = [givenName2 hash];
  }

  else
  {
    v11 = 0;
  }

  contactIdentifier = [(MOPerson *)self contactIdentifier];
  if (contactIdentifier)
  {
    contactIdentifier2 = [(MOPerson *)self contactIdentifier];
    v14 = [contactIdentifier2 hash];
  }

  else
  {
    v14 = 0;
  }

  return v8 ^ v5 ^ v11 ^ v14;
}

- (id)description
{
  localIdentifier = [(MOPerson *)self localIdentifier];
  name = [(MOPerson *)self name];
  mask = [name mask];
  contactIdentifier = [(MOPerson *)self contactIdentifier];
  isPHPersonTypeImportant = [(MOPerson *)self isPHPersonTypeImportant];
  isMePerson = [(MOPerson *)self isMePerson];
  mePersonIdentified = [(MOPerson *)self mePersonIdentified];
  personRelationships = [(MOPerson *)self personRelationships];
  family = [(MOPerson *)self family];
  [(MOPerson *)self significanceScore];
  v13 = v12;
  [(MOPerson *)self priorityScore];
  v15 = [NSString stringWithFormat:@"<MOPerson localIdentifier, %@, name, %@, contactIdentifier, %@, isPHPersonTypeImportant, %d, isMePerson, %d, mePersonIdentified, %d, peopleClassification, %@, family, %@, significanceScore, %.1f, priorityScore, %.1f>", localIdentifier, mask, contactIdentifier, isPHPersonTypeImportant, isMePerson, mePersonIdentified, personRelationships, family, v13, v14];

  return v15;
}

- (MOPerson)initWithPersonMO:(id)o
{
  oCopy = o;
  if (oCopy)
  {
    v5 = objc_opt_new();
    NSSelectorFromString(@"personRelationships");
    if (objc_opt_respondsToSelector())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      personRelationships = [oCopy personRelationships];
      v7 = [personRelationships countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v30;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v30 != v9)
            {
              objc_enumerationMutation(personRelationships);
            }

            v11 = [[MOPersonRelationship alloc] initWithPersonRelationshipMO:*(*(&v29 + 1) + 8 * i)];
            [v5 addObject:v11];
          }

          v8 = [personRelationships countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v8);
      }
    }

    identifier = [oCopy identifier];
    name = [oCopy name];
    contactIdentifier = [oCopy contactIdentifier];
    isPHPersonTypeImportant = [oCopy isPHPersonTypeImportant];
    isMePerson = [oCopy isMePerson];
    mePersonIdentified = [oCopy mePersonIdentified];
    v18 = [v5 copy];
    [oCopy priorityScore];
    v20 = v19;
    [oCopy significanceScore];
    LOBYTE(v28) = mePersonIdentified;
    self = [(MOPerson *)self initWithLocalIdentifier:identifier name:name contactIdentifier:contactIdentifier family:&stru_1003416B0 isPHPersonTypeImportant:isPHPersonTypeImportant isMePerson:isMePerson mePersonIdentified:v20 personRelationships:v21 priorityScore:v28 significanceScore:v18];

    sourceEventIdentifier = [oCopy sourceEventIdentifier];

    if (sourceEventIdentifier)
    {
      sourceEventIdentifier2 = [oCopy sourceEventIdentifier];
      [(MOPerson *)self setSourceEventIdentifier:sourceEventIdentifier2];
    }

    if ([oCopy sourceEventAccessType])
    {
      -[MOPerson setSourceEventAccessType:](self, "setSourceEventAccessType:", [oCopy sourceEventAccessType]);
    }

    givenName = [oCopy givenName];

    if (givenName)
    {
      givenName2 = [oCopy givenName];
      [(MOPerson *)self setGivenName:givenName2];
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MOPerson)initWithLocalIdentifier:(id)identifier name:(id)name contactIdentifier:(id)contactIdentifier family:(id)family isPHPersonTypeImportant:(BOOL)important isMePerson:(BOOL)person mePersonIdentified:(BOOL)identified personRelationships:(id)self0 priorityScore:(double)self1 significanceScore:(double)self2
{
  identifierCopy = identifier;
  nameCopy = name;
  contactIdentifierCopy = contactIdentifier;
  familyCopy = family;
  relationshipsCopy = relationships;
  v37.receiver = self;
  v37.super_class = MOPerson;
  v25 = [(MOPerson *)&v37 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    localIdentifier = v25->_localIdentifier;
    v25->_localIdentifier = v26;

    v28 = [nameCopy copy];
    name = v25->_name;
    v25->_name = v28;

    v30 = [contactIdentifierCopy copy];
    contactIdentifier = v25->_contactIdentifier;
    v25->_contactIdentifier = v30;

    v32 = [familyCopy copy];
    family = v25->_family;
    v25->_family = v32;

    v25->_isPHPersonTypeImportant = important;
    v25->_isMePerson = person;
    v25->_mePersonIdentified = identified;
    v34 = [relationshipsCopy copy];
    personRelationships = v25->_personRelationships;
    v25->_personRelationships = v34;

    v25->_priorityScore = score;
    v25->_significanceScore = significanceScore;
  }

  return v25;
}

- (MOPerson)initWithPersonDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"localIdentifier"];
  v6 = [dictionaryCopy objectForKey:@"name"];
  v7 = [dictionaryCopy objectForKey:@"contactIdentifier"];
  v8 = [dictionaryCopy objectForKey:@"family"];
  v9 = [dictionaryCopy objectForKey:@"priorityScore"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [dictionaryCopy objectForKey:@"significanceScore"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [dictionaryCopy objectForKey:@"isPHPersonTypeImportant"];
  bOOLValue = [v15 BOOLValue];

  v17 = [dictionaryCopy objectForKey:@"isMePerson"];
  bOOLValue2 = [v17 BOOLValue];

  v19 = [dictionaryCopy objectForKey:@"mePersonIdentified"];

  LOBYTE(dictionaryCopy) = [v19 BOOLValue];
  LOBYTE(v22) = dictionaryCopy;
  v20 = [(MOPerson *)self initWithLocalIdentifier:v5 name:v6 contactIdentifier:v7 family:v8 isPHPersonTypeImportant:bOOLValue isMePerson:bOOLValue2 mePersonIdentified:v11 personRelationships:v14 priorityScore:v22 significanceScore:0];

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  localIdentifier = self->_localIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:localIdentifier forKey:@"localIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_givenName forKey:@"givenName"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_family forKey:@"family"];
  [coderCopy encodeBool:self->_isPHPersonTypeImportant forKey:@"isPHPersonTypeImportant"];
  [coderCopy encodeBool:self->_isMePerson forKey:@"isMePerson"];
  [coderCopy encodeBool:self->_mePersonIdentified forKey:@"mePersonIdentified"];
  [coderCopy encodeObject:self->_personRelationships forKey:@"personRelationships"];
  [coderCopy encodeDouble:@"priorityScore" forKey:self->_priorityScore];
  [coderCopy encodeDouble:@"significanceScore" forKey:self->_significanceScore];
  [coderCopy encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [coderCopy encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (MOPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"family"];
  v8 = [coderCopy decodeBoolForKey:@"isPHPersonTypeImportant"];
  v9 = [coderCopy decodeBoolForKey:@"isMePerson"];
  v10 = [coderCopy decodeBoolForKey:@"mePersonIdentified"];
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"personRelationships"];

  [coderCopy decodeDoubleForKey:@"priorityScore"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"significanceScore"];
  LOBYTE(v21) = v10;
  v17 = [(MOPerson *)self initWithLocalIdentifier:v4 name:v5 contactIdentifier:v6 family:v7 isPHPersonTypeImportant:v8 isMePerson:v9 mePersonIdentified:v15 personRelationships:v16 priorityScore:v21 significanceScore:v13];
  if (v17)
  {
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOPerson *)v17 setSourceEventIdentifier:v18];

    -[MOPerson setSourceEventAccessType:](v17, "setSourceEventAccessType:", [coderCopy decodeInt64ForKey:@"sourceEventAccessType"]);
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    [(MOPerson *)v17 setGivenName:v19];
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v6 = equalCopy;
    localIdentifier = [(MOPerson *)self localIdentifier];
    if (localIdentifier)
    {
      localIdentifier2 = [(MOPerson *)v6 localIdentifier];
      LODWORD(v9) = localIdentifier2 != 0;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    contactIdentifier = [(MOPerson *)self contactIdentifier];
    if (contactIdentifier)
    {
      contactIdentifier2 = [(MOPerson *)v6 contactIdentifier];
      v13 = contactIdentifier2 != 0;
    }

    else
    {
      v13 = 0;
    }

    if (v9)
    {
      localIdentifier3 = [(MOPerson *)self localIdentifier];
      localIdentifier4 = [(MOPerson *)v6 localIdentifier];
      v16 = [localIdentifier3 isEqualToString:localIdentifier4];
    }

    else
    {
      v16 = 0;
    }

    name = [(MOPerson *)self name];
    if (name)
    {
      name2 = [(MOPerson *)v6 name];
      if (name2)
      {
        [(MOPerson *)self name];
        v9 = v27 = v9;
        [(MOPerson *)v6 name];
        v19 = v16;
        v21 = v20 = v13;
        v22 = [v9 isEqualToString:v21];

        v13 = v20;
        v16 = v19;

        LOBYTE(v9) = v27;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    if (v13)
    {
      contactIdentifier3 = [(MOPerson *)self contactIdentifier];
      contactIdentifier4 = [(MOPerson *)v6 contactIdentifier];
      v25 = [contactIdentifier3 isEqualToString:contactIdentifier4];
    }

    else
    {
      v25 = 0;
    }

    if ((v16 | v25))
    {
      v10 = 1;
    }

    else
    {
      v10 = ((v9 | v13) ^ 1) & v22;
    }
  }

  return v10 & 1;
}

- (int64_t)comparePersons:(id)persons
{
  personsCopy = persons;
  if (![(MOPerson *)self isMePerson])
  {
    if ([personsCopy isMePerson])
    {
      isPHPersonTypeImportant = 1;
      goto LABEL_7;
    }

    if (![(MOPerson *)self isPHPersonTypeImportant])
    {
      isPHPersonTypeImportant = [personsCopy isPHPersonTypeImportant];
      goto LABEL_7;
    }
  }

  isPHPersonTypeImportant = -1;
LABEL_7:

  return isPHPersonTypeImportant;
}

@end