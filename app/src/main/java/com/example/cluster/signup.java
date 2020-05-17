package com.example.cluster;

import android.os.Bundle;
import android.widget.RadioButton;
import android.widget.RadioGroup;

import androidx.appcompat.app.AppCompatActivity;

public class signup extends AppCompatActivity {

    private RadioGroup genderradiogroup;
    private RadioButton male,
            female,
            other;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup);

        male = (RadioButton) findViewById(R.id.male);
        female= (RadioButton) findViewById(R.id.female);
        other = (RadioButton) findViewById(R.id.other);

    }

    /*
    我只改了部分的範例程式碼
    剩下的參考這篇
    https://xnfood.com.tw/radiogroup-radiobutton/
     */
}
