code generator:	
	dart pub run build_runner build --delete-conflicting-outputs

app icon: 
	flutter pub run flutter_launcher_icons

splash screen:
	dart run flutter_native_splash:create

add_dependencies:
	flutter pub add dep_name
	flutter pub add --dev dep_name

dependencies_conflicts:
	flutter --version
	flutter upgrade
	flutter pub upgrade

clean_a_mess:
	flutter clean
	flutter pub get