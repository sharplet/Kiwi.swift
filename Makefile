carthage=Carthage/Build/Mac
platform_frameworks=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks

default:
	@xcrun -sdk macosx swiftc -lswiftCore -F$(carthage) -Xlinker -rpath -Xlinker $(carthage) -F$(platform_frameworks) -Xlinker -rpath -Xlinker $(platform_frameworks) *.swift -o kiwi
	@xcrun xctest kiwi 2>&1 | xcpretty -c
