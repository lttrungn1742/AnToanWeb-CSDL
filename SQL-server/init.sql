use master

CREATE LOGIN [QLSV_Admin] WITH PASSWORD=N'AdminP@ssword789!', DEFAULT_DATABASE=[mASter], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
CREATE LOGIN [QLSV_Nv] WITH PASSWORD=N'NHANVIENP@ssword456!', DEFAULT_DATABASE=[mASter], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
CREATE LOGIN [QLSV_Login] WITH PASSWORD=N'LoginP@ssword123!', DEFAULT_DATABASE=[mASter], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO

CREATE databASe QLSVNhom
GO

USE [QLSVNhom]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGDIEM](
	[MASV] [VARCHAR](20) NOT NULL,
	[MAHP] [VARCHAR](20) NOT NULL,
	[DIEMTHI] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MAHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCPHAN](
	[MAHP] [VARCHAR](20) NOT NULL,
	[TENHP] [NVARCHAR](100) NOT NULL,
	[SOTC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHSU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Noidung] [ntext] NULL,
	[ChiTiet] [ntext] NULL,
	[KetQua] [bit] NULL,
	[Thoigian] [datetime] NOT NULL,
 CONSTRAINT [PK_LICHSU] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [VARCHAR](20) NOT NULL,
	[TENLOP] [NVARCHAR](100) NOT NULL,
	[MANV] [VARCHAR](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SendFROM] [VARCHAR](20) NOT NULL,
	[SendTO] [VARCHAR](20) NOT NULL,
	[header] [NVARCHAR](200) NULL,
	[CONtentMail] [ntext] NOT NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_mail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [VARCHAR](20) NOT NULL,
	[HOTEN] [NVARCHAR](100) NOT NULL,
	[EMAIL] [VARCHAR](50) NULL,
	[LUONG] [varbinary](max) NULL,
	[TENDN] [NVARCHAR](100) NOT NULL,
	[MATKHAU] [varbinary](max) NOT NULL,
	[PUBKEY] [VARCHAR](20) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK__NHANVIEN__603F5114A49432FF] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [NVARCHAR](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [VARCHAR](20) NOT NULL,
	[HOTEN] [NVARCHAR](100) NOT NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [NVARCHAR](200) NULL,
	[MALOP] [VARCHAR](20) NULL,
	[TENDN] [NVARCHAR](100) NULL,
	[MATKHAU] [varbinary](max) NULL,
 CONSTRAINT [PK__SINHVIEN__60228A289CE39AD3] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BANGDIEM] ([MASV], [MAHP], [DIEMTHI]) VALUES (N'N18DCAT103', N'AT', NULL)
GO
INSERT [dbo].[HOCPHAN] ([MAHP], [TENHP], [SOTC]) VALUES (N'AT', N'An TOàn Thông Tin', 3)
GO
SET IDENTITY_INSERT [dbo].[LICHSU] ON 

SET IDENTITY_INSERT [dbo].[LICHSU] OFF
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MANV]) VALUES (N'AT1', N'An TOàn Thông Tin 1', N'NV01')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MANV]) VALUES (N'AT2', N'An TOàn Thông Tin 2', N'NV01')
GO
SET IDENTITY_INSERT [dbo].[mail] ON 

INSERT [dbo].[mail] ([id], [SendFROM], [SendTO], [header], [CONtentMail], [time]) VALUES (1, N'NV01', N'NV02', N'HelloWorld', N'Xin chao ban', CAST(N'2021-11-24T11:20:46.580' AS DateTime))
INSERT [dbo].[mail] ([id], [SendFROM], [SendTO], [header], [CONtentMail], [time]) VALUES (2, N'admin', N'NV02', N'<script>alert(1)</script>', N'aaa', CAST(N'2021-11-30T10:28:48.370' AS DateTime))
SET IDENTITY_INSERT [dbo].[mail] OFF
GO
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [EMAIL], [LUONG], [TENDN], [MATKHAU], [PUBKEY], [role]) VALUES (N'admin', N'admin', N'admin', 0xD74D34, N'admin', 0xD033E22AE348AEB5660FC2140AEC35850C4DA997, N'admin', 1)
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [EMAIL], [LUONG], [TENDN], [MATKHAU], [PUBKEY], [role]) VALUES (N'NV01', N'Nguyễn Văn A', N'ttrungt1742@gmail.com', 0xE74D38, N'NV01', 0xCB105AC8ACE130BB623F8ADDBFD2D675E0D0ABA6, N'NV01', 2)
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [EMAIL], [LUONG], [TENDN], [MATKHAU], [PUBKEY], [role]) VALUES (N'NV02', N'Nguyễn Văn B', N'b@gmail.com', 0xDB4D34, N'NV02', 0x7C4A8D09CA3762AF61E59520943DC26494F8941B, N'NV02', 2)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([Id], [Role]) VALUES (2, N'NHANVIEN')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [NGAYSINH], [DIACHI], [MALOP], [TENDN], [MATKHAU]) VALUES (N'N18DCAT057', N'Phạm Thị Tuyết Nhi<3', CAST(N'2000-02-17' AS Date), N'DN', N'AT2', NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [NGAYSINH], [DIACHI], [MALOP], [TENDN], [MATKHAU]) VALUES (N'N18DCAT097', N'Lê Thành Trung <3', CAST(N'2000-04-17' AS Date), N'HCM', N'AT1', NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MASV], [HOTEN], [NGAYSINH], [DIACHI], [MALOP], [TENDN], [MATKHAU]) VALUES (N'N18DCAT103', N'Huỳnh Đình Vũ', CAST(N'2000-01-01' AS Date), N'Phan Thiết', N'AT2', NULL, NULL)
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH CHECK ADD  CONSTRAINT [FK_BANGDIEM_HOCPHAN] FOREIGN KEY([MAHP])
REFERENCES [dbo].[HOCPHAN] ([MAHP])
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_HOCPHAN]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH CHECK ADD  CONSTRAINT [FK_BANGDIEM_SINHVIEN] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_SINHVIEN]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_NHANVIEN]
GO
ALTER TABLE [dbo].[mail]  WITH CHECK ADD  CONSTRAINT [FK_mail_NHANVIEN] FOREIGN KEY([SendFROM])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[mail] CHECK CONSTRAINT [FK_mail_NHANVIEN]
GO
ALTER TABLE [dbo].[mail]  WITH CHECK ADD  CONSTRAINT [FK_mail_NHANVIEN1] FOREIGN KEY([SendTO])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[mail] CHECK CONSTRAINT [FK_mail_NHANVIEN1]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_Role] FOREIGN KEY([role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_Role]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_LOP]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_INS_PUBLIC_ENCRYPT_NHANVIEN] 
@manv VARCHAR(20), @hoten NVARCHAR(100), @email VARCHAR(20), @luONg VARCHAR(max), @tendn NVARCHAR(100), @matkhau VARCHAR(max),
@pubkey VARCHAR(max), @role int WITH ENCRYPTION
AS
BEGIN
DECLARE @mkbinary VARBINARY(MAX);
SET @mkbinary = CONVERT(varbinary(max), HASHBYTES('SHA1', @matkhau),2);
DECLARE @luONgbinary VARBINARY(MAX);
SET @luONgbinary = cASt(N'' AS xml).value('xs:base64Binary(sql:variable("@luONg"))', 'varbinary(max)')

