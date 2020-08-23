# AppStoreJSONApis
 
### URLs
* https://rss.itunes.apple.com/ko-kr
* https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/

### What Techniques I used
* CGAffineTransform

### UIcollectionView CompositionalLayout
Layout Apps page using a single CollectionView with a Compositional Layout

**Techniques**
1. Use **Sections**, **Groups**, **Items** to place cells horizontally and vertically
2. Use **orthogonalBehavior** for snapping and paging when swiping
3. Manage multiples sctions with **SectionProvider**

### UIcollectionView DiffableDatasource
Set up DiffableDatasource for UICollectionView to render sections and items/cells/headers

**Techniques**
1. Declare DiffableDatasource<Section, **CustomObject: AnyHashable**> for collection views that display 1 object type
2. For multiple object types, use <Section, AnyHashable>
3. Use **Snapshots** to append/insert/delete objects
