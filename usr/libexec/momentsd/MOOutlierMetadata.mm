@interface MOOutlierMetadata
- (MOOutlierMetadata)initWithCoder:(id)coder;
- (MOOutlierMetadata)initWithIdentifier:(id)identifier updateDate:(id)date isSignificant:(BOOL)significant outlierScore:(double)score outlierScoreThreshold:(double)threshold bundleGoodnessScore:(double)goodnessScore bundleGoodnessScoreThreshold:(double)scoreThreshold;
- (MOOutlierMetadata)initWithOutlierMetadataMO:(id)o;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOOutlierMetadata

- (MOOutlierMetadata)initWithIdentifier:(id)identifier updateDate:(id)date isSignificant:(BOOL)significant outlierScore:(double)score outlierScoreThreshold:(double)threshold bundleGoodnessScore:(double)goodnessScore bundleGoodnessScoreThreshold:(double)scoreThreshold
{
  identifierCopy = identifier;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = MOOutlierMetadata;
  v19 = [(MOOutlierMetadata *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_updatedDate, date);
    v20->_isSignificant = significant;
    v20->_outlierScore = score;
    v20->_bundleGoodnessScore = goodnessScore;
    v20->_outlierScoreThreshold = threshold;
    v20->_bundleGoodnessScoreThreshold = scoreThreshold;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_updatedDate forKey:@"updatedDate"];
  [coderCopy encodeBool:self->_isSignificant forKey:@"isSignificant"];
  [coderCopy encodeDouble:@"outlierScore" forKey:self->_outlierScore];
  [coderCopy encodeDouble:@"outlierScoreThreshold" forKey:self->_outlierScoreThreshold];
  [coderCopy encodeDouble:@"bundleGoodnessScore" forKey:self->_bundleGoodnessScore];
  [coderCopy encodeDouble:@"bundleGoodnessScoreThreshold" forKey:self->_bundleGoodnessScoreThreshold];
}

- (MOOutlierMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedDate"];
  v7 = [coderCopy decodeBoolForKey:@"isSignificant"];
  [coderCopy decodeDoubleForKey:@"outlierScore"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"outlierScoreThreshold"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"bundleGoodnessScore"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"bundleGoodnessScoreThreshold"];
  v15 = v14;

  v16 = [(MOOutlierMetadata *)self initWithIdentifier:v5 updateDate:v6 isSignificant:v7 outlierScore:v9 outlierScoreThreshold:v11 bundleGoodnessScore:v13 bundleGoodnessScoreThreshold:v15];
  return v16;
}

- (MOOutlierMetadata)initWithOutlierMetadataMO:(id)o
{
  if (o)
  {
    oCopy = o;
    identifier = [oCopy identifier];
    updatedDate = [oCopy updatedDate];
    isSignificant = [oCopy isSignificant];
    [oCopy outlierScore];
    v9 = v8;
    [oCopy outlierScoreThreshold];
    v11 = v10;
    [oCopy bundleGoodnessScore];
    v13 = v12;
    [oCopy bundleGoodnessScoreThreshold];
    v15 = v14;

    self = [(MOOutlierMetadata *)self initWithIdentifier:identifier updateDate:updatedDate isSignificant:isSignificant outlierScore:v9 outlierScoreThreshold:v11 bundleGoodnessScore:v13 bundleGoodnessScoreThreshold:v15];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end