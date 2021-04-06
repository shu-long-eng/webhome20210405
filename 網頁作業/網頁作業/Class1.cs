using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace 網頁作業
{
    public class Class1
    {
        static string connectionstring = "Data Source=localhost\\SQLExpress;Initial Catalog=財經系統; Integrated Security=true";
        public static Boolean confirmAcc(string account)
        {
            string querystr = $@"select Account from [User] where Account = @account;";

            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystr, con);

                command.Parameters.AddWithValue("@account", account);

                try
                {
                    con.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    if (!reader.Read())
                    {
                        reader.Close();
                        return true;
                    }
                    else
                    {
                        reader.Close();
                        return false;
                    }


                }
                catch (Exception e)
                {
                    HttpContext.Current.Response.Write(e);

                    return true;
                }
            }
        }
        public static Boolean confirmPw(string pw)
        {
            string querystr = $@"select password from [User] where password = @pw;";

            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystr, con);

                command.Parameters.AddWithValue("@pw", pw);

                try
                {
                    con.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    if (!reader.Read())
                    {
                        reader.Close();
                        return true;
                    }
                    else
                    {
                        reader.Close();
                        return false;
                    }


                }
                catch (Exception e)
                {
                    HttpContext.Current.Response.Write(e);

                    return true;
                }
            }
        }
        public static DataTable showTotalDB()
        {
            string querystring = @"SELECT  [ID],[日期],[科目],[摘要],[支出],[收入],[餘額] from Assets;";

            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystring, con);

                try
                {
                    con.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    DataTable dt = new DataTable();

                    dt.Load(reader);

                    reader.Close();

                    return dt;
                }
                catch (Exception ex)
                {
                    HttpContext.Current.Response.Write(ex);

                    return null;
                }
            }

        }        
        public static DataTable showDB()
        {
            string querystring = "select * from Assets;";

            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystring, con);

                try
                {
                    con.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    DataTable dt = new DataTable();

                    dt.Load(reader);

                    reader.Close();

                    return dt;
                }
                catch (Exception ex)
                {
                    HttpContext.Current.Response.Write(ex);
                    return null;
                }
            }
        }
        public static void deleteData(string id)
        {
            string querystring = @"delete  from Assets where ID=@ID;";

            using(SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystring, con);

                command.Parameters.AddWithValue("@ID", id);
                try
                {
                    con.Open();

                    command.ExecuteNonQuery();
                }
                catch (Exception e)
                {
                    HttpContext.Current.Response.Write(e);
                }
            }
        }
        public static void insertData(string date, string sub)
        {
            string querystring = @"insert into Assets (日期,科目) 
                                values (@date,@sub);";

            using(SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystring, con);

                command.Parameters.AddWithValue("@date",date);
                command.Parameters.AddWithValue("@sub", sub);
               
                
                try
                {
                    con.Open();

                    command.ExecuteNonQuery();

                }
                catch (Exception e)
                {
                    HttpContext.Current.Response.Write(e);
                }
            }
        }
        public static void update(string id, string sub)
        {
            string querystring = "update Assets set 科目 = @sub where ID = @id;";

            using(SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystring, con);

                command.Parameters.AddWithValue("@ID", id);
                command.Parameters.AddWithValue("@sub", sub);

                try
                {
                    con.Open();

                    command.ExecuteNonQuery();

                }catch(Exception e){
                    HttpContext.Current.Response.Write(e);
                }
            }
        }
        public static  DataTable searchDB(string id)
        {
            string querystr = @"select * from Assets where [ID]=@ID;";

            using(SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand command = new SqlCommand(querystr, con);

                command.Parameters.AddWithValue("@ID", id);

                try
                {
                    con.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    reader.Close();
                    return dt;
                }
                catch (Exception e)
                {
                    HttpContext.Current.Response.Write(e);
                    return null;
                }
            }
        }
    }
}