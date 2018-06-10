using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApp1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        System.FormatException formex = new System.FormatException();

        private static char Cipher(char ch, int key)
        {
            if (!char.IsLetter(ch))
            {
                return ch;
            }

            char offset = char.IsUpper(ch) ? 'A' : 'a';
            return (char)((((ch + key) - offset) % 26) + offset);
        }

        public static string Encipher(string input, int key)
        {
            string output = string.Empty;

            foreach (char ch in input)
            {
                output += Cipher(ch, key);
            }

            return output;
        }

        public static string Decipher(string input, int key)
        {
            return Encipher(input, 26 - key);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Decrypt_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Encrypt_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            if (Encrypt.Checked)
            {
                try
                {
                    TextBox3.Text = Encipher(TextBox1.Text, int.Parse(TextBox2.Text));
                    Label4.Text = String.Empty;
                }
                catch(System.FormatException ex)
                {
                    Label4.Text = ex.Message;
                }
            }

            else if (Decrypt.Checked)
            {

                try
                {
                    TextBox4.Text = Decipher(TextBox3.Text, int.Parse(TextBox2.Text));
                    Label4.Text = String.Empty;
                }
                catch(System.FormatException ex)
                {
                    Label4.Text = ex.Message;
                }
            }
        }
    }
}