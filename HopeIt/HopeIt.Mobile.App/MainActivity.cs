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
            Button btnBack = FindViewById<Button>(Resource.Id.btnBackToMainView);
            Button btnLogin = FindViewById<Button>(Resource.Id.btnLogin);        
            Button btnRegister = FindViewById<Button>(Resource.Id.btnRegister);
            Button btnBackToMAin = FindViewById<Button>(Resource.Id.btnBackToMain);

            btnAbout.Click += BtnAbout_Click;
            btnBack.Click += BtnBackButton_Click;
            btnLogin.Click += BtnLogin_Click;
            btnRegister.Click += BtnRegister_Click;
            btnBackToMAin.Click += BtnBackToMAin_Click;

        }

        private void BtnBackToMAin_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "Strona główna", ToastLength.Short).Show();
            SetContentView(Resource.Layout.Main);
        }

        private void BtnRegister_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "Rejestracja", ToastLength.Short).Show();
            SetContentView(Resource.Layout.Register);
        }

        private void BtnLogin_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "Profil", ToastLength.Short).Show();
            SetContentView(Resource.Layout.Profile);
        }

        private void BtnBackButton_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "Strona główna", ToastLength.Short).Show();
            SetContentView(Resource.Layout.Main);
        }

        private void BtnAbout_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "O nas", ToastLength.Short).Show();
            SetContentView(Resource.Layout.About);
        }
    }
}

