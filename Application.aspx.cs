using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CliffordSchool.Forms
{
    public partial class Application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            InsertIntoApplicantAndAddress();
        }
        public void InsertIntoApplicantAndAddress()
        {
            FileUpload img = (FileUpload)imageUpload;
            Byte[] imgByte = null;
            if (img.HasFile && img.PostedFile != null)
            {
                //To create a PostedFile
                HttpPostedFile File = imageUpload.PostedFile;
                //Create byte Array with file len
                imgByte = new Byte[File.ContentLength];
                //force the control to load data in array
                File.InputStream.Read(imgByte, 0, File.ContentLength);
                //Session["img"] = imgByte;
            }

            string firstName = txtFirstName.Text;
            string middleName = txtMiddleName.Text;
            string lastName = txtLastName.Text;
            string street = txtStreet.Text;
            string city = txtCity.Text;
            string state = txtState.Text;
            string country = txtCountry.Text;
            string zip = txtZipCode.Text;
            string dob = txtBirthDate.Text;
            string pin = txtPin.Text;
            string phone = txtPhone.Text;

            string empName = txtEmployer.Text;
            string empPhone = txtEPhone.Text;
            string empStreet = txtEstreet.Text;
            string empCity = txtECity.Text;
            string empState = txtEState.Text;
            string empCountry = txtECountry.Text;
            string empZip = txtEZipCode.Text;

            Session["FirstName"] = firstName;
            Session["LastName"] = lastName;
            //Session["4 Digit Pin"] = pin;

            string mySqlApplicant = "INSERT INTO Applicant(FirstName, MiddleName,LastName, StreetAddress,City,	State,	ZipCode,Country,Phone,BirthDate,DigitPin,EmployName,EmployPhone,EmpStreetAddress,EmpCity,EmpState,EmpCountry,EmpZipCode,Appimg) VALUES (@FirstName,@MiddleName,	@LastName,	@StreetAddress,@City,@State,@ZipCode,@Country,@Phone,@BirthDate,@DigitPin,@EmployName,@EmployPhone,@EmpStreetAddress,@EmpCity,@EmpState,@EmpCountry,@EmpZipCode,@Appimg) SELECT @@IDENTITY";
            SqlConnection myConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CliffordConnectionString"].ConnectionString);
            SqlCommand sqlCommand = new SqlCommand(mySqlApplicant, myConn);

            sqlCommand.Parameters.AddWithValue("@FirstName", firstName);
            sqlCommand.Parameters.AddWithValue("@MiddleName", middleName);
            sqlCommand.Parameters.AddWithValue("@LastName", lastName);
            sqlCommand.Parameters.AddWithValue("@StreetAddress", street);
            sqlCommand.Parameters.AddWithValue("@City", city);
            sqlCommand.Parameters.AddWithValue("@State", state);
            sqlCommand.Parameters.AddWithValue("@ZipCode", zip);
            sqlCommand.Parameters.AddWithValue("@Country", country);
            sqlCommand.Parameters.AddWithValue("@Phone", phone);
            sqlCommand.Parameters.AddWithValue("@BirthDate", dob);
            sqlCommand.Parameters.AddWithValue("@DigitPin", pin);
            sqlCommand.Parameters.AddWithValue("@EmployName", empName);
            sqlCommand.Parameters.AddWithValue("@EmployPhone", empPhone);
            sqlCommand.Parameters.AddWithValue("@EmpStreetAddress", empStreet);
            sqlCommand.Parameters.AddWithValue("@EmpCity", empCity);
            sqlCommand.Parameters.AddWithValue("@EmpState", empState);
            sqlCommand.Parameters.AddWithValue("@EmpCountry", empCountry);
            sqlCommand.Parameters.AddWithValue("@EmpZipCode", empZip);
            sqlCommand.Parameters.AddWithValue("@Appimg", imgByte);

            int id = 0;
            try
            {
                myConn.Open();
                Object temp = sqlCommand.ExecuteScalar();
                if (temp == null)
                {
                    id = 0;
                }
                else
                {
                    id = Convert.ToInt32(temp);
                }

                Session["appId"] = id;
                Response.Redirect("~/Forms/EnterToQuiz.aspx");
            }
            catch (Exception)
            {
                lblMessage.Text = "Insert Failed.";
                throw;
            }

            myConn.Close();
            clear();
        }

        public void clear()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhone.Text = "";
            txtPin.Text = "";
            txtState.Text = "";
            txtStreet.Text = "";
            txtZipCode.Text = "";
            txtBirthDate.Text = "";
            txtCity.Text = "";
            txtCountry.Text = "";
            txtECity.Text = "";
            txtECountry.Text = "";
            txtEmployer.Text = "";
            txtEPhone.Text = "";
            txtEState.Text = "";
            txtEstreet.Text = "";
            txtEZipCode.Text = "";
        }        
    }
}