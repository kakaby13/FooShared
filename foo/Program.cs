using Microsoft.EntityFrameworkCore;

using (var db = new ApplicationContext())
{
    
}

public sealed class ApplicationContext : DbContext
{
    public DbSet<Goose> Users => Set<Goose>();
    public ApplicationContext() => Database.EnsureCreated();
 
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer("Server=127.0.0.1,1433;Database=Master;User Id=SA;Password=!234Qwer;Trusted_Connection=True;");
    }
}

public class Goose
{ 
    public int Id { get; set; } 
}