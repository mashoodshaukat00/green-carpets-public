using System;
using GC.Db.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace GC.Db
{
    public partial class GreenCarpetsDbContext : DbContext
    {
        public GreenCarpetsDbContext()
        {
        }

        public GreenCarpetsDbContext(DbContextOptions<GreenCarpetsDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<BaseCompany> BaseCompanies { get; set; }
        public virtual DbSet<Branch> Branches { get; set; }
        public virtual DbSet<CompanyOwner> CompanyOwners { get; set; }
        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<CustomerType> CustomerTypes { get; set; }
        public virtual DbSet<DeliveryAddress> DeliveryAddresses { get; set; }
        public virtual DbSet<DeliveryReport> DeliveryReports { get; set; }
        public virtual DbSet<DeliveryStatusType> DeliveryStatusTypes { get; set; }
        public virtual DbSet<Designation> Designations { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Invoice> Invoices { get; set; }
        public virtual DbSet<InvoiceLine> InvoiceLines { get; set; }
        public virtual DbSet<InvoiceStatusType> InvoiceStatusTypes { get; set; }
        public virtual DbSet<InvoiceType> InvoiceTypes { get; set; }
        public virtual DbSet<MmCustomerSubscription> MmCustomerSubscriptions { get; set; }
        public virtual DbSet<MmSubscriptionService> MmSubscriptionServices { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderLine> OrderLines { get; set; }
        public virtual DbSet<OrderType> OrderTypes { get; set; }
        public virtual DbSet<PaymentMethod> PaymentMethods { get; set; }
        public virtual DbSet<PaymentMethodType> PaymentMethodTypes { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductCategory> ProductCategories { get; set; }
        public virtual DbSet<Service> Services { get; set; }
        public virtual DbSet<Subscription> Subscriptions { get; set; }
        public virtual DbSet<SubscriptionType> SubscriptionTypes { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }
        public virtual DbSet<Vehicle> Vehicles { get; set; }
        public virtual DbSet<WebUser> WebUsers { get; set; }
        public virtual DbSet<WebUserRole> WebUserRoles { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=localhost;Database=GreenCarpetsDb;User Id=greenappdbuser;Password=1XsNovYt8CTutCD4yDwj;")
                    .UseLazyLoadingProxies();
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Latin1_General_CI_AS");

            modelBuilder.Entity<BaseCompany>(entity =>
            {
                entity.ToTable("BaseCompany");

                entity.Property(e => e.Address).HasMaxLength(250);

                entity.Property(e => e.City).HasMaxLength(50);

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(150);

                entity.Property(e => e.LegalName)
                    .IsRequired()
                    .HasMaxLength(150);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(150);

                entity.Property(e => e.OrganizationNumber)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.PostalCode).HasMaxLength(20);

                entity.HasOne(d => d.CompanyOwner)
                    .WithMany(p => p.BaseCompanies)
                    .HasForeignKey(d => d.CompanyOwnerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_BaseCompany_CompanyOwner");

                entity.HasOne(d => d.Country)
                    .WithMany(p => p.BaseCompanies)
                    .HasForeignKey(d => d.CountryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_BaseCompany_Countries");
            });

            modelBuilder.Entity<Branch>(entity =>
            {
                entity.ToTable("Branch");

                entity.Property(e => e.Address).HasMaxLength(250);

                entity.Property(e => e.City).HasMaxLength(50);

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(150);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(1);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.PostalCode).HasMaxLength(20);

                entity.HasOne(d => d.BaseCompany)
                    .WithMany(p => p.Branches)
                    .HasForeignKey(d => d.BaseCompanyId)
                    .HasConstraintName("FK_Branch_BaseCompany");
            });

            modelBuilder.Entity<CompanyOwner>(entity =>
            {
                entity.ToTable("CompanyOwner");

                entity.HasIndex(e => e.UserId, "UQ__CompanyO__1788CC4DEDA32A6B")
                    .IsUnique();

                entity.Property(e => e.Address).HasMaxLength(250);

                entity.Property(e => e.City).HasMaxLength(50);

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(150);

                entity.Property(e => e.FirstName).HasMaxLength(75);

                entity.Property(e => e.LastName).HasMaxLength(50);

                entity.Property(e => e.MiddleName).HasMaxLength(50);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.PostalCode).HasMaxLength(20);

                entity.HasOne(d => d.User)
                    .WithOne(p => p.CompanyOwner)
                    .HasForeignKey<CompanyOwner>(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CompanyOwner_WebUser");
            });

            modelBuilder.Entity<Country>(entity =>
            {
                entity.ToTable("Country");

                entity.HasIndex(e => e.Iso, "uc_Countries_Iso")
                    .IsUnique();

                entity.Property(e => e.Iso)
                    .IsRequired()
                    .HasMaxLength(2)
                    .IsUnicode(false);

                entity.Property(e => e.Iso3)
                    .HasMaxLength(3)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(80)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Customer>(entity =>
            {
                entity.ToTable("Customer");

                entity.HasIndex(e => e.UserId, "UQ__Customer__1788CC4D158CB9DC")
                    .IsUnique();

                entity.Property(e => e.Address).HasMaxLength(250);

                entity.Property(e => e.City).HasMaxLength(50);

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(150);

                entity.Property(e => e.FirstName).HasMaxLength(75);

                entity.Property(e => e.LastName).HasMaxLength(50);

                entity.Property(e => e.MiddleName).HasMaxLength(50);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.PostalCode).HasMaxLength(20);

                entity.HasOne(d => d.CustomerType)
                    .WithMany(p => p.Customers)
                    .HasForeignKey(d => d.CustomerTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Customer_CustomerType");

                entity.HasOne(d => d.User)
                    .WithOne(p => p.Customer)
                    .HasForeignKey<Customer>(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Customer_WebUser");
            });

            modelBuilder.Entity<CustomerType>(entity =>
            {
                entity.ToTable("CustomerType");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<DeliveryAddress>(entity =>
            {
                entity.ToTable("DeliveryAddress");

                entity.Property(e => e.Address).HasMaxLength(250);

                entity.Property(e => e.City).HasMaxLength(50);

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(150);

                entity.Property(e => e.Latitude).HasColumnType("decimal(12, 9)");

                entity.Property(e => e.Longitude).HasColumnType("decimal(12, 9)");

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.PostalCode).HasMaxLength(20);
            });

            modelBuilder.Entity<DeliveryReport>(entity =>
            {
                entity.ToTable("DeliveryReport");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Latitude).HasColumnType("decimal(12, 9)");

                entity.Property(e => e.Longitude).HasColumnType("decimal(12, 9)");

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.HasOne(d => d.DeliveryAddress)
                    .WithMany(p => p.DeliveryReports)
                    .HasForeignKey(d => d.DeliveryAddressId)
                    .HasConstraintName("FK_DeliveryReport_DeliveryAddress");

                entity.HasOne(d => d.DeliveryStatusType)
                    .WithMany(p => p.DeliveryReports)
                    .HasForeignKey(d => d.DeliveryStatusTypeId)
                    .HasConstraintName("FK_DeliveryReport_DeliveryStatusType");

                entity.HasOne(d => d.Vehicle)
                    .WithMany(p => p.DeliveryReports)
                    .HasForeignKey(d => d.VehicleId)
                    .HasConstraintName("FK_DeliveryReport_Vehicle");
            });

            modelBuilder.Entity<DeliveryStatusType>(entity =>
            {
                entity.ToTable("DeliveryStatusType");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<Designation>(entity =>
            {
                entity.ToTable("Designation");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<Employee>(entity =>
            {
                entity.ToTable("Employee");

                entity.Property(e => e.Address).HasMaxLength(250);

                entity.Property(e => e.City).HasMaxLength(50);

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(150);

                entity.Property(e => e.FirstName).HasMaxLength(75);

                entity.Property(e => e.LastName).HasMaxLength(50);

                entity.Property(e => e.MiddleName).HasMaxLength(50);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.PostalCode).HasMaxLength(20);

                entity.HasOne(d => d.Branch)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.BranchId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Employee_Branch");

                entity.HasOne(d => d.Designation)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.DesignationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Employee_Designation");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Employee_WebUser");
            });

            modelBuilder.Entity<Invoice>(entity =>
            {
                entity.ToTable("Invoice");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.TotalAmount).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.TotalPaidAmount).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.TotalVat).HasColumnType("decimal(19, 4)");

                entity.HasOne(d => d.InvoiceStatusType)
                    .WithMany(p => p.Invoices)
                    .HasForeignKey(d => d.InvoiceStatusTypeId)
                    .HasConstraintName("FK_Invoice_InvoiceStatusType");

                entity.HasOne(d => d.InvoiceType)
                    .WithMany(p => p.Invoices)
                    .HasForeignKey(d => d.InvoiceTypeId)
                    .HasConstraintName("FK_Invoice_InvoiceType");
            });

            modelBuilder.Entity<InvoiceLine>(entity =>
            {
                entity.ToTable("InvoiceLine");

                entity.Property(e => e.OrderSum).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.Title).HasMaxLength(50);

                entity.Property(e => e.Vat)
                    .HasColumnType("decimal(19, 4)")
                    .HasColumnName("VAT");

                entity.HasOne(d => d.Invoice)
                    .WithMany(p => p.InvoiceLines)
                    .HasForeignKey(d => d.InvoiceId)
                    .HasConstraintName("FK_InvoiceLine_Invoice");

                entity.HasOne(d => d.Order)
                    .WithMany(p => p.InvoiceLines)
                    .HasForeignKey(d => d.OrderId)
                    .HasConstraintName("FK_InvoiceLine_Order");
            });

            modelBuilder.Entity<InvoiceStatusType>(entity =>
            {
                entity.ToTable("InvoiceStatusType");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<InvoiceType>(entity =>
            {
                entity.ToTable("InvoiceType");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<MmCustomerSubscription>(entity =>
            {
                entity.ToTable("MM_CustomerSubscription");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ExpiryDate).HasColumnType("datetime");

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.StartDate).HasColumnType("datetime");

                entity.HasOne(d => d.Customer)
                    .WithMany(p => p.MmCustomerSubscriptions)
                    .HasForeignKey(d => d.CustomerId)
                    .HasConstraintName("FK_MM_CustomerSubscription_Customer");

                entity.HasOne(d => d.Subscription)
                    .WithMany(p => p.MmCustomerSubscriptions)
                    .HasForeignKey(d => d.SubscriptionId)
                    .HasConstraintName("FK_MM_CustomerSubscription_Subscription");
            });

            modelBuilder.Entity<MmSubscriptionService>(entity =>
            {
                entity.ToTable("MM_SubscriptionServices");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ExpiryDate).HasColumnType("datetime");

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.StartDate).HasColumnType("datetime");

                entity.HasOne(d => d.Service)
                    .WithMany(p => p.MmSubscriptionServices)
                    .HasForeignKey(d => d.ServiceId)
                    .HasConstraintName("FK_MM_SubscriptionServices_Service");

                entity.HasOne(d => d.Subscription)
                    .WithMany(p => p.MmSubscriptionServices)
                    .HasForeignKey(d => d.SubscriptionId)
                    .HasConstraintName("FK_MM_SubscriptionServices_Subscription");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.ToTable("Order");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.TotalAmount).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.TotalVat).HasColumnType("decimal(19, 4)");

                entity.HasOne(d => d.Customer)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.CustomerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Order_Customer");

                entity.HasOne(d => d.Employee)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.EmployeeId)
                    .HasConstraintName("FK_Order_Employee");

                entity.HasOne(d => d.OrderType)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.OrderTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Order_OrderType");
            });

            modelBuilder.Entity<OrderLine>(entity =>
            {
                entity.ToTable("OrderLine");

                entity.Property(e => e.PriceExcludingVat).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.Vat)
                    .HasColumnType("decimal(19, 4)")
                    .HasColumnName("VAT");

                entity.HasOne(d => d.Order)
                    .WithMany(p => p.OrderLines)
                    .HasForeignKey(d => d.OrderId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_OrderLine_Order");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.OrderLines)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK_OrderLine_Product");
            });

            modelBuilder.Entity<OrderType>(entity =>
            {
                entity.ToTable("OrderType");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Description).HasMaxLength(250);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<PaymentMethod>(entity =>
            {
                entity.ToTable("PaymentMethod");

                entity.Property(e => e.CardExpiredAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Cvc)
                    .HasMaxLength(5)
                    .IsUnicode(false);

                entity.Property(e => e.CardNumber).HasMaxLength(50).IsUnicode(true);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.HasOne(d => d.CardType)
                    .WithMany(p => p.PaymentMethods)
                    .HasForeignKey(d => d.CardTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PaymentMethod_PaymentCardType");

                entity.HasOne(d => d.Customer)
                    .WithMany(p => p.PaymentMethods)
                    .HasForeignKey(d => d.CustomerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PaymentMethod_Customer");
            });

            modelBuilder.Entity<PaymentMethodType>(entity =>
            {
                entity.ToTable("PaymentMethodType");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("Product");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.DisplayPrice).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.ImageUrl).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(200);

                entity.Property(e => e.ProfitMargin).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.PurchasePrice).HasColumnType("decimal(19, 4)");

                entity.HasOne(d => d.Branch)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.BranchId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Product_Branch");

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.CategoryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Product_ProductCategory");

                entity.HasOne(d => d.Supplier)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.SupplierId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Product_Supplier");
            });

            modelBuilder.Entity<ProductCategory>(entity =>
            {
                entity.ToTable("ProductCategory");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<Service>(entity =>
            {
                entity.ToTable("Service");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<Subscription>(entity =>
            {
                entity.ToTable("Subscription");

                entity.Property(e => e.BaseCompanyId).HasColumnName("BaseCompanyID");

                entity.Property(e => e.CreatedAt)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.IsActive).HasDefaultValueSql("((0))");

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.PriceExcludingVat).HasColumnType("decimal(19, 4)");

                entity.Property(e => e.Vat)
                    .HasColumnType("decimal(19, 4)")
                    .HasColumnName("VAT");

                entity.HasOne(d => d.BaseCompany)
                    .WithMany(p => p.Subscriptions)
                    .HasForeignKey(d => d.BaseCompanyId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Subscription_BaseCompany");

                entity.HasOne(d => d.SubscriptionType)
                    .WithMany(p => p.Subscriptions)
                    .HasForeignKey(d => d.SubscriptionTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Subscription_SubscriptionType");
            });

            modelBuilder.Entity<SubscriptionType>(entity =>
            {
                entity.ToTable("SubscriptionType");

                entity.Property(e => e.IsDailySubscription).HasDefaultValueSql("((0))");

                entity.Property(e => e.IsMonthlySubscription).HasDefaultValueSql("((0))");

                entity.Property(e => e.IsYearlySubscription).HasDefaultValueSql("((0))");

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            modelBuilder.Entity<Supplier>(entity =>
            {
                entity.ToTable("Supplier");

                entity.Property(e => e.Adress).HasMaxLength(150);

                entity.Property(e => e.City).HasMaxLength(150);

                entity.Property(e => e.ContactPersonEmail).HasMaxLength(150);

                entity.Property(e => e.ContactPersonName).HasMaxLength(150);

                entity.Property(e => e.ContactPersonPhone).HasMaxLength(150);

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.LegalName).HasMaxLength(150);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(150);

                entity.Property(e => e.PostalCode).HasMaxLength(150);
            });

            modelBuilder.Entity<Vehicle>(entity =>
            {
                entity.ToTable("Vehicle");

                entity.Property(e => e.Make)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Model)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.RegistrationNo)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.HasOne(d => d.Branch)
                    .WithMany(p => p.Vehicles)
                    .HasForeignKey(d => d.BranchId)
                    .HasConstraintName("FK_Vehicle_Branch");
            });

            modelBuilder.Entity<WebUser>(entity =>
            {
                entity.ToTable("WebUser");

                entity.Property(e => e.Id).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(50);

                entity.Property(e => e.LastLoginTime).HasColumnType("datetime");

                entity.Property(e => e.MobileNumber).HasMaxLength(50);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Password).HasMaxLength(50);

                entity.Property(e => e.UserLocketAt).HasColumnType("datetime");

                entity.Property(e => e.UserName).HasMaxLength(50);

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.WebUsers)
                    .HasForeignKey(d => d.RoleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_WebUser_Role");
            });

            modelBuilder.Entity<WebUserRole>(entity =>
            {
                entity.ToTable("WebUserRole");

                entity.Property(e => e.CreatedAt).HasColumnType("datetime");

                entity.Property(e => e.CreatedBy).HasMaxLength(100);

                entity.Property(e => e.ModifiedAt).HasColumnType("datetime");

                entity.Property(e => e.ModifiedBy).HasMaxLength(100);

                entity.Property(e => e.Name).HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
