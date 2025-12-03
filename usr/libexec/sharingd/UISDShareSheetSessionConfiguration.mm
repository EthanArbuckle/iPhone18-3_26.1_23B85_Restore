@interface UISDShareSheetSessionConfiguration
- (UISDShareSheetSessionConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISDShareSheetSessionConfiguration

- (UISDShareSheetSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UISDShareSheetSessionConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = NSStringFromSelector("peopleProxies");
    v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];
    peopleProxies = v5->_peopleProxies;
    v5->_peopleProxies = v9;

    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    v13 = NSStringFromSelector("shareProxies");
    v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];
    shareProxies = v5->_shareProxies;
    v5->_shareProxies = v14;

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = NSStringFromSelector("actionProxies");
    v19 = [coderCopy decodeObjectOfClasses:v17 forKey:v18];
    actionProxies = v5->_actionProxies;
    v5->_actionProxies = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("nearbyCountSlotID");
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    nearbyCountSlotID = v5->_nearbyCountSlotID;
    v5->_nearbyCountSlotID = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector("nearbyCountBadge");
    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
    nearbyCountBadge = v5->_nearbyCountBadge;
    v5->_nearbyCountBadge = v27;

    v29 = NSStringFromSelector("wantsAnimation");
    v5->_wantsAnimation = [coderCopy decodeBoolForKey:v29];

    v30 = NSStringFromSelector("reloadData");
    v5->_reloadData = [coderCopy decodeBoolForKey:v30];

    v31 = objc_opt_class();
    v32 = [NSSet setWithObjects:v31, objc_opt_class(), 0];
    v33 = NSStringFromSelector("peopleSuggestions");
    v34 = [coderCopy decodeObjectOfClasses:v32 forKey:v33];
    peopleSuggestions = v5->_peopleSuggestions;
    v5->_peopleSuggestions = v34;

    v36 = objc_opt_class();
    v37 = [NSSet setWithObjects:v36, objc_opt_class(), 0];
    v38 = NSStringFromSelector("restrictedActivityTypes");
    v39 = [coderCopy decodeObjectOfClasses:v37 forKey:v38];
    restrictedActivityTypes = v5->_restrictedActivityTypes;
    v5->_restrictedActivityTypes = v39;

    v41 = NSStringFromSelector("shouldBlockPresentation");
    v5->_shouldBlockPresentation = [coderCopy decodeBoolForKey:v41];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  peopleProxies = self->_peopleProxies;
  coderCopy = coder;
  v6 = NSStringFromSelector("peopleProxies");
  [coderCopy encodeObject:peopleProxies forKey:v6];

  shareProxies = self->_shareProxies;
  v8 = NSStringFromSelector("shareProxies");
  [coderCopy encodeObject:shareProxies forKey:v8];

  actionProxies = self->_actionProxies;
  v10 = NSStringFromSelector("actionProxies");
  [coderCopy encodeObject:actionProxies forKey:v10];

  nearbyCountSlotID = self->_nearbyCountSlotID;
  v12 = NSStringFromSelector("nearbyCountSlotID");
  [coderCopy encodeObject:nearbyCountSlotID forKey:v12];

  nearbyCountBadge = self->_nearbyCountBadge;
  v14 = NSStringFromSelector("nearbyCountBadge");
  [coderCopy encodeObject:nearbyCountBadge forKey:v14];

  wantsAnimation = self->_wantsAnimation;
  v16 = NSStringFromSelector("wantsAnimation");
  [coderCopy encodeBool:wantsAnimation forKey:v16];

  reloadData = self->_reloadData;
  v18 = NSStringFromSelector("reloadData");
  [coderCopy encodeBool:reloadData forKey:v18];

  peopleSuggestions = self->_peopleSuggestions;
  v20 = NSStringFromSelector("peopleSuggestions");
  [coderCopy encodeObject:peopleSuggestions forKey:v20];

  restrictedActivityTypes = self->_restrictedActivityTypes;
  v22 = NSStringFromSelector("restrictedActivityTypes");
  [coderCopy encodeObject:restrictedActivityTypes forKey:v22];

  shouldBlockPresentation = self->_shouldBlockPresentation;
  v24 = NSStringFromSelector("shouldBlockPresentation");
  [coderCopy encodeBool:shouldBlockPresentation forKey:v24];
}

@end