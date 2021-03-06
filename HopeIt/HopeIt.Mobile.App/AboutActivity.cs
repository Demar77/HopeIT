﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace HopeIt.Mobile.App
{
    [Activity(Label = "AboutActivity")]
    public class AboutActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.About);
           // StartActivity(typeof(AboutActivity));

            Button btnBackToMainView = FindViewById<Button>(Resource.Id.btnBackToMainView);
            btnBackToMainView.Click += BtnBackToMainView_Click;
        }

        private void BtnBackToMainView_Click(object sender, EventArgs e)
        {
            Toast.MakeText(this, "Strona główna", ToastLength.Short).Show();
            StartActivity(typeof(MainActivity));
           //SetContentView(Resource.Layout.Main);
        }
    }
}