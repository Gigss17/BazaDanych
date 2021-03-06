USE [projekt]
GO
SET IDENTITY_INSERT [dbo].[TypKarty] ON 

INSERT [dbo].[TypKarty] ([IDTypKarty], [Nazwa]) VALUES (3, N'karta zbliżeniowa')
SET IDENTITY_INSERT [dbo].[TypKarty] OFF
SET IDENTITY_INSERT [dbo].[RodzajKonta] ON 

INSERT [dbo].[RodzajKonta] ([IDRodzajKonta], [Nazwa]) VALUES (3, N'konto osobiste')
SET IDENTITY_INSERT [dbo].[RodzajKonta] OFF
SET IDENTITY_INSERT [dbo].[Adres] ON 

INSERT [dbo].[Adres] ([IDAdres], [Obywatelstwo], [Województwo], [Miasto], [Ulica], [NumerDomu], [KodPocztowy], [Poczta]) VALUES (4, N'Polska', N'Śląskie', N'Bielsko-Biała', N'Krakowska', N'9', N'43-300', N'Bielsko-Biała')
SET IDENTITY_INSERT [dbo].[Adres] OFF
SET IDENTITY_INSERT [dbo].[RodzajKlienta] ON 

INSERT [dbo].[RodzajKlienta] ([IDRodzajKlienta], [Nazwa]) VALUES (2, N'KI')
SET IDENTITY_INSERT [dbo].[RodzajKlienta] OFF
SET IDENTITY_INSERT [dbo].[Klient] ON 

INSERT [dbo].[Klient] ([IDKlienta], [Imie], [Nazwisko], [NazwaFirmy], [NIP], [PESEL], [PKD], [NumerTelefonu], [Email], [IDRodzajKlienta], [IDAdres]) VALUES (5, N'Jan', N'Kowalski', NULL, NULL, N'24059511556', NULL, N'555666777', N'elo@interia.pl', 2, 4)
SET IDENTITY_INSERT [dbo].[Klient] OFF
SET IDENTITY_INSERT [dbo].[Konto] ON 

INSERT [dbo].[Konto] ([IDKonta], [Identyfikator], [Hasło], [NumerKonta], [StanKonta], [IDKlienta], [IDRodzajKonta]) VALUES (2, N'78676110', N'elomelo', N'2116022020000000337985822', 3000.0000, 5, 3)
SET IDENTITY_INSERT [dbo].[Konto] OFF
SET IDENTITY_INSERT [dbo].[Karta] ON 

INSERT [dbo].[Karta] ([IDKarta], [IDKonta], [IDTypKarty], [NumerKarty]) VALUES (2, 2, 3, N'4539123456789012')
SET IDENTITY_INSERT [dbo].[Karta] OFF
SET IDENTITY_INSERT [dbo].[Transakcja] ON 

INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (3, CAST(N'2010-12-24T00:00:00.000' AS DateTime), 2000.0000, N'Odaje pieniążki za majówke', N'Od Michała', N'przelew standardowy                          ', N'15225031151111212243561234', N'15225031151123452243561234', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (6, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 2000.0000, N'BLabla', N'Test', N'przelew standardowy                          ', N'15215216261262161', N'2616162162161', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (7, CAST(N'2020-05-18T21:25:27.170' AS DateTime), 1000.0000, N'Test', N'Test', N'przelew standardowy                          ', N'15252151', N'512521515', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (8, CAST(N'2020-05-18T21:26:27.603' AS DateTime), 1500.0000, N'Test', N'Test', N'przelew standardowy                          ', N'1251621621612', N'126161261', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (9, CAST(N'2020-05-23T14:28:24.817' AS DateTime), 50.0000, N'Test', N'Test', N'przelew standardowy                          ', N'12521512251', N'51252151521', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (10, CAST(N'2020-05-23T14:30:39.763' AS DateTime), 100.0000, N'Test', N'Test', N'przelew standardowy                          ', N'12521512', N'52151251251', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (11, CAST(N'2020-05-23T14:31:47.950' AS DateTime), 100.0000, N'test', N'test', N'przelew standardowy                          ', N'52152151', N'52151251', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (12, CAST(N'2020-05-23T14:35:14.820' AS DateTime), 100.0000, N'test', N'test', N'przelew standardowy                          ', N'521512521', N'5215125', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (13, CAST(N'2020-05-23T14:39:35.220' AS DateTime), 100.0000, N'test', N'test', N'przelew standardowy                          ', N'525151251', N'521512521', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (14, CAST(N'2020-05-23T14:43:44.977' AS DateTime), 200.0000, N'test', N'test', N'przelew standardowy                          ', N'51251512', N'2142151', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (15, CAST(N'2020-05-23T14:47:57.180' AS DateTime), 100.0000, N'test', N'test', N'przelew standardowy                          ', N'125151251', N'51251512', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (16, CAST(N'2020-05-23T15:05:23.150' AS DateTime), 100.0000, N'test', N'test', N'przelew standardowy                          ', N'51252151251', N'512512512', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (17, CAST(N'2020-05-23T15:07:47.137' AS DateTime), 200.0000, N'test', N'test', N'przelew standardowy                          ', N'521521521', N'521512', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (18, CAST(N'2020-05-23T15:09:40.787' AS DateTime), 500.0000, N'test', N'test', N'przelew standardowy                          ', N'512521', N'512512', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (19, CAST(N'2020-05-23T15:10:20.450' AS DateTime), 200.0000, N'test', N'test', N'przelew standardowy                          ', N'12412421', N'421412421', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (20, CAST(N'2020-05-23T15:11:43.860' AS DateTime), 200.0000, N'test', N'test', N'przelew standardowy                          ', N'12415151', N'52151251', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (21, CAST(N'2020-05-23T15:12:34.640' AS DateTime), 200.0000, N'test', N'test', N'przelew standardowy                          ', N'1213232131', N'312321312412', 2)
INSERT [dbo].[Transakcja] ([IDTransakcja], [DataTransakcji], [Kwota], [OpisPrzelewu], [TytułTransakcji], [RodzajOperacji], [RachunekNadawcy], [RachunekOdbiorcy], [IDKonta]) VALUES (22, CAST(N'2020-05-23T15:16:34.960' AS DateTime), 200.0000, N'test', N'test', N'wpłata na konto                              ', N'3122145124', N'41242141', 2)
SET IDENTITY_INSERT [dbo].[Transakcja] OFF
