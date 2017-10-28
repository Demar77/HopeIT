using System;
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
    [Activity(Label = "RegisterActivity")]
    public class RegisterActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
              SetContentView(Resource.Layout.Register);
            //StartActivity(typeof(RegisterActivity));

            Button btnBackToMain = FindViewById<Button>(Resource.Id.btnBackToMain);
            btnBackToMain.Click += BtnBackToMain_Click;
        }

        private void BtnBackToMain_Click(object sender, EventArgs e)
        {
            Toast.MakeText(this, "Strona główna", ToastLength.Short).Show();
            StartActivity(typeof(MainActivity));
          // SetContentView(Resource.Layout.Main);
        }
    }
}