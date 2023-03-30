using System.Data.SqlClient;

namespace ConsoleApp1
{
    class Server
    {
        private SqlConnection Connection = new SqlConnection();
        private SqlCommand Commands { get; set; }
      
        public Server() => Connection.ConnectionString = "Server=localhost\\SQLEXPRESS;Database=Empresa_SumativaIV_DBI;Trusted_Connection=True;";

        public void open() => Connection.Open();
        public void close() => Connection.Close();

        public void command(string? command = null , bool get = false)
        {
            Commands = new SqlCommand(command , Connection);
        
            if (get)
                using (SqlDataReader reader = Commands.ExecuteReader())
                {
                    for (int i = 0; i < reader.FieldCount; i++) Console.Write("{0}\t", reader.GetName(i).PadRight(30));
                    Console.WriteLine();

                    while (reader.Read())
                    {
                        for (int i = 0; i < reader.FieldCount; i++) Console.Write("{0}\t", reader[i]?.ToString()?.PadRight(30));
                        Console.WriteLine();
                    }

                    Console.WriteLine();
                    Console.WriteLine();
                    Console.WriteLine();
                }

            else
            {
                Console.WriteLine("Comando Exitoso");
                Console.WriteLine();
                Console.WriteLine();
                Console.WriteLine();
            }
        }
    }
}
