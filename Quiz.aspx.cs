using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

namespace CliffordSchool.Forms
{
    public partial class Quiz : System.Web.UI.Page
    {
        protected Dictionary<int, String> AnswerArray = new Dictionary<int, String>();
        protected Dictionary<int, String> WrongArray = new Dictionary<int, String>();
        protected int NumberOfQuestions = 0;
        protected int NumberCorrect = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                displayQuestions();
            }
            else
            {
                string msg;
                AnswerArray = (Dictionary<int, String>)Session["answerArray"];
                NumberOfQuestions = (int)Session["NumberOfQuestions"];
                HttpRequest r;
                r = this.Request;
                bool AreAllAnswered = CalculateScore(r);

                HttpResponse rs;
                rs = this.Response;
                if (AreAllAnswered == false)
                {
                    msg = "You missed some questions.Please go back in your browser and answer them <p>";
                    this.displaysection.InnerHtml = msg;
                    //rs.Write("You missed some questions.Please go back in your browser and answer them <p>");
                    return;
                }
                msg = "Your score is " + NumberCorrect.ToString() + "out of" + NumberOfQuestions.ToString() + "<p>";
                for (int num = 0; num < NumberOfQuestions; num++)
                {
                    if (WrongArray[num].Length > 0)
                    {
                        msg = msg + WrongArray[num] + "</br>";
                    }
                }
                msg += getRanking();
                this.displaysection.InnerHtml = msg;
                this.btnSubmit.Visible = false;
            }
        }

        public void displayQuestions()
        {

            {
                SqlConnection myConn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CliffordConnectionString"].ConnectionString);
                myConn.Open();
                String query = "Select * from QuestionDisplay order by QuestionId";
                SqlCommand sqlCommand = new SqlCommand(query, myConn);

                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                int questionId = 0;
                while (sqlDataReader.Read())
                {

                    if (questionId == Convert.ToInt32(sqlDataReader["QuestionId"]))
                    {
                        CreateRowsForChoice(sqlDataReader, questionId);
                    }
                    else
                    {
                        if (questionId != 0)
                        {
                            TableRow spacer = new TableRow();
                            TableCell spacerCell = new TableCell();
                            spacerCell.Height = 30;
                            spacer.Cells.Add(spacerCell);
                            Table1.Rows.Add(spacer);
                        }
                        questionId = Convert.ToInt32(sqlDataReader["QuestionId"]);
                        //AnswerArray[questionId] = sqlDataReader["Answer"].ToString()                      
                        AnswerArray.Add(questionId, sqlDataReader["Answer"].ToString());
                        TableRow tr = new TableRow();
                        Table1.Rows.Add(tr);
                        TableCell aCell = new TableCell();
                        aCell.Text = questionId + ". " + sqlDataReader["QuestionText"].ToString();
                        tr.Cells.Add(aCell);
                        TableRow blankRow = new TableRow();
                        TableCell cellPad = new TableCell();
                        cellPad.BorderWidth = 5;
                        blankRow.Cells.Add(cellPad);
                        Table1.Rows.Add(blankRow);
                        CreateRowsForChoice(sqlDataReader, questionId);

                    }
                }
                Session["answerArray"] = AnswerArray;
                //for the total number of questions
                query = "Select count(*) as cnt from Questions";

                sqlDataReader.Close();
                sqlCommand = new SqlCommand(query, myConn);

                sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    Session["NumberOfQuestions"] = (int)sqlDataReader["cnt"];
                }
                sqlDataReader.Close();
                myConn.Close();

            }

        }

        private void CreateRowsForChoice(SqlDataReader sqlDataReader, int questionId)
        {
            TableRow tr2 = new TableRow();
            Table1.Rows.Add(tr2);
            TableCell aCell3 = new TableCell();
            aCell3.Width = 1000;
            aCell3.HorizontalAlign = HorizontalAlign.Left;
            tr2.Cells.Add(aCell3);
            RadioButton rb = new RadioButton();
            rb.GroupName = "group" + sqlDataReader["QuestionID"].ToString();
            rb.Text = sqlDataReader["ChoiceLetter"].ToString() + ". " + sqlDataReader["ChoiceText"].ToString();
            rb.ID = "radio" + questionId.ToString() + sqlDataReader["ChoiceLetter"].ToString();
            rb.Visible = true;
            aCell3.Controls.Add(rb);
        }



        //added from other source
        private int CalcQuestionsAnsweredCount(HttpRequest r)
        {
            int count = 0;
            for (int i = 0; i < r.Form.Keys.Count; i++)
            {
                string nextKey = r.Form.Keys[i];
                if (nextKey.Contains("group"))
                {
                    count++;
                }
            }
            return count;
        }
        private bool CalculateScore(HttpRequest r)
        {
            // initialize wrong answer array
            WrongArray.Clear();
            // make sure all questions were answered by the tester
            int numAnswered = CalcQuestionsAnsweredCount(r);
            if (numAnswered != NumberOfQuestions)
            {
                return false;
            }


            NumberCorrect = 0;

            // initialize wrong answer array to empty string
            for (int j = 0; j < NumberOfQuestions; j++)
            {
                WrongArray[j] = "";
            }

            // cycle through all the keys in the returned Request
            for (int i = 0; i < r.Form.Keys.Count; i++)
            {
                string nextKey = r.Form.Keys[i];

                // see if the key contains a radio button Group
                if (nextKey.Contains("group"))
                {
                    // It contains a radiobutton, get the radiobutton ID
                    string radioAnswer = r.Form.Get(nextKey);

                    // extract the letter choice of the tester from the button ID
                    string radioAnswerLetter = radioAnswer[radioAnswer.Length - 1].ToString();

                    // extract the question number from the radio ID
                    string radioQuestionNumber = radioAnswer.Substring(5);
                    radioQuestionNumber = radioQuestionNumber.Substring(0, radioQuestionNumber.Length - 1);
                    int questionNumber = Convert.ToInt32(radioQuestionNumber);

                    if (radioAnswerLetter == AnswerArray[questionNumber])
                    {
                        // tester got it right, increment the # correct
                        NumberCorrect++;
                        //CorrectArray.Add (questionNumber - 1,true);
                        WrongArray[questionNumber - 1] = "";
                    }
                    else
                    {
                        // put the correct answer in the Wrong Answer Array.
                        WrongArray[questionNumber - 1] = "Incorrect: Question #" + questionNumber + " - <B>" + radioAnswerLetter + "</B>.Correct Answer is " + AnswerArray[questionNumber].ToString() + "<BR>\n";


                    }
                }
            
            }
            return true;
        }

        private string getRanking()
        {
            float ratio = (float)NumberCorrect / (float)NumberOfQuestions;
            if (ratio >= 0.49)
                return "<p> Congratulations, you are passed. Now you can make a  <a href=~/Account/Payments.aspx> Payment </a>";
            if (ratio < 0.49)
                return "<p> Sorry, you are Failed. Please take the exam again after 2 weeks";
            return "<P> you may want to brush up";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
        }
    }
}