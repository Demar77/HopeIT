using Android.App;
using Android.Widget;
using Android.OS;

namespace HopeIt.Mobile.App
{
    [Activity(Label = "HopeIt.Mobile.App", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);
            Button btnAbout = FindViewById<Button>(Resource.Id.btnAbout);
            //   Button btnBacButton = FindViewById<Button>(Resource.Id.btnBackToMain);

            btnAbout.Click += BtnAbout_Click;
        }
        private void BtnAbout_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "Layout 2", ToastLength.Short).Show();
            SetContentView(Resource.Layout.About);
        }
    }
}

