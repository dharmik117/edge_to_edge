# edge_to_edge

A customizable Flutter package for enabling edge-to-edge system UI on Android. This makes your app
feel more immersive and modern by removing system bar constraints and giving full control over
appearance.

---

## ✨ Features

- Transparent **status** and **navigation** bars
- Custom **icon brightness** for light/dark content
- Control visibility of **top** and **bottom overlays**
- Clean, minimal API — just one function call

---

## 🚀 Getting Started

### 1. Android Setup

Find where this style is defined in your_app/android/app/src/main/res/values/styles.xml. There, add
the following attribute to the style:

```
<?xml version="1.0" encoding="utf-8"?>
<resources>
    ...
    <style name="NormalTheme" parent="@android:style/Theme.Light.NoTitleBar">
        ...
	      <!-- Add the following line: -->
        <item name="android:windowOptOutEdgeToEdgeEnforcement">true</item>
    </style>
</resources>

```

### 2. Usage

main.dart

```
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EdgeToEdge.configure(
    statusBarColor: Colors.transparent, // set color of status bar
    navigationBarColor: Colors.black, // set color of navigation bar
    statusBarIconBrightness: Brightness.dark, // set iocn color of status bar
    navigationBarIconBrightness: Brightness.dark, // set icon color of navigation bar
    enableTop: true,  //for manage status bar
    enableBottom: true, // for manage navigation bar (only when 3 button navbar enabled)
  );
  runApp(const MyApp());
}

```

### 3. Install

Add to your `pubspec.yaml`:

```yaml
dependencies:
  edge_to_edge: ^0.0.2

