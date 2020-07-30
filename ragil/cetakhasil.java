package com.example.bkkagensi;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class cetakhasil extends AppCompatActivity{

    @Override
    protected void onCreate(Bundle saveInstanceState){
        super.onCreate(saveInstanceState);
        setContentView(R.layout.activity_cetakhasil);
        Button button3 = (Button)findViewById(R.id.button);
        button3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //TODO Auto-gnerated method stub
                Intent i = new Intent(getApplicationContext(),MainActivity.class);

                startActivity(i);
            }
        });
    }

}
