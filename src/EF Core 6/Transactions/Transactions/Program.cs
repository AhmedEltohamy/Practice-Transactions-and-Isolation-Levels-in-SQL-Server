using Transactions.Entities;
using AppContext = Transactions.Data_Access.AppContext;

using (var setupContext = new AppContext())
{
    setupContext.Database.EnsureDeleted();
    setupContext.Database.EnsureCreated();
    setupContext.Persons.AddRange(new Person() { Name = "Ahmed" }, new Person() { Name = "Mohamed" });
    setupContext.SaveChanges();
}

using var context = new AppContext();
using var transaction = context.Database.BeginTransaction();

//or use it with explict Isolation Level
// using var transaction = context.Database.BeginTransaction(System.Data.IsolationLevel.Serializable);

try
{
    var persons = context.Persons.ToList();
    foreach (var person in persons)
        Console.WriteLine(person.Name);

    context.Persons.Add(new Person() { Name = "Abdullah" });
    context.SaveChanges();
    
    context.Persons.Add(new Person() { Name = "Eltohamy" });
    context.SaveChanges();
    
    transaction.Commit();
}
catch (Exception e)
{
    Console.WriteLine(e.Message);
    transaction.Rollback();
}
