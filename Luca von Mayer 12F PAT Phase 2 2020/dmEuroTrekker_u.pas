unit dmEuroTrekker_u; //Coded and designed by Luca von Mayer 12F 2020 Parktown Boys' High School

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmEuroTrekker = class(TDataModule)
    conEuroTrekker: TADOConnection;
    qryEuroTrekker: TADOQuery;
    dsrEuroTrekker: TDataSource;
    tblAccounts: TADOTable;
    dsrAccounts: TDataSource;
    tblCountryInfo: TADOTable;
    dsrCountryInfo: TDataSource;
    tblTours: TADOTable;
    dsrTours: TDataSource;
    tblAccountTours: TADOTable;
    dsrAccountTours: TDataSource;
    tblFlights: TADOTable;
    dsrFlights: TDataSource;
    tblAccountFlights: TADOTable;
    dsrAccountFlights: TDataSource;
    qryFlights: TADOQuery;
    dsrFlightsBookings: TDataSource;
    qryAccommodation: TADOQuery;
    dsrAccommodationBooking: TDataSource;
    dsrTourBooking: TDataSource;
    qryTours: TADOQuery;
    tblAccountAccommodation: TADOTable;
    dsrAccountAccomodation: TDataSource;
    tblAccountAccommodationReservationNumber: TAutoIncField;
    tblAccountAccommodationUsername: TWideStringField;
    tblAccountAccommodationAccommodationID: TWideStringField;
    tblAccountAccommodationBookingDate: TDateTimeField;
    tblAccountAccommodationAccommodationName: TWideStringField;
    tblAccommodation: TADOTable;
    dsrAccommodation: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEuroTrekker: TdmEuroTrekker;

implementation

{$R *.dfm}

end.
