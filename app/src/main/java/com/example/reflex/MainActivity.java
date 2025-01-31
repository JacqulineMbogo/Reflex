package com.example.reflex;


import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.widget.RelativeLayout;

import com.example.reflex.view.reflexView;

public class MainActivity extends AppCompatActivity {
    private reflexView gameView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        RelativeLayout layout = findViewById(R.id.relativeLayout);
        gameView = new reflexView(this,getPreferences(Context.MODE_PRIVATE), layout);

        layout.addView(gameView, 0);



    }

    @Override
    protected void onPause() {
        super.onPause();
        gameView.pause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        gameView.resume(this);
    }
}
