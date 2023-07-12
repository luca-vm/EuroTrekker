object dmEuroTrekker: TdmEuroTrekker
  OldCreateOrder = False
  Height = 519
  Width = 656
  object conEuroTrekker: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=dbEuroTrekker.mdb;M' +
      'ode=ReadWrite;Persist Security Info=False;Jet OLEDB:System datab' +
      'ase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=""' +
      ';Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet O' +
      'LEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transaction' +
      's=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System D' +
      'atabase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't C' +
      'opy Locale on Compact=False;Jet OLEDB:Compact Without Replica Re' +
      'pair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 160
  end
  object qryEuroTrekker: TADOQuery
    Connection = conEuroTrekker
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblAccount')
    Left = 136
    Top = 160
  end
  object dsrEuroTrekker: TDataSource
    DataSet = qryEuroTrekker
    Left = 216
    Top = 160
  end
  object tblAccounts: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblAccounts'
    Left = 448
    Top = 16
  end
  object dsrAccounts: TDataSource
    DataSet = tblAccounts
    Left = 552
    Top = 16
  end
  object tblCountryInfo: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblCountryInfo'
    Left = 448
    Top = 72
  end
  object dsrCountryInfo: TDataSource
    DataSet = tblCountryInfo
    Left = 552
    Top = 72
  end
  object tblTours: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblTours'
    Left = 448
    Top = 240
  end
  object dsrTours: TDataSource
    DataSet = tblTours
    Left = 557
    Top = 240
  end
  object tblAccountTours: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblAccountTours'
    Left = 448
    Top = 296
  end
  object dsrAccountTours: TDataSource
    DataSet = tblAccountTours
    Left = 557
    Top = 296
  end
  object tblFlights: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblFlights'
    Left = 448
    Top = 360
  end
  object dsrFlights: TDataSource
    DataSet = tblFlights
    Left = 560
    Top = 360
  end
  object tblAccountFlights: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblAccountFlights'
    Left = 448
    Top = 424
  end
  object dsrAccountFlights: TDataSource
    DataSet = tblAccountFlights
    Left = 568
    Top = 424
  end
  object qryFlights: TADOQuery
    Connection = conEuroTrekker
    Parameters = <>
    Left = 120
    Top = 264
  end
  object dsrFlightsBookings: TDataSource
    DataSet = qryFlights
    Left = 216
    Top = 264
  end
  object qryAccommodation: TADOQuery
    Connection = conEuroTrekker
    CursorType = ctStatic
    Parameters = <>
    Left = 120
    Top = 336
  end
  object dsrAccommodationBooking: TDataSource
    DataSet = qryAccommodation
    Left = 232
    Top = 336
  end
  object dsrTourBooking: TDataSource
    DataSet = qryTours
    Left = 216
    Top = 408
  end
  object qryTours: TADOQuery
    Connection = conEuroTrekker
    Parameters = <>
    SQL.Strings = (
      'SELECT BookingNo, BookingDate, LEFT(TA.FlightID,7) AS Country'
      'FROM tblAccountTours TA, tblTours TR,'
      'WHERE TA.TourID = TR.TourID'
      'AND Username = "admin"')
    Left = 120
    Top = 408
  end
  object tblAccountAccommodation: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblAccountAccommodation'
    Left = 448
    Top = 192
    object tblAccountAccommodationReservationNumber: TAutoIncField
      FieldName = 'ReservationNumber'
      ReadOnly = True
    end
    object tblAccountAccommodationUsername: TWideStringField
      FieldName = 'Username'
      Size = 255
    end
    object tblAccountAccommodationAccommodationID: TWideStringField
      FieldName = 'AccommodationID'
      Size = 255
    end
    object tblAccountAccommodationBookingDate: TDateTimeField
      FieldName = 'BookingDate'
    end
    object tblAccountAccommodationAccommodationName: TWideStringField
      FieldName = 'AccommodationName'
      Size = 255
    end
  end
  object dsrAccountAccomodation: TDataSource
    DataSet = tblAccountAccommodation
    Left = 560
    Top = 192
  end
  object tblAccommodation: TADOTable
    Active = True
    Connection = conEuroTrekker
    CursorType = ctStatic
    TableName = 'tblAccommodation'
    Left = 448
    Top = 136
  end
  object dsrAccommodation: TDataSource
    DataSet = tblAccommodation
    Left = 560
    Top = 136
  end
end
