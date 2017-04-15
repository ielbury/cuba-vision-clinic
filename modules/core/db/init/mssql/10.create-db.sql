-- begin APPOINTMENTS
create table Appointments (
    ID bigint identity,
    Created datetime,
    CreatedBy varchar(255),
    Modified datetime,
    ModifiedBy varchar(255),
    --
    AppointmentTime datetime not null,
    AppointmentDate datetime not null,
    AppointmentType integer not null,
    DoctorNotes varchar(255),
    Appointment_Patient bigint not null,
    --
    primary key (ID)
)^
-- end APPOINTMENTS
-- begin INVOICEDETAILS
create table InvoiceDetails (
    ID bigint identity,
    Created datetime,
    CreatedBy varchar(255),
    Modified datetime,
    ModifiedBy varchar(255),
    --
    Quantity integer not null,
    UnitPrice decimal(18, 2) not null,
    Product_ProductID bigint not null,
    Invoice_InvoiceDetail bigint not null,
    --
    primary key (ID)
)^
-- end INVOICEDETAILS
-- begin INVOICES
create table Invoices (
    ID bigint identity,
    Created datetime,
    CreatedBy varchar(255),
    Modified datetime,
    ModifiedBy varchar(255),
    --
    InvoiceDate datetime not null,
    InvoiceDue datetime not null,
    InvoiceStatus integer not null,
    ShipDate datetime not null,
    Invoice_Patient bigint not null,
    --
    primary key (ID)
)^
-- end INVOICES
-- begin PATIENTS
create table Patients (
    ID bigint identity,
    Created datetime,
    CreatedBy varchar(255),
    Modified datetime,
    ModifiedBy varchar(255),
    --
    Name varchar(255) not null,
    Street varchar(255) not null,
    Street2 varchar(255),
    City varchar(255) not null,
    State varchar(255) not null,
    Zip varchar(255) not null,
    PrimaryPhone varchar(255) not null,
    SecondaryPhone varchar(255),
    Email varchar(255),
    PolicyNumber varchar(12) not null,
    --
    primary key (ID)
)^
-- end PATIENTS
-- begin PRODUCT
create table Product (
    ProductID bigint identity,
    --
    ProductName varchar(50) not null,
    MSRP decimal(19, 4) not null,
    Description varchar(max),
    ProductImage image,
    Category varchar(max),
    --
    primary key (PRODUCTID)
)^
-- end PRODUCT
-- begin PRODUCTREBATE
create table ProductRebate (
    ProductRebateID bigint identity,
    --
    ProductID bigint not null,
    RebateStart datetime,
    RebateEnd datetime,
    Rebate decimal(19, 4),
    --
    primary key (PRODUCTREBATEID)
)^
-- end PRODUCTREBATE
