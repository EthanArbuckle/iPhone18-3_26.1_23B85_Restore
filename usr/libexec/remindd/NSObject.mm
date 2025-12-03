@interface NSObject
+ (id)ic_loggingDescriptionFromLoggable:(id)loggable isPretty:(BOOL)pretty;
- (id)ic_loggingDescription;
- (id)ic_prettyLoggingDescription;
- (id)jsonify;
@end

@implementation NSObject

- (id)ic_loggingDescription
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = [objc_opt_class() ic_loggingDescriptionFromLoggable:self isPretty:0];
  }

  else
  {
    v3 = [self description];
  }

  return v3;
}

- (id)ic_prettyLoggingDescription
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = [objc_opt_class() ic_loggingDescriptionFromLoggable:self isPretty:1];
  }

  else
  {
    v3 = [self description];
  }

  return v3;
}

+ (id)ic_loggingDescriptionFromLoggable:(id)loggable isPretty:(BOOL)pretty
{
  prettyCopy = pretty;
  loggableCopy = loggable;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [NSMutableString stringWithFormat:@"<%@ ", v7];

  ic_loggingIdentifier = [loggableCopy ic_loggingIdentifier];
  if (!ic_loggingIdentifier)
  {
    [v8 appendFormat:@"UNKNOWN_IDENTIFIER"];
    if (prettyCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = @" %@=%@";
    goto LABEL_6;
  }

  [v8 appendString:ic_loggingIdentifier];
  if (!prettyCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v8 appendString:@"\n"];
  v10 = @"\t%@ = %@\n";
LABEL_6:
  ic_loggingValues = [loggableCopy ic_loggingValues];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C0328;
  v16[3] = &unk_1008DBFC8;
  v19 = prettyCopy;
  v12 = v8;
  v17 = v12;
  v18 = v10;
  [ic_loggingValues enumerateKeysAndObjectsUsingBlock:v16];
  [v12 appendString:@">"];
  v13 = v18;
  v14 = v12;

  return v12;
}

- (id)jsonify
{
  selfCopy = self;
  result = [selfCopy description];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end