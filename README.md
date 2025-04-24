# edge_to_edge

A customizable Flutter package for enabling edge-to-edge UI on Android.

## 🔧 Features

- Transparent status & navigation bars
- Customizable icon brightness
- Toggle top/bottom system overlays
- Minimal setup

## 🚀 Getting Started

### 1. Install

Add this to your `pubspec.yaml`:

### 2. Android Setup

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

```yaml
dependencies:
  edge_to_edge: ^1.0.0
