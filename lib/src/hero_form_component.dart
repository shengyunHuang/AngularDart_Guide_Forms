import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

const List<String> _powers = [
  'Really Smart',
  'Super Flexible',
  'Super Hot',
  'Weather Changer'
];


@Component(
  selector: 'hero-form',
  styleUrls: ['hero_form_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives],
)
class HeroFormComponent {
  Hero model = Hero(18, 'Dr IQ', _powers[0], 'Chuck Overstreet');
  bool submitted = false;

  List<String> get powers => _powers;

  void onSubmit() => submitted = true;
}