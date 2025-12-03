@interface CHPKAnalyticsMetricsContext
- (BOOL)isEqual:(id)equal;
- (CHPKAnalyticsMetricsContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHPKAnalyticsMetricsContext

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CHPKAnalyticsMetricsContext;
  coderCopy = coder;
  [(CHPKAnalyticsMetricsContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CHPKAnalyticsMetricsContext fingerDrawingEnabled](self forKey:{"fingerDrawingEnabled", v5.receiver, v5.super_class), @"UIPencilOnlyDrawWithPencilKey"}];
  [coderCopy encodeBool:-[CHPKAnalyticsMetricsContext scribbleEnabled](self forKey:{"scribbleEnabled"), @"ApplePencilTextInputEnabled"}];
  [coderCopy encodeBool:-[CHPKAnalyticsMetricsContext liveTextToggleEnabled](self forKey:{"liveTextToggleEnabled"), @"LiveTextEnabledKey"}];
  [coderCopy encodeBool:-[CHPKAnalyticsMetricsContext liveTextSupportedByPrimaryLanguage](self forKey:{"liveTextSupportedByPrimaryLanguage"), @"LiveTextSupportedByPrimaryLanguageKey"}];
}

- (CHPKAnalyticsMetricsContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CHPKAnalyticsMetricsContext;
  v5 = [(CHPKAnalyticsMetricsContext *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_fingerDrawingEnabled = [coderCopy decodeBoolForKey:@"UIPencilOnlyDrawWithPencilKey"];
    v5->_scribbleEnabled = [coderCopy decodeBoolForKey:@"ApplePencilTextInputEnabled"];
    v5->_liveTextToggleEnabled = [coderCopy decodeBoolForKey:@"LiveTextEnabledKey"];
    v5->_liveTextSupportedByPrimaryLanguage = [coderCopy decodeBoolForKey:@"LiveTextSupportedByPrimaryLanguageKey"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  inputLanguage = [(CHPKAnalyticsMetricsContext *)self inputLanguage];
  inputRegion = [(CHPKAnalyticsMetricsContext *)self inputRegion];
  v7 = [v4 initWithInputLanguage:inputLanguage inputRegion:inputRegion];

  v7[8] = self->_fingerDrawingEnabled;
  v7[9] = self->_scribbleEnabled;
  v7[10] = self->_liveTextToggleEnabled;
  v7[11] = self->_liveTextSupportedByPrimaryLanguage;
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v13.receiver = self, v13.super_class = CHPKAnalyticsMetricsContext, [(CHPKAnalyticsMetricsContext *)&v13 isEqual:v5]))
  {
    v6 = v5;
    fingerDrawingEnabled = [(CHPKAnalyticsMetricsContext *)v6 fingerDrawingEnabled];
    if (fingerDrawingEnabled == [(CHPKAnalyticsMetricsContext *)self fingerDrawingEnabled]&& (v8 = [(CHPKAnalyticsMetricsContext *)v6 scribbleEnabled], v8 == [(CHPKAnalyticsMetricsContext *)self scribbleEnabled]) && (v9 = [(CHPKAnalyticsMetricsContext *)v6 liveTextToggleEnabled], v9 == [(CHPKAnalyticsMetricsContext *)self liveTextToggleEnabled]))
    {
      liveTextSupportedByPrimaryLanguage = [(CHPKAnalyticsMetricsContext *)v6 liveTextSupportedByPrimaryLanguage];
      v10 = liveTextSupportedByPrimaryLanguage ^ [(CHPKAnalyticsMetricsContext *)self liveTextSupportedByPrimaryLanguage]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end