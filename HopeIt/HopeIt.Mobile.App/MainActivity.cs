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
            SetContentView(Resource.Layout.Main);
           // StartActivity(typeof(MainActivity));

            Button btnAbout = FindViewById<Button>(Resource.Id.btnAbout);
            Button btnLogin = FindViewById<Button>(Resource.Id.btnLogin);
            Button btnRegister = FindViewById<Button>(Resource.Id.btnRegister);

            btnAbout.Click += BtnAbout_Click;
            btnLogin.Click += BtnLogin_Click;
            btnRegister.Click += BtnRegister_Click;

        }

        private void BtnRegister_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "Rejestracja", ToastLength.Short).Show();
            StartActivity(typeof(RegisterActivity));
            SetContentView(Resource.Layout.Register);
        }

        private void BtnLogin_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "Profil", ToastLength.Short).Show();
            SetContentView(Resource.Layout.Profile);
        }

        private void BtnAbout_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "O nas", ToastLength.Short).Show();
            StartActivity(typeof(AboutActivity));
            SetContentView(Resource.Layout.About);
            
        }
    }
}

