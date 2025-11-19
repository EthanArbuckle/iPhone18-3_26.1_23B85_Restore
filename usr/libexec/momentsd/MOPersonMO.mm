@interface MOPersonMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
- (id)clonedObjectWithContext:(id)a3;
@end

@implementation MOPersonMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MOPersonMO alloc] initWithContext:v6];
  v8 = [v5 localIdentifier];
  [(MOPersonMO *)v7 setIdentifier:v8];

  v9 = [v5 name];
  [(MOPersonMO *)v7 setName:v9];

  v10 = [v5 givenName];
  [(MOPersonMO *)v7 setGivenName:v10];

  v11 = [v5 contactIdentifier];
  [(MOPersonMO *)v7 setContactIdentifier:v11];

  -[MOPersonMO setIsPHPersonTypeImportant:](v7, "setIsPHPersonTypeImportant:", [v5 isPHPersonTypeImportant]);
  -[MOPersonMO setIsMePerson:](v7, "setIsMePerson:", [v5 isMePerson]);
  -[MOPersonMO setMePersonIdentified:](v7, "setMePersonIdentified:", [v5 mePersonIdentified]);
  [(MOPersonMO *)v7 setPersonRelationships:0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v5 personRelationships];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [MOPersonRelationshipMO managedObjectWithObject:*(*(&v20 + 1) + 8 * i) inManagedObjectContext:v6];
        [(MOPersonMO *)v7 addPersonRelationshipsObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  [v5 significanceScore];
  [(MOPersonMO *)v7 setSignificanceScore:?];
  [v5 priorityScore];
  [(MOPersonMO *)v7 setPriorityScore:?];
  -[MOPersonMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [v5 sourceEventAccessType]);
  v18 = [v5 sourceEventIdentifier];
  [(MOPersonMO *)v7 setSourceEventIdentifier:v18];

  return v7;
}

- (id)clonedObjectWithContext:(id)a3
{
  v4 = a3;
  v5 = [[MOPerson alloc] initWithPersonMO:self];
  v6 = [MOPersonMO managedObjectWithObject:v5 inManagedObjectContext:v4];

  return v6;
}

@end