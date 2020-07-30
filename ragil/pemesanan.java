package com.example.bkkagensi;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

public class pemesanan extends AppCompatActivity {
    String hasil;
    RadioGroup radioGroup;
    RadioButton radioButton, radioButton2, radioButton3;
    Button buttonPilih;
    TextView pilihan;
    @Override
    protected  void onCreate(Bundle saveInstanceState){
        super.onCreate(saveInstanceState);
        setContentView(R.layout.activity_cetakhasil);

        radioGroup = (RadioGroup) findViewById(R.id.radio_grup);
        radioButton = (RadioButton) findViewById(R.id.radio_button_1);
        radioButton2 = (RadioButton) findViewById(R.id.radio_button_2);
        radioButton3 = (RadioButton) findViewById(R.id.radio_button_3);

        buttonPilih = (Button) findViewById(R.id.button2);
        pilihan = (TextView) findViewById(R.id.hasil);
        buttonPilih.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                if (radioButton.isChecked()){
                    String editText4 = ("100000");
                    hasil = radioButton.getText().toString();
                } else if (radioButton2.isChecked()){
                    String editText4 = ("150000");
                    hasil = radioButton2.getText().toString();
                } else if (radioButton3.isChecked()){
                    String editText4 = ("200000");
                    hasil = radioButton3.getText().toString();
                } else {
                    Toast.makeText(getApplicationContext(),"Pilih Salah Satu . . .", Toast.LENGTH_SHORT).show();
                }
                pilihan.setText(hasil);
            }
        });

        Button button2 = (Button) findViewById(R.id.button);
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View arg0) {
                //TODO Auto-generated method stub
                Intent i = new Intent(getApplicationContext(),cetakhasil.class);

                startActivity(i);
            }
        });
    }
}
