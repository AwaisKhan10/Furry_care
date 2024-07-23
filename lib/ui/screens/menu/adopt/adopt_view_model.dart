import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/adopt_categories.dart';
import 'package:furry_care/core/model/adopt_gridview.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class AdoptionViewModel extends BaseViewModel {
  List<AdoptCategories> listCategories = [
    AdoptCategories(id: '1', imgUrl: AppAssets.dogs, name: 'Dogs'),
    AdoptCategories(id: '2', imgUrl: AppAssets.cats, name: 'Cats'),
    AdoptCategories(id: '3', imgUrl: AppAssets.chiks, name: 'Chiks'),
    AdoptCategories(id: '4', imgUrl: AppAssets.Birds, name: 'Birds'),
    AdoptCategories(id: '5', imgUrl: AppAssets.cats, name: 'Cats'),
    AdoptCategories(id: '6', imgUrl: AppAssets.dogs, name: 'Pets'),
  ];
  List<AdoptGridView> listGridview = [
    AdoptGridView(
      image: AppAssets.Dog1,
    ),
    AdoptGridView(
      image: AppAssets.Dog3,
    ),
    AdoptGridView(
      image: AppAssets.Dog2,
    ),
    AdoptGridView(
      image: AppAssets.Dog4,
    ),
    AdoptGridView(
      image: AppAssets.Dog5,
    ),
    AdoptGridView(
      image: AppAssets.Dog6,
    ),
  ];
}
