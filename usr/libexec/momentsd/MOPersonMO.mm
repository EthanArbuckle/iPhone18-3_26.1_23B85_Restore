@interface MOPersonMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
- (id)clonedObjectWithContext:(id)context;
@end

@implementation MOPersonMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v7 = [[MOPersonMO alloc] initWithContext:contextCopy];
  localIdentifier = [objectCopy localIdentifier];
  [(MOPersonMO *)v7 setIdentifier:localIdentifier];

  name = [objectCopy name];
  [(MOPersonMO *)v7 setName:name];

  givenName = [objectCopy givenName];
  [(MOPersonMO *)v7 setGivenName:givenName];

  contactIdentifier = [objectCopy contactIdentifier];
  [(MOPersonMO *)v7 setContactIdentifier:contactIdentifier];

  -[MOPersonMO setIsPHPersonTypeImportant:](v7, "setIsPHPersonTypeImportant:", [objectCopy isPHPersonTypeImportant]);
  -[MOPersonMO setIsMePerson:](v7, "setIsMePerson:", [objectCopy isMePerson]);
  -[MOPersonMO setMePersonIdentified:](v7, "setMePersonIdentified:", [objectCopy mePersonIdentified]);
  [(MOPersonMO *)v7 setPersonRelationships:0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  personRelationships = [objectCopy personRelationships];
  v13 = [personRelationships countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(personRelationships);
        }

        v17 = [MOPersonRelationshipMO managedObjectWithObject:*(*(&v20 + 1) + 8 * i) inManagedObjectContext:contextCopy];
        [(MOPersonMO *)v7 addPersonRelationshipsObject:v17];
      }

      v14 = [personRelationships countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  [objectCopy significanceScore];
  [(MOPersonMO *)v7 setSignificanceScore:?];
  [objectCopy priorityScore];
  [(MOPersonMO *)v7 setPriorityScore:?];
  -[MOPersonMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [objectCopy sourceEventAccessType]);
  sourceEventIdentifier = [objectCopy sourceEventIdentifier];
  [(MOPersonMO *)v7 setSourceEventIdentifier:sourceEventIdentifier];

  return v7;
}

- (id)clonedObjectWithContext:(id)context
{
  contextCopy = context;
  v5 = [[MOPerson alloc] initWithPersonMO:self];
  v6 = [MOPersonMO managedObjectWithObject:v5 inManagedObjectContext:contextCopy];

  return v6;
}

@end