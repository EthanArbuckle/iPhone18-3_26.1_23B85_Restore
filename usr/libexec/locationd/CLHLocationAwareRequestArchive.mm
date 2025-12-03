@interface CLHLocationAwareRequestArchive
- (unint64_t)count;
@end

@implementation CLHLocationAwareRequestArchive

- (unint64_t)count
{
  totalCountIncludingAllSubArchives = [(CLHRequestArchive *)self->_homeArchive totalCountIncludingAllSubArchives];
  v4 = [(CLHRequestArchive *)self->_workArchive totalCountIncludingAllSubArchives]+ totalCountIncludingAllSubArchives;
  return [(CLHRequestArchive *)self->_mainArchive totalCountIncludingAllSubArchives]+ v4;
}

@end