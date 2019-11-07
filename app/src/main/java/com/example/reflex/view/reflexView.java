package com.example.reflex.view;
import android.animation.Animator;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedDeque;

@RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
public class reflexView extends View {

    //static instance variables
    private static final String HIGH_SCORE = "HIGH_SCORE";
    private SharedPreferences preferences;

    //variables that manage the game
    private  int  spotsTouched, score, level, viewWidth, viewHeight, highScore;
    private  long animationTime;
    private  boolean gameOver, gamePaused, dialogDisplayed;

    //collections types for the circles
            private final Queue<ImageView> spots = new ConcurrentLinkedDeque<>();
            private final  Queue<Animator> animators = new ConcurrentLinkedDeque<>();

            private TextView highScoreTextView, levelTextView, currentScoreTextView, lives;
            public reflexView(Context context, SharedPreferences sharedPreferences, LinearLayout parentLayout) {
        super(context);
    }


}
