# FB11186863

Running test of a simple project fails on runtime with Xcode 14.
Xcode 13 runs the test successfully without any code/config change.

- The app links RxSwift statically
- The app target has linker flags enabled: `-ObjC -all_load`. The test runs successful without them
- The new "Eager Linking" build option does not affect the result
