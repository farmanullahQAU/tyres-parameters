class TyreModel{
  
  final String type;

  final double tyreWidth;
  final double? tyreProfile;
  final double? tyreThread;
  final String? tyreYear;
  final String? tyreSession;
  final String? description;
  WheelModel wheel;

  TyreModel({
    this.description,
    required this.wheel,
    required this.type, required this.tyreWidth,this.tyreProfile,this.tyreYear,this.tyreThread,this.tyreSession});
}

class WheelModel{

  final double rimWidth;
  final double rimOffset;
  final String? rimBrand;
  final double? rimDimeter;

  WheelModel({required this.rimWidth,required this.rimOffset,this.rimDimeter,this.rimBrand});
}

