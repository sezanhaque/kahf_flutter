package com.example.kahf_flutter

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onUserLeaveHint() {
        super.onUserLeaveHint()
        if (pipManager.isInPipMode) {
            enterPictureInPictureMode()
        }
    }
}
