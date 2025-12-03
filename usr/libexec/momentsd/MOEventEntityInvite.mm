@interface MOEventEntityInvite
- (CLLocation)location;
- (_TtC8momentsd19MOEventEntityInvite)initWithTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location placeName:(id)name identifier:(id)identifier appBundle:(id)bundle organizers:(id)self0 attendees:(id)self1;
- (void)setLocation:(id)location;
@end

@implementation MOEventEntityInvite

- (CLLocation)location
{
  v3 = OBJC_IVAR____TtC8momentsd19MOEventEntityInvite_location;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLocation:(id)location
{
  v5 = OBJC_IVAR____TtC8momentsd19MOEventEntityInvite_location;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = location;
  locationCopy = location;
}

- (_TtC8momentsd19MOEventEntityInvite)initWithTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location placeName:(id)name identifier:(id)identifier appBundle:(id)bundle organizers:(id)self0 attendees:(id)self1
{
  selfCopy = self;
  locationCopy = location;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = &v58 - v23;
  if (title)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v26;
    v61 = v25;
    if (date)
    {
LABEL_3:
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = type metadata accessor for Date();
      (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
      goto LABEL_6;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0;
    if (date)
    {
      goto LABEL_3;
    }
  }

  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
LABEL_6:
  if (endDate)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = type metadata accessor for Date();
    v30 = *(*(v29 - 8) + 56);
    v31 = locationCopy;
    nameCopy = name;
    identifierCopy = identifier;
    bundleCopy = bundle;
    organizersCopy = organizers;
    attendeesCopy = attendees;
    v30(v21, 0, 1, v29);
    if (name)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v47 = type metadata accessor for Date();
    (*(*(v47 - 8) + 56))(v21, 1, 1, v47);
    v48 = locationCopy;
    nameCopy2 = name;
    identifierCopy2 = identifier;
    bundleCopy2 = bundle;
    organizersCopy2 = organizers;
    attendeesCopy2 = attendees;
    if (name)
    {
LABEL_8:
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if (identifier)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  v59 = 0;
  v38 = 0;
  if (identifier)
  {
LABEL_9:
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (bundle)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v39 = 0;
  v41 = 0;
  if (bundle)
  {
LABEL_10:
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (organizers)
    {
      goto LABEL_11;
    }

LABEL_17:
    v45 = 0;
    if (attendees)
    {
      goto LABEL_12;
    }

LABEL_18:
    v46 = 0;
    goto LABEL_19;
  }

LABEL_16:
  v42 = 0;
  v44 = 0;
  if (!organizers)
  {
    goto LABEL_17;
  }

LABEL_11:
  type metadata accessor for MOEventEntityInvitePerson();
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!attendees)
  {
    goto LABEL_18;
  }

LABEL_12:
  type metadata accessor for MOEventEntityInvitePerson();
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_19:
  v54 = v21;
  v55 = locationCopy;
  v56 = specialized MOEventEntityInvite.init(title:startDate:endDate:location:placeName:identifier:appBundle:organizers:attendees:)(v61, v60, v24, v54, locationCopy, v59, v38, v39, v41, v42, v44, v45, v46);

  return v56;
}

@end