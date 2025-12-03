@interface NEKDuplicationResults
+ (id)duplicateResultsFromCheck:(id)check withDiagnosticTimestamp:(double)timestamp;
- (NEKDuplicationResults)initWithDuplicatedSources:(id)sources duplicatedCalendars:(id)calendars firstFoundKey:(id)key;
- (id)syncReport;
@end

@implementation NEKDuplicationResults

- (NEKDuplicationResults)initWithDuplicatedSources:(id)sources duplicatedCalendars:(id)calendars firstFoundKey:(id)key
{
  sourcesCopy = sources;
  calendarsCopy = calendars;
  v14.receiver = self;
  v14.super_class = NEKDuplicationResults;
  v11 = [(NEKDiagnosticResult *)&v14 initWithFirstFoundKey:key];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_duplicatedSources, sources);
    objc_storeStrong(&v12->_duplicatedCalendars, calendars);
  }

  return v12;
}

+ (id)duplicateResultsFromCheck:(id)check withDiagnosticTimestamp:(double)timestamp
{
  checkCopy = check;
  v6 = [NSMutableArray alloc];
  sources = [checkCopy sources];
  v8 = [v6 initWithCapacity:{objc_msgSend(sources, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  sources2 = [checkCopy sources];
  v10 = [sources2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(sources2);
        }

        externalId = [*(*(&v30 + 1) + 8 * i) externalId];
        [v8 addObject:externalId];
      }

      v11 = [sources2 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v15 = [NSMutableArray alloc];
  calendars = [checkCopy calendars];
  v17 = [v15 initWithCapacity:{objc_msgSend(calendars, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  calendars2 = [checkCopy calendars];
  v19 = [calendars2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(calendars2);
        }

        externalId2 = [*(*(&v26 + 1) + 8 * j) externalId];
        [v17 addObject:externalId2];
      }

      v20 = [calendars2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v24 = [[NEKDuplicationResults alloc] initWithDuplicatedSources:v8 duplicatedCalendars:v17 firstFoundKey:@"duplicatesFirstFound"];
  [(NEKDiagnosticResult *)v24 setLastDiagnosticTimestamp:timestamp];
  [(NEKDiagnosticResult *)v24 updateFirstFoundToNotSetOrNewTimestamp:[(NEKDuplicationResults *)v24 hasDuplicates] ifConditionMet:timestamp];
  [(NEKDiagnosticResult *)v24 setFirstFoundTimestamp:?];

  return v24;
}

- (id)syncReport
{
  formattedLastDiagnosticDate = [(NEKDiagnosticResult *)self formattedLastDiagnosticDate];
  formattedFirstFoundDate = [(NEKDiagnosticResult *)self formattedFirstFoundDate];
  if ([(NEKDuplicationResults *)self hasDuplicates])
  {
    v14[0] = @"First Found";
    v14[1] = @"Last Checked";
    v14[2] = @"Results";
    duplicatedCalendars = self->_duplicatedCalendars;
    v12[0] = @"Calendars";
    v12[1] = @"Sources";
    duplicatedSources = self->_duplicatedSources;
    v15[0] = formattedFirstFoundDate;
    v15[1] = formattedLastDiagnosticDate;
    v13[0] = duplicatedCalendars;
    v13[1] = duplicatedSources;
    v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else
  {
    v10[0] = @"First Found";
    v10[1] = @"Last Checked";
    v11[0] = @"N/A";
    v11[1] = formattedLastDiagnosticDate;
    v10[2] = @"Results";
    v11[2] = @"N/A";
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  return v8;
}

@end