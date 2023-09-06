# deeplink_cookbook

A new Flutter project to test deep link.

## Test deep link

### Android

```bash
adb shell am start -a android.intent.action.VIEW \
      -c android.intent.category.BROWSABLE \
      -d "custom://example.com/details" com.example.deeplink_cookbook
```

### iOS

```bash
xcrun simctl openurl booted custom://example.com/details
```