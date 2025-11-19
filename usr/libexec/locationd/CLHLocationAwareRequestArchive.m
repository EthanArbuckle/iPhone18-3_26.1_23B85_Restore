@interface CLHLocationAwareRequestArchive
- (unint64_t)count;
@end

@implementation CLHLocationAwareRequestArchive

- (unint64_t)count
{
  v3 = [(CLHRequestArchive *)self->_homeArchive totalCountIncludingAllSubArchives];
  v4 = [(CLHRequestArchive *)self->_workArchive totalCountIncludingAllSubArchives]+ v3;
  return [(CLHRequestArchive *)self->_mainArchive totalCountIncludingAllSubArchives]+ v4;
}

@end