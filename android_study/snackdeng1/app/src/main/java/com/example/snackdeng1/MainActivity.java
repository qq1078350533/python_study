package com.example.snackdeng1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import com.m4399.framework.helpers.AppNativeHelper;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("native-lib");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Example of a call to a native method
        TextView tv = findViewById(R.id.sample_text);
        tv.setText(stringFromJNI());

//        String pwd = AppNativeHelper.desCbcEncrypt("qwert123456");
//        Log.d("snackdeng", "pwd: "+pwd);
//        String sign = AppNativeHelper.getServerApi("1234567890");
//        Log.d("snackdeng", "sign: "+sign);


    }
    /**
     * A native method that is implemented by the 'native-lib' native library,
     * which is packaged with this application.
     */

    public native String stringFromJNI();
}
