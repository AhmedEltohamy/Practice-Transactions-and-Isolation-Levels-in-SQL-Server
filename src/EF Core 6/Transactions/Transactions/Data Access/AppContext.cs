using Microsoft.EntityFrameworkCore;
using Transactions.Entities;

namespace Transactions.Data_Access
{
    internal class AppContext : DbContext
    {
        public DbSet<Person> Persons { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder
                .UseSqlServer(@"Data Source=.;Initial Catalog=Test_Transactions;Integrated Security=True");
        }
    }
}
