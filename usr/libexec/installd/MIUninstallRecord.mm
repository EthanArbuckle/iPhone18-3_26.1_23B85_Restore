@interface MIUninstallRecord
+ (id)uninstallRecordArrayToICLUninstallRecordArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (MIUninstallRecord)initWithCoder:(id)coder;
- (id)ICLUninstallRecord;
- (id)copyWithZone:(_NSZone *)zone;
- (id)legacyDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIUninstallRecord

- (MIUninstallRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MIUninstallRecord;
  v5 = [(MIUninstallRecord *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isLastReference = [coderCopy decodeBoolForKey:@"isLastReference"];
    v5->_isLinked = [coderCopy decodeBoolForKey:@"isLinked"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MIUninstallRecord;
  coderCopy = coder;
  [(MIUninstallRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[MIUninstallRecord isLastReference](self forKey:{"isLastReference", v5.receiver, v5.super_class), @"isLastReference"}];
  [coderCopy encodeBool:-[MIUninstallRecord isLinked](self forKey:{"isLinked"), @"isLinked"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MIUninstallRecord;
  v4 = [(MIUninstallRecord *)&v6 copyWithZone:zone];
  [v4 setIsLastReference:{-[MIUninstallRecord isLastReference](self, "isLastReference")}];
  [v4 setIsLinked:{-[MIUninstallRecord isLinked](self, "isLinked")}];
  return v4;
}

- (id)legacyDictionary
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = MIUninstallRecord;
  legacyDictionary = [(MIUninstallRecord *)&v9 legacyDictionary];
  [v3 addEntriesFromDictionary:legacyDictionary];

  if ([(MIUninstallRecord *)self isLinked])
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  [v3 setObject:v5 forKeyedSubscript:@"IsLinkedBundle"];
  if ([(MIUninstallRecord *)self isLastReference])
  {
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  [v3 setObject:v6 forKeyedSubscript:@"LastReference"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = MIUninstallRecord;
  if ([(MIUninstallRecord *)&v10 isEqual:equalCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isLinked = [(MIUninstallRecord *)self isLinked];
      if (isLinked == [v5 isLinked])
      {
        isLastReference = [(MIUninstallRecord *)self isLastReference];
        if (isLastReference == [v5 isLastReference])
        {
          v7 = 1;
          goto LABEL_14;
        }

        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
LABEL_12:
          v7 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_12;
      }

      MOLogWrite();
      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  isLinked = [(MIUninstallRecord *)self isLinked];
  isLastReference = [(MIUninstallRecord *)self isLastReference];
  v5 = 2;
  if (!isLastReference)
  {
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = MIUninstallRecord;
  return [(MIUninstallRecord *)&v7 hash]^ (v5 | isLinked);
}

- (id)ICLUninstallRecord
{
  v3 = objc_opt_new();
  bundleIdentifier = [(MIUninstallRecord *)self bundleIdentifier];
  [v3 setBundleIdentifier:bundleIdentifier];

  [v3 setIsPlaceholder:{-[MIUninstallRecord isPlaceholder](self, "isPlaceholder")}];
  [v3 setHasParallelPlaceholder:{-[MIUninstallRecord hasParallelPlaceholder](self, "hasParallelPlaceholder")}];

  return v3;
}

+ (id)uninstallRecordArrayToICLUninstallRecordArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          iCLUninstallRecord = [*(*(&v13 + 1) + 8 * i) ICLUninstallRecord];
          [v4 addObject:iCLUninstallRecord];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end