INSERT INTO NHANVIEN VALUES(@manv, @hoten, @email, @luONgbinary, @tendn, @mkbinary, @pubkey,@role)
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Login] 
 @TENDN NVARCHAR(100), @MATKHAU VARCHAR(255) WITH ENCRYPTION
AS
BEGIN
	DECLARE @matkhaubinary VARBINARY(MAX);
	SET @matkhaubinary = CONVERT(VARBINARY(MAX), HASHBYTES('SHA1', @MATKHAU), 2);
	SELECT * FROM NHANVIEN WHERE TENDN=@tendn and MATKHAU=@matkhaubinary
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_RenewPASswd]  
@tendn NVARCHAR(100), @matkhaumoi VARCHAR(255) WITH ENCRYPTION
AS
BEGIN
	SELECT email FROM NHANVIEN WHERE TENDN=@tendn
	UPDATE NHANVIEN SET MATKHAU=CONVERT(VARBINARY(MAX), HASHBYTES('SHA1', @matkhaumoi), 2) WHERE TENDN=@tendn
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_UPDATE_NHANVIEN] 
@manv VARCHAR(20), @hoten NVARCHAR(100), @email VARCHAR(20), @luONg VARCHAR(max) WITH ENCRYPTION
AS 
BEGIN
UPDATE NHANVIEN SET HOTEN=@hoten,EMAIL=@email, luONg=cASt('' AS xml).value('xs:base64Binary(sql:variable("@luONg"))', 'varbinary(max)') WHERE MANV=@manv
end
GO
CREATE USER [QLSV_Admin] FOR LOGIN [QLSV_Admin]
GO
ALTER ROLE [db_owner] ADD MEMBER [test]
GO
CREATE USER [QLSV_Nv] FOR LOGIN [QLSV_Nv]
GO
CREATE USER [QLSV_Login] FOR LOGIN [QLSV_Login]
GO
DENY SELECT,INSERT,UPDATE,DELETE ON LOP TO QLSV_Login
GO
DENY SELECT,INSERT,UPDATE,DELETE ON LICHSU TO QLSV_Login
GO
DENY SELECT,INSERT,UPDATE,DELETE ON HOCPHAN TO QLSV_Login
GO
DENY SELECT,INSERT,UPDATE,DELETE ON BANGDIEM TO QLSV_Login
GO
DENY SELECT,INSERT,UPDATE,DELETE ON mail TO QLSV_Login
GO
DENY SELECT,INSERT,UPDATE,DELETE ON NHANVIEN TO QLSV_Login
GO
DENY INSERT,UPDATE,DELETE ON role TO QLSV_Login
GO
GRANT SELECT ON role TO QLSV_Login
GO
DENY SELECT,INSERT,UPDATE,DELETE ON SINHVIEN TO QLSV_Login
GO
GRANT EXECUTE ON SP_Login TO QLSV_Login
GO
GRANT EXECUTE ON SP_RenewPASswd TO QLSV_Login
GO
GRANT SELECT,UPDATE,INSERT,DELETE ON SINHVIEN TO QLSV_Nv
GO
GRANT SELECT,UPDATE,INSERT,DELETE ON BANGDIEM TO QLSV_Nv
GO
GRANT SELECT,UPDATE,INSERT,DELETE ON LOP TO QLSV_Nv
GO
GRANT SELECT,INSERT ON mail TO QLSV_Nv
GO
GRANT SELECT,UPDATE,INSERT,DELETE ON HOCPHAN TO QLSV_Nv
GO
DENY SELECT,INSERT,UPDATE,DELETE ON LICHSU TO QLSV_Nv
GO
DENY SELECT,INSERT,UPDATE,DELETE ON NHANVIEN TO QLSV_Nv
GO
DENY SELECT,INSERT,UPDATE,DELETE ON role TO QLSV_Nv