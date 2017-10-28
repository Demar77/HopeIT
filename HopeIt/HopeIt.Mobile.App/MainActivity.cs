using Android.App;
using Android.Widget;
using Android.OS;
using System.Net;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using Android.Content;

namespace HopeIt.Mobile.App
{
    [Activity(Label = "HopeIT", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.Main);
           // StartActivity(typeof(MainActivity));

            Button btnLogin = FindViewById<Button>(Resource.Id.btnLogin);
            Button btnRegister = FindViewById<Button>(Resource.Id.btnRegister);
            EditText phoneNumber = FindViewById<EditText>(Resource.Id.PhoneNumber);

            btnLogin.Click += (sender, e) =>
            {
                if (phoneNumber.Text.Trim().Length == 0)
                {
                    Toast.MakeText(this, "Enter phone number, please.", ToastLength.Short).Show();
                    return;
                }
                var uri = string.Format(@"http://10.99.130.106:9810/api/AppUser");
                var request = HttpWebRequest.Create(uri);
                request.ContentType = "application/json";
                request.Method = "GET";

                using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
                {
                    if (response.StatusCode == HttpStatusCode.OK)
                    {
                        using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                        {
                            var content = reader.ReadToEnd();
                            var list = Newtonsoft.Json.JsonConvert.DeserializeObject<List<Model.AppUser>>(content);
                            var person = list.Where(r => r.Name == phoneNumber.Text).SingleOrDefault();
                            if(person == null)
                            {
                                Toast.MakeText(this, "Unknown user. Register, please.", ToastLength.Short).Show();
                                btnRegister.Visibility = Android.Views.ViewStates.Visible;
                                return;
                            }
                        }
                    }
                }

                Toast.MakeText(this, string.Format("Welcome {0}.", phoneNumber.Text), ToastLength.Short).Show();

                var intent = new Intent(this, typeof(ProfileActivity));
                StartActivity(intent);
            };

            btnRegister.Click += (sender, e) =>
            {
                Toast.MakeText(this, "Rejestracja", ToastLength.Short).Show();
                StartActivity(typeof(RegisterActivity));
                SetContentView(Resource.Layout.Register);
            };

        }

        private void BtnAbout_Click(object sender, System.EventArgs e)
        {
            Toast.MakeText(this, "O nas", ToastLength.Short).Show();
            StartActivity(typeof(AboutActivity));
            SetContentView(Resource.Layout.About);
            
        }
    }
}

