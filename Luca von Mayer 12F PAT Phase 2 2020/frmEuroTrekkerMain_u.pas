unit frmEuroTrekkerMain_u; //Coded and designed by Luca von Mayer 12F 2020 Parktown Boys' High School

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage, Grids, DBGrids, DB, Math,ComCtrls,
  Spin, Buttons, dmEuroTrekker_u, frmEuroTrekkerStart_u, clsBusinessAccess_u;

type
  TfrmEuroTrekkerMain = class(TForm)
    imgBackground: TImage;
    edtSearch: TEdit;
    pnlSearch: TPanel;
    imgHeader: TImage;
    lblSubHead: TLabel;
    lblSubHead2: TLabel;
    pnlBookings: TPanel;
    pnlAccomodation: TPanel;
    pnlTransport: TPanel;
    pnlTours: TPanel;
    pnlInfo: TPanel;
    imgIcon1: TImage;
    imgIcon2: TImage;
    imgIcon3: TImage;
    imgIcon4: TImage;
    imgIcon5: TImage;
    lblName1: TLabel;
    lblName2: TLabel;
    lblName3: TLabel;
    lblName4: TLabel;
    lblName5: TLabel;
    lblDes1: TLabel;
    lblDes2: TLabel;
    lblDes3: TLabel;
    lblDes4: TLabel;
    lblDes5: TLabel;
    lblQuote: TLabel;
    imgPBHS: TImage;
    lblLVM: TLabel;
    dbgEuroTrekker: TDBGrid;
    pnlFilterAccommodation: TPanel;
    lblRating: TLabel;
    lblFilterAccommodationHeading: TLabel;
    rgpType: TRadioGroup;
    lblPriceRange: TLabel;
    sedLower: TSpinEdit;
    sedUpper: TSpinEdit;
    lblDash: TLabel;
    rgpSort: TRadioGroup;
    lblSort: TLabel;
    rgpOrder: TRadioGroup;
    edtAccommodationName: TEdit;
    chkSearchByAccom: TCheckBox;
    lblSearchByName: TLabel;
    pnlResultsAccom: TPanel;
    lblRecordCount: TLabel;
    pnlFilterFlights: TPanel;
    lblClass: TLabel;
    lblFilterFlights: TLabel;
    lblPriceFlights: TLabel;
    lblDash2: TLabel;
    lblSort2: TLabel;
    lblSearchByAirline: TLabel;
    lblResultsFlights: TLabel;
    rgpClass: TRadioGroup;
    sedLower2: TSpinEdit;
    sedUpper2: TSpinEdit;
    rgpSort2: TRadioGroup;
    rgpOrder2: TRadioGroup;
    edtSearchByAirline: TEdit;
    chkSearchByAirline: TCheckBox;
    pnlResultsFlights: TPanel;
    pnlApplyFlights: TPanel;
    pnlAppyAccommodation: TPanel;
    lblSearchByCountryActiveAccom: TLabel;
    lblSearchByCountryActiveFlights: TLabel;
    pnlFilterTours: TPanel;
    lblFilterTours: TLabel;
    lblPriceRangeTours: TLabel;
    lblDash3: TLabel;
    lblSort3: TLabel;
    lblSearchByTour: TLabel;
    lblResultsTours: TLabel;
    lblSearchByCountryActiveTour: TLabel;
    sedLower3: TSpinEdit;
    sedUpper3: TSpinEdit;
    rgpSort3: TRadioGroup;
    rgpOrder3: TRadioGroup;
    edtSearchByTour: TEdit;
    chkSearchByTour: TCheckBox;
    pnlResultsTours: TPanel;
    pnlApplyTours: TPanel;
    bmbClose: TBitBtn;
    pnlMakeBooking: TPanel;
    lblRealName: TLabel;
    pnlCloseBooking: TPanel;
    pnlUsername: TPanel;
    lblUsername: TLabel;
    pnlBookingDisplay: TPanel;
    redDisplayBooking: TRichEdit;
    imgBookingBG: TImage;
    pnlDate: TPanel;
    dtpMakeBooking: TDateTimePicker;
    pnlProcceedToCheckout: TPanel;
    pnlBack: TPanel;
    lbtCardHolder: TLabeledEdit;
    lbtCardNumber: TLabeledEdit;
    lbtExpiry: TLabeledEdit;
    lbtCVV: TLabeledEdit;
    chkSaveCard: TCheckBox;
    lblSaveCard: TLabel;
    lblCardNum: TLabel;
    dbgMyAccommodation: TDBGrid;
    dbgMyFlights: TDBGrid;
    dbgMyTours: TDBGrid;
    lblMyAccommodation: TLabel;
    lblMyFlights: TLabel;
    lblMyTours: TLabel;
    pnlMyOptions: TPanel;
    pnlCancel: TPanel;
    pnlTicket: TPanel;
    redOptions: TRichEdit;
    lblOptions: TLabel;
    pnlBackBooking: TPanel;
    pnlAddBusiness: TPanel;
    pnlBusinessApplicationAccom: TPanel;
    lblAccomAppHeading: TLabel;
    lbtAccomName: TLabeledEdit;
    lbtAccomType: TLabeledEdit;
    lbtAccomCountry: TLabeledEdit;
    sedAccomPrice: TSpinEdit;
    lblAccomPrice: TLabel;
    pnlAccomApply: TPanel;
    pnlHome: TPanel;
    lblHome: TLabel;
    imgHome: TImage;
    redInfo: TRichEdit;
    pnlBusinessApplicationTours: TPanel;
    lblToursHeader: TLabel;
    lblTourPrice: TLabel;
    lbtTourName: TLabeledEdit;
    lbtTourCountry: TLabeledEdit;
    sedTourPrice: TSpinEdit;
    pnlTourApply: TPanel;
    pnlBusinessApplicationFlights: TPanel;
    lblFlightsHeader: TLabel;
    lblFirstPrice: TLabel;
    lbtAirlineName: TLabeledEdit;
    lbtFlightCountry: TLabeledEdit;
    sedFirstPrice: TSpinEdit;
    sedBusinessPrice: TSpinEdit;
    sedEconomyPrice: TSpinEdit;
    lblBusinessPrice: TLabel;
    lblEconomyPrice: TLabel;
    pnlFlightsApply: TPanel;
    pnlApplyFlightsClose: TPanel;
    pnlApplyAccomClose: TPanel;
    pnlApplyToursClose: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure pnlBookingsClick(Sender: TObject);
    procedure imgIcon1Click(Sender: TObject);
    procedure lblName1Click(Sender: TObject);
    procedure lblDes1Click(Sender: TObject);
    procedure pnlAccomodationClick(Sender: TObject);
    procedure imgIcon2Click(Sender: TObject);
    procedure lblName2Click(Sender: TObject);
    procedure lblDes2Click(Sender: TObject);
    procedure pnlTransportClick(Sender: TObject);
    procedure imgIcon3Click(Sender: TObject);
    procedure lblName3Click(Sender: TObject);
    procedure lblDes3Click(Sender: TObject);
    procedure imgIcon4Click(Sender: TObject);
    procedure lblName4Click(Sender: TObject);
    procedure lblDes4Click(Sender: TObject);
    procedure pnlToursClick(Sender: TObject);
    procedure imgIcon5Click(Sender: TObject);
    procedure lblName5Click(Sender: TObject);
    procedure lblDes5Click(Sender: TObject);
    procedure pnlInfoClick(Sender: TObject);
    procedure pnlSearchClick(Sender: TObject);
    procedure pnlApplyFlightsClick(Sender: TObject);
    procedure pnlAppyAccommodationClick(Sender: TObject);
    procedure rgpClassClick(Sender: TObject);
    procedure bmbCloseClick(Sender: TObject);
    procedure pnlApplyToursClick(Sender: TObject);
    procedure dbgEuroTrekkerCellClick(Column: TColumn);
    procedure pnlCloseBookingClick(Sender: TObject);
    procedure pnlDateClick(Sender: TObject);
    procedure dtpMakeBookingChange(Sender: TObject);
    procedure pnlProcceedToCheckoutClick(Sender: TObject);
    procedure pnlBackClick(Sender: TObject);
    procedure dbgMyAccommodationCellClick(Column: TColumn);
    procedure pnlBackBookingClick(Sender: TObject);
    procedure dbgMyToursCellClick(Column: TColumn);
    procedure dbgMyFlightsCellClick(Column: TColumn);
    procedure pnlCancelClick(Sender: TObject);
    procedure pnlTicketClick(Sender: TObject);
    procedure pnlAddBusinessClick(Sender: TObject);
    procedure pnlAccomApplyClick(Sender: TObject);
    procedure pnlHomeClick(Sender: TObject);
    procedure lblHomeClick(Sender: TObject);
    procedure imgHomeClick(Sender: TObject);
    procedure pnlTourApplyClick(Sender: TObject);
    procedure pnlFlightsApplyClick(Sender: TObject);
    procedure pnlApplyFlightsCloseClick(Sender: TObject);
    procedure pnlApplyAccomCloseClick(Sender: TObject);
    procedure pnlApplyToursCloseClick(Sender: TObject);

  private

  //Class Object
  objBusinessAccess : TBusinessAccess;

  //Arrays
  arrTicketSource : array[1..20] of string;
  arrTourTicket : array[1..12] of string;
  arrAccomTicket : array[1..12] of string;
  arrFlightTicket : array[1..15] of string;

   //Variables
  sCountryID, sDate : string;
  sType, sClass, sSort1, sSort2, sSort3, sOrder1, sOrder2, sOrder3, sSearchByName : string;
  rUpperbound1, rLowerbound1, rUpperbound2, rLowerbound2, rLowerbound3, rUpperbound3 : Integer;
  bSearchByCountry : Boolean;
  bAccomodationActive, bFlightsActive, bToursActive, bInfoActive, bBookingsAcive, bPriceAdded : Boolean;
  sBookingField, sCardNum : string;
  bFinal, bHasCard : Boolean;
  iRand : Integer;
  iCount : Integer;

  //My Booking
  iResNum : Integer;
  sBookingDate, sBookingTime, sName, sBookingClass, sCapital ,sMyAccomField, sMyTourField, sMyFlightField, sResNo : string;
  rPrice : Real;
  bMyAccom, bMyFlights, bMyTours : Boolean;

  //Accom Booking
  sAccomBookName, sAccomPrice, sAccomType,  sAccomBookCountry, sAccomID : string;

  //Tour Booking
  sTourBookName, sTourPrice,  sTourBookCountry, sTourID : string;

  //Flights Booking
  sFlightBookName, sFlightPrice, sFlghtType,  sFlightBookCountry, sFlightID, sSeat, sTime : string;

  //Procedures
    procedure MakeRounded(Control: TWinControl);
    procedure DefaultScreen;
    procedure Home;

    procedure TransitionBookings;
    procedure TransitionAccom;
    procedure TransitionFlights;
    procedure TransitionTours;
    procedure TransitionInfo;

    procedure DisplayAllAccommodation(sSort1, sOrder1 : string);
    procedure DisplayAllFlights(sSort2, sOrder2 : string);
    procedure DisplayAllTours(sSort3, sOrder3 : string);

    procedure FindCountryID(sEntry : string);

    procedure OpenBookingPanel;

    procedure AccomAddToRichEdit;
    procedure ToursAddToRichEdit;
    procedure FlightsAddToRichEdit;

    procedure DisplayInfo;

    procedure CardEntryVal;

    procedure MyBookingsDefault;

    procedure LoadSource;
    procedure CreateAccomTicket;
    procedure CreateFlightTicket;
    procedure CreateTourTicket;

  public
    { Public declarations }
  end;

var
  frmEuroTrekkerMain: TfrmEuroTrekkerMain;

implementation

{$R *.dfm}

{ TfrmEuroTrekkerMain }


{ TfrmEuroTrekkerMain }



procedure TfrmEuroTrekkerMain.ToursAddToRichEdit;
//Adds the chosen field to a formated RichEdit
begin
  if dtpMakeBooking.DateTime >= Date  then
   sDate := DateToStr(dtpMakeBooking.DateTime)
  else
  begin
   MessageDlg('Select and upcoming date', mtInformation, [mbOK], 0);
   Exit;
  end;

  redDisplayBooking.Clear;

  redDisplayBooking.SelAttributes.Size := 12;
  redDisplayBooking.SelAttributes.Color := $005858F8;

  redDisplayBooking.Paragraph.TabCount := 3;
  redDisplayBooking.Paragraph.Tab[0] := 100;
  redDisplayBooking.Paragraph.Tab[1] := 200;
  redDisplayBooking.Paragraph.Tab[2] := 300;

  redDisplayBooking.Lines.Add('Name' + #9 + 'Country' + #9 + 'Price' + #9 + 'Date' );
  redDisplayBooking.Lines.Add('');

  redDisplayBooking.SelAttributes.Size := 10;
  redDisplayBooking.SelAttributes.Color := clBlack;

  redDisplayBooking.Lines.Add(sTourBookName + #9 + sTourBookCountry +
                               #9 +  FloatToStrF(StrToInt(sTourPrice),ffCurrency,6,2) +
                               #9 + sDate);
end;

procedure TfrmEuroTrekkerMain.AccomAddToRichEdit;
//Adds the chosen field to a formated RichEdit
begin
  if dtpMakeBooking.DateTime >= Date  then
   sDate := DateToStr(dtpMakeBooking.DateTime)
  else
  begin
   MessageDlg('Select and upcoming date', mtInformation, [mbOK], 0);
   Exit;
  end;

  redDisplayBooking.Clear;

  redDisplayBooking.SelAttributes.Size := 12;
  redDisplayBooking.SelAttributes.Color := $005858F8;

  redDisplayBooking.Paragraph.TabCount := 4;
  redDisplayBooking.Paragraph.Tab[0] := 75;
  redDisplayBooking.Paragraph.Tab[1] := 150;
  redDisplayBooking.Paragraph.Tab[2] := 225;
  redDisplayBooking.Paragraph.Tab[3] := 300;

  redDisplayBooking.Lines.Add('Name' + #9 + 'Type' + #9 + 'Country' + #9 + 'Price' + #9 + 'Date' );
  redDisplayBooking.Lines.Add('');

  redDisplayBooking.SelAttributes.Size := 10;
  redDisplayBooking.SelAttributes.Color := clBlack;

  redDisplayBooking.Lines.Add(sAccomBookName + #9 + sAccomType + #9 + sAccomBookCountry +
                               #9 +  FloatToStrF(StrToInt(sAccomPrice),ffCurrency,6,2) +
                               #9 + sDate);
end;

procedure TfrmEuroTrekkerMain.bmbCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TfrmEuroTrekkerMain.CardEntryVal;
//Validation and storage of the BankCard and allowing bypass of step in future
 var
  sCardHolderName, sCardNumber, sExpiry, sCVV, sDate : string;
  K, L, M : Integer;
begin

    sCardHolderName := lbtCardHolder.Text;
    sCardNumber := lbtCardNumber.Text;
    sExpiry  := lbtExpiry.Text;
    sCVV  := lbtCVV.Text;

    //Validation of Name
    if sCardHolderName = '' then
        begin
         MessageDlg('All fields are compulsory, please enter name.',mtError,[mbOK],0);
         lbtCardHolder.Clear;
         lbtCardHolder.SetFocus;
         Abort;
        end;

   for K := 1 to Length(sCardHolderName) do
     begin
       if not((sCardHolderName[K] in['A'..'Z']) or (sCardHolderName[K] in['a'..'z']) or (sCardHolderName[K] = ' '))  then
       begin
        MessageDlg('The name you entered contains numbered digits or symbols, please re-enter.',mtError,[mbOK],0);
        lbtCardHolder.Clear;
        lbtCardHolder.SetFocus;
        Abort;
       end;

       if (sCardHolderName[K] = ' ') and (sCardHolderName[K+1] = ' ') then
       begin
        MessageDlg('The name you entered contains a double space, please re-enter.',mtError,[mbOK],0);
        lbtCardHolder.Clear;
        lbtCardHolder.SetFocus;
        Abort;
       end;
     end;

   //Validation of Card number
   if sCardNumber = '' then
        begin
         MessageDlg('All fields are compulsory, please enter your card number.',mtError,[mbOK],0);
         lbtCardNumber.Clear;
         lbtCardNumber.SetFocus;
         Abort;
        end;
   if Length(sCardNumber) <> 16 then
    begin
     MessageDlg('Card numbers are 16 digits, please re-enter',mtError,[mbOK],0);
     lbtCardNumber.Clear;
     lbtCardNumber.SetFocus;
     Abort;
    end;

    for L := 1 to Length(sCardNumber) do
     begin
       if not (sCardNumber[L] in['0'..'9'])  then
          begin
            MessageDlg('What you entered contains letters or symbols, please re-enter.',mtError,[mbOK],0);
            lbtCardNumber.Clear;
            lbtCardNumber.SetFocus;
            Abort;
          end;
     end;

    //Validation of Expiry
   if sExpiry = '' then
        begin
         MessageDlg('All fields are compulsory, please enter your exipiry date.',mtError,[mbOK],0);
         lbtExpiry.Clear;
         lbtExpiry.SetFocus;
         Abort;
        end;
   if (Length(sExpiry) <> 5) or (sExpiry[3] <> '/') then
    begin
     MessageDlg('Incorrect format, please re-enter',mtError,[mbOK],0);
     lbtCardNumber.Clear;
     lbtCardNumber.SetFocus;
     Abort;
    end;

    if (Length(sExpiry) <> 5) or (sExpiry[3] <> '/') then
    begin
     MessageDlg('Incorrect format, please re-enter',mtError,[mbOK],0);
     lbtCardNumber.Clear;
     lbtCardNumber.SetFocus;
     Abort;
    end;

  //Validation of Expiry
   if sExpiry = '' then
        begin
         MessageDlg('All fields are compulsory, please enter your exipiry date.',mtError,[mbOK],0);
         lbtExpiry.Clear;
         lbtExpiry.SetFocus;
         Abort;
        end;
   if (Length(sExpiry) <> 5) or (sExpiry[3] <> '/') or (not(StrToInt(Copy(sExpiry,1,2)) < 13)) then
    begin
     MessageDlg('Incorrect format, please re-enter',mtError,[mbOK],0);
     lbtExpiry.Clear;
     lbtExpiry.SetFocus;
     Abort;
    end;

   sDate := '20' + Copy(sExpiry,4,2) + '/' + Copy(sExpiry,1,2) + '/01';
   if Date > StrToDate(sDate) then
    begin
     MessageDlg('Expired card',mtError,[mbOK],0);
     lbtExpiry.Clear;
     lbtExpiry.SetFocus;
     Abort;
    end;




   //Validation of CVV
   if sCVV = '' then
        begin
         MessageDlg('All fields are compulsory, please enter your CVV.',mtError,[mbOK],0);
         lbtCVV.Clear;
         lbtCVV.SetFocus;
         Abort;
        end;

   for  M := 1 to Length(sCVV) do
     begin
       if (Length(sCVV) <> 3) or (not (sCVV[M] in['0'..'9'])) then
        begin
          MessageDlg('Incorrect format, please re-enter',mtError,[mbOK],0);
          lbtCVV.Clear;
          lbtCVV.SetFocus;
          Abort;
        end;
     end;
end;

procedure TfrmEuroTrekkerMain.CreateAccomTicket;
//Creates a textfile with the booking info
  var
  tAccomTicket : TextFile;
  K : Integer;
begin
  AssignFile(tAccomTicket, 'Booking at the ' + sName +  '.txt');

  Rewrite(tAccomTicket);

  for K := 1 to 12 do
    begin
      Writeln(tAccomTicket,arrAccomTicket[K]);
    end;

  MessageDlg('Ticket created sucessfully!', mtInformation, [mbOK],0);

  CloseFile(tAccomTicket);
end;

procedure TfrmEuroTrekkerMain.CreateFlightTicket;
//Creates a textfile with the booking info
 var
  tFlightTicket : TextFile;
  K : Integer;
begin
  AssignFile(tFlightTicket, 'Flight to ' + sCapital +  '.txt');

  Rewrite(tFlightTicket);

  for K := 1 to 15 do
    begin
      Writeln(tFlightTicket,arrFlightTicket[K]);
    end;

  MessageDlg('Ticket created sucessfully!', mtInformation, [mbOK],0);

  CloseFile(tFlightTicket);
end;

procedure TfrmEuroTrekkerMain.CreateTourTicket;
//Creates a textfile with the booking info
var
  tTourTicket : TextFile;
  K : Integer;
begin
  AssignFile(tTourTicket, 'Tour in ' + sCapital +  '.txt');

  Rewrite(tTourTicket);

  for K := 1 to 12 do
    begin
      Writeln(tTourTicket,arrTourTicket[K]);
    end;

  MessageDlg('Ticket created sucessfully!', mtInformation, [mbOK],0);

  CloseFile(tTourTicket);
end;

procedure TfrmEuroTrekkerMain.dbgEuroTrekkerCellClick(Column: TColumn);
//Opens up a booking panel with field info
begin
  sBookingField := dbgEuroTrekker.SelectedField.AsString;

  if bAccomodationActive then
 begin
  with dmEuroTrekker do
    begin
      if tblAccommodation.Locate('AccommodationName',sBookingField,[]) then
      begin
          sAccomBookName := tblAccommodation['AccommodationName'];
          sAccomPrice := FloatToStr(tblAccommodation['Price']);
          sAccomType := tblAccommodation['Type'];
          sAccomID := tblAccommodation['AccommodationID'];

          if tblCountryInfo.Locate('CountryID',tblAccommodation['CountryID'],[]) then
          sAccomBookCountry := tblCountryInfo['CountryName'];
      end
      else
      begin
       MessageDlg('Please select the name to' + #13 + ' make a booking.', mtInformation,[mbOK],0);
       Abort;
      end;
    end;
 end
 else if bToursActive then
 begin
  with dmEuroTrekker do
    begin
      if tblTours.Locate('TourName',sBookingField,[]) then
      begin
          sTourBookName := tblTours['TourName'];
          sTourPrice := FloatToStr(tblTours['Price']);
          sTourID := tblTours['TourID'];

          if tblCountryInfo.Locate('CountryID',tblTours['CountryID'],[]) then
          sTourBookCountry := tblCountryInfo['CountryName'];
      end
      else
      begin
       MessageDlg('Please select the name to' + #13 + ' make a booking.', mtInformation,[mbOK],0);
       Abort;
      end;
    end;
 end
 else if bFlightsActive then
 begin
  with dmEuroTrekker do
  begin
   if rgpClass.ItemIndex <> 0 then
   begin

      if tblFlights.Locate('AirlineName',sBookingField,[]) then
      begin
          sFlightBookName := tblFlights['AirlineName'];

          case rgpClass.ItemIndex of
            1 : begin
                 sFlightPrice := FloatToStr(tblFlights['FirstClassPrice']);
                 sFlghtType := 'First Class';
                end;
            2 : begin
                 sFlightPrice := FloatToStr(tblFlights['BusinessClassPrice']);
                 sFlghtType := 'Business';
                end;
            3 : begin
                 sFlightPrice := FloatToStr(tblFlights['EconomyPrice']);
                 sFlghtType := 'Economy';
                end;
          end;

          sFlightID := tblFlights['FlightID'];

          sSeat := IntToStr(RandomRange(1,25)) + Char(RandomRange(65,72));
          while tblAccountFlights.Locate('SeatNo',sSeat,[]) do
          begin
            sSeat := IntToStr(RandomRange(1,25)) + Char(RandomRange(65,72));
          end;

          iRand :=  RandomRange(4,22);

          if iRand < 10 then
           sTime := '0' + IntToStr(iRand) + ':00'
          else
           sTime := IntToStr(iRand) + ':00';


          if tblCountryInfo.Locate('CountryID',tblFlights['CountryID'],[]) then
          sFlightBookCountry := tblCountryInfo['CountryName'];
      end
      else
      begin
       MessageDlg('Please select the name to' + #13 + ' make a booking.', mtInformation,[mbOK],0);
       Abort;
      end;
   end
   else
   begin
     MessageDlg('Please simplify results before booking.', mtInformation,[mbOK],0);
     Abort;
   end;
  end;
 end;

  OpenBookingPanel;
end;

procedure TfrmEuroTrekkerMain.dbgMyAccommodationCellClick(Column: TColumn);
//Opens the options panel and displays chosen field
begin
  bMyAccom := True;

  sMyAccomField := dbgMyAccommodation.SelectedField.AsString;

  with dmEuroTrekker do
    begin
       tblAccountAccommodation.Open;
       tblAccommodation.Open;
       tblCountryInfo.Open;

      if tblAccountAccommodation.Locate('AccommodationName',sMyAccomField,[]) then
      begin
          iResNum :=  tblAccountAccommodation['ReservationNumber'];
          sBookingDate := DateToStr(tblAccountAccommodation['BookingDate']);
          sName := tblAccountAccommodation['AccommodationName'];


          if tblAccommodation.Locate('AccommodationName',sMyAccomField,[]) then
          begin
             rPrice := tblAccommodation['Price'];

             if tblCountryInfo.Locate('CountryID',Copy(tblAccommodation['AccommodationID'],1,7),[]) then
              sCapital := tblCountryInfo['CapitalCity'];
          end;
      end
      else
      begin
       MessageDlg('Please select the name.', mtInformation,[mbOK],0);
       Abort;
      end;
    end;

 with redOptions do
 begin
  Clear;

  SelAttributes.Size := 12;
  SelAttributes.Color := $005858F8;

  Paragraph.TabCount := 4;
  Paragraph.Tab[0] := 75;
  Paragraph.Tab[1] := 150;
  Paragraph.Tab[2] := 225;
  Paragraph.Tab[3] := 300;

  Lines.Add('Name' + #9 + 'Reservation' + #9 + 'City' + #9 + 'Price' + #9 + 'Date' );
  Lines.Add('');

  SelAttributes.Size := 10;
  SelAttributes.Color := clBlack;

  Lines.Add(sName + #9 + IntToStr(iResNum) + #9 + sCapital +
            #9 +  FloatToStrF(rPrice,ffCurrency,6,2) +
            #9 + sBookingDate);
 end;

 with pnlMyOptions do
  begin
    Visible := True;
    Height := 185;
    Left := 400;
    Top := 256;
    Width := 530;
  end;
  MakeRounded(pnlMyOptions);

  pnlBackBooking.Font.Color :=  $005858F8;
  pnlCancel.Font.Color := $005858F8;
  pnlTicket.Font.Color := $005858F8;
  dbgMyTours.Visible := False;
  dbgMyFlights.Visible := False;
  dbgMyAccommodation.Visible := False;
  lblMyTours.Visible := False;
  lblMyFlights.Visible := False;
  lblMyAccommodation.Visible := False;

end;

procedure TfrmEuroTrekkerMain.dbgMyFlightsCellClick(Column: TColumn);
//Opens the options panel and displays chosen field
begin
  bMyFlights := True;

  sMyFlightField := dbgMyFlights.SelectedField.AsString;

  with dmEuroTrekker do
    begin
       tblAccountFlights.Open;
       tblCountryInfo.Open;

      if tblAccountFlights.Locate('Airline',sMyFlightField,[]) then
      begin
          sResNo :=  tblAccountFlights['SeatNo'];
          sBookingDate := DateToStr(tblAccountFlights['FlightDate']);
          sName := tblAccountFlights['Airline'];
          sBookingClass := tblAccountFlights['Class'];
          sBookingTime := tblAccountFlights['Time'];

          if tblFlights.Locate('AirlineName',sMyFlightField,[]) then
          begin

            if sBookingClass = 'First Class' then
             rPrice := tblFlights['FirstClassPrice']
            else if sBookingClass = 'Business' then
             rPrice := tblFlights['BusinessClassPrice']
            else if sBookingClass = 'Economy' then
             rPrice := tblFlights['EconomyPrice'];



             if tblCountryInfo.Locate('CountryID',Copy(tblTours['TourID'],1,7),[]) then
              sCapital := tblCountryInfo['CapitalCity'];
          end;
      end
      else
      begin
       MessageDlg('Please select the name.', mtInformation,[mbOK],0);
       Abort;
      end;
    end;

 with redOptions do
 begin
  Clear;

  SelAttributes.Size := 12;
  SelAttributes.Color := $005858F8;

  Paragraph.TabCount := 4;
  Paragraph.Tab[0] := 75;
  Paragraph.Tab[1] := 150;
  Paragraph.Tab[2] := 225;
  Paragraph.Tab[3] := 300;

  Lines.Add('Name' + #9 + 'Seat' + #9 + 'City' + #9 + 'Price' + #9 + 'Date' );
  Lines.Add('');

  SelAttributes.Size := 10;
  SelAttributes.Color := clBlack;

  Lines.Add(sName + #9 + sResNo + #9 + sCapital +
            #9 +  FloatToStrF(rPrice,ffCurrency,6,2) +
            #9 + sBookingDate);
 end;

 with pnlMyOptions do
  begin
    Visible := True;
    Height := 185;
    Left := 400;
    Top := 256;
    Width := 530;
  end;
  MakeRounded(pnlMyOptions);

  pnlBackBooking.Font.Color :=  $005858F8;
  pnlCancel.Font.Color := $005858F8;
  pnlTicket.Font.Color := $005858F8;
  dbgMyTours.Visible := False;
  dbgMyFlights.Visible := False;
  dbgMyAccommodation.Visible := False;
  lblMyTours.Visible := False;
  lblMyFlights.Visible := False;
  lblMyAccommodation.Visible := False;
end;

procedure TfrmEuroTrekkerMain.dbgMyToursCellClick(Column: TColumn);
//Opens the options panel and displays chosen field
begin
  bMyTours := True;

  sMyTourField := dbgMyTours.SelectedField.AsString;

  with dmEuroTrekker do
    begin
       tblAccountTours.Open;
       tblTours.Open;
       tblCountryInfo.Open;

      if tblAccountTours.Locate('TourName',sMyTourField,[]) then
      begin
          iResNum :=  tblAccountTours['BookingNo'];
          sBookingDate := DateToStr(tblAccountTours['BookingDate']);
          sName := tblAccountTours['TourName'];

          if tblTours.Locate('TourName',sMyTourField,[]) then
          begin
             rPrice := tblTours['Price'];

             if tblCountryInfo.Locate('CountryID',Copy(tblTours['TourID'],1,7),[]) then
              sCapital := tblCountryInfo['CapitalCity'];
          end;
      end
      else
      begin
       MessageDlg('Please select the name.', mtInformation,[mbOK],0);
       Abort;
      end;
    end;

 with redOptions do
 begin
  Clear;

  SelAttributes.Size := 12;
  SelAttributes.Color := $005858F8;

  Paragraph.TabCount := 4;
  Paragraph.Tab[0] := 75;
  Paragraph.Tab[1] := 150;
  Paragraph.Tab[2] := 225;
  Paragraph.Tab[3] := 300;

  Lines.Add('Name' + #9 + 'Bookig No.' + #9 + 'Country' + #9 + 'Price' + #9 + 'Date' );
  Lines.Add('');

  SelAttributes.Size := 10;
  SelAttributes.Color := clBlack;

  Lines.Add(sName + #9 + IntToStr(iResNum) + #9 + sCapital +
            #9 +  FloatToStrF(rPrice,ffCurrency,6,2) +
            #9 + sBookingDate);
 end;

 with pnlMyOptions do
  begin
    Visible := True;
    Height := 185;
    Left := 400;
    Top := 256;
    Width := 530;
  end;
  MakeRounded(pnlMyOptions);

  pnlBackBooking.Font.Color :=  $005858F8;
  pnlCancel.Font.Color := $005858F8;
  pnlTicket.Font.Color := $005858F8;
  dbgMyTours.Visible := False;
  dbgMyFlights.Visible := False;
  dbgMyAccommodation.Visible := False;
  lblMyTours.Visible := False;
  lblMyFlights.Visible := False;
  lblMyAccommodation.Visible := False;
end;

procedure TfrmEuroTrekkerMain.DefaultScreen;
//Same as form activate, sets the form as it was, used as a home button
begin
   with dmEuroTrekker do
  begin
    qryAccommodation.SQL.Clear;
    qryAccommodation.SQL.Add('SELECT * FROM tblAccommodation');
    qryAccommodation.Open;
  end;


  edtSearch.BorderStyle := bsNone;
  MakeRounded(edtSearch);
  MakeRounded(pnlFilterAccommodation);
  MakeRounded(edtAccommodationName);
  MakeRounded(pnlResultsAccom);
  MakeRounded(pnlMakeBooking);
  MakeRounded(pnlHome);

  bBookingsAcive := False;
  bAccomodationActive := False;
  bFlightsActive := False;
  bToursActive := False;
  bInfoActive := False;
  bSearchByCountry := False;
  bPriceAdded := False;
  bFinal := False;
  dtpMakeBooking.Date := Date;
  dtpMakeBooking.MinDate := Date;

  sSort1 := 'AccommodationID';
  sSort2 := 'FlightID';
  sSort3 := 'TourID';
  sOrder1 := 'ASC';
  sOrder2 := 'ASC';
  sOrder3 := 'ASC';
  rLowerbound1 := 300;
  rUpperbound1 := 15000;
  rLowerbound2 := 7000;
  rUpperbound2 := 70000;
  rLowerbound3 := 200;
  rUpperbound3 := 2000;
  pnlResultsAccom.Font.Color := $005858F8;
  pnlResultsFlights.Font.Color := $005858F8;

  dmEuroTrekker.tblTours.Open;
  dmEuroTrekker.tblAccountFlights.Open;
  dmEuroTrekker.tblAccommodation.Open;

end;

procedure TfrmEuroTrekkerMain.DisplayAllAccommodation(sSort1, sOrder1 : string);
begin
// Set default filter
   edtSearch.Clear;

   with dmEuroTrekker do
   begin
     qryEuroTrekker.SQL.Clear;
     qryEuroTrekker.SQL.Add('SELECT AccommodationName, Price, Type, CountryName');
     qryEuroTrekker.SQL.Add('FROM tblAccommodation AD, tblCountryInfo CI');
     qryEuroTrekker.SQL.Add('WHERE AD.CountryID = CI.CountryID');

     if (chkSearchByAccom.Checked) and (sSearchByName <> '') then
              qryEuroTrekker.SQL.Add('AND AccommodationName = "' + sSearchByName + '"');

     qryEuroTrekker.SQL.Add('AND Price BETWEEN ' + FloatToStr(rLowerbound1) + ' AND ' + FloatToStr(rUpperbound1));
     qryEuroTrekker.SQL.Add('ORDER BY ' + sSort1 + ' ' + sOrder1);
     qryEuroTrekker.Open;
     TFloatField(qryEuroTrekker.FieldByName('Price')).Currency := True;
   end;

   with dbgEuroTrekker do
  begin
    Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 255;
    Columns[1].Width := 255;
    Columns[2].Width := 255;
    Columns[3].Width := 255;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
  end;
end;

procedure TfrmEuroTrekkerMain.DisplayAllFlights(sSort2, sOrder2: string);
begin
// Set default filter
   edtSearch.Clear;

   with dmEuroTrekker do
   begin
     qryEuroTrekker.SQL.Clear;
     qryEuroTrekker.SQL.Add('SELECT AirlineName, FirstClassPrice, BusinessClassPrice, EconomyPrice, CountryName');
     qryEuroTrekker.SQL.Add('FROM tblFlights FL, tblCountryInfo CI');
     qryEuroTrekker.SQL.Add('WHERE FL.CountryID = CI.CountryID');

      if (chkSearchByAirline.Checked) and (sSearchByName <> '') then
              qryEuroTrekker.SQL.Add('AND AirlineName = "' + sSearchByName + '"');

      if bSearchByCountry then
      qryEuroTrekker.SQL.Add('AND FL.CountryID = "' + sCountryID + '"');


     qryEuroTrekker.SQL.Add('ORDER BY ' + sSort2 + ' ' + sOrder2);
     qryEuroTrekker.Open;
     TFloatField(qryEuroTrekker.FieldByName('FirstClassPrice')).Currency := True;
     TFloatField(qryEuroTrekker.FieldByName('BusinessClassPrice')).Currency := True;
     TFloatField(qryEuroTrekker.FieldByName('EconomyPrice')).Currency := True;
   end;

   with dbgEuroTrekker do
  begin
    Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 204;
    Columns[1].Width := 204;
    Columns[2].Width := 204;
    Columns[3].Width := 204;
    Columns[4].Width := 204;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
    Columns[4].Alignment := taCenter;
    Columns[4].Title.Alignment := taCenter;
  end;
end;

procedure TfrmEuroTrekkerMain.DisplayAllTours(sSort3, sOrder3 : string);
begin
  // Set default filter
   edtSearch.Clear;

   with dmEuroTrekker do
   begin
     qryEuroTrekker.SQL.Clear;
     qryEuroTrekker.SQL.Add('SELECT TourName, Price, CountryName');
     qryEuroTrekker.SQL.Add('FROM tblTours TR, tblCountryInfo CI');
     qryEuroTrekker.SQL.Add('WHERE TR.CountryID = CI.CountryID');

      if (chkSearchByTour.Checked) and (sSearchByName <> '') then
              qryEuroTrekker.SQL.Add('AND TourName = "' + sSearchByName + '"');

      qryEuroTrekker.SQL.Add('AND Price BETWEEN ' + FloatToStr(rLowerbound3) + ' AND ' + FloatToStr(rUpperbound3));


     qryEuroTrekker.SQL.Add('ORDER BY ' + sSort3 + ' ' + sOrder3);
     qryEuroTrekker.Open;
     TFloatField(qryEuroTrekker.FieldByName('Price')).Currency := True;
   end;

   with dbgEuroTrekker do
  begin
    Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 340;
    Columns[1].Width := 340;
    Columns[2].Width := 340;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
  end;

  bSearchByCountry := False;
  lblSearchByCountryActiveTour.Visible := False;
end;

procedure TfrmEuroTrekkerMain.DisplayInfo;
//Retrieves Info from textfile and puts it in a formated RichEdit
//Note: Country summaries where aquired from www.Wikapedia.com
  var
  tInfo : TextFile;
  sLine : string;
  bEnd, bStart : Boolean;
  iCount : Integer;
  sSearch : string;
begin
  with redInfo do
  begin
    Visible := True;
    Clear;
    Left := 330;
    Top := 212;
    Width := 680;
    Height := 337;
  end;  

 bEnd := False;
 bStart := False;
 iCount := 0;
 sSearch := edtSearch.Text;
 
   AssignFile(tInfo,'Textfiles/Info.txt');

   try
     Reset(tInfo);
   except
     MessageDlg('Textfile does not exist.',mtError,[mbOK],0);
     Exit;
   end;

  while (not Eof(tInfo)) and (bEnd = False) do
    begin
     Readln(tInfo, sLine);
     
      if (sLine = UpCase(sSearch[1]) + Copy(sSearch,2,Length(sSearch))) or bStart then
        begin
           Inc(iCount);
        
            if sLine <> '*' then
            begin
             if iCount = 1 then
             begin
               with redInfo do
               begin
               SelAttributes.Size := 20;
               SelAttributes.Color := $005858F8;
               SelAttributes.Style := [fsUnderline];
               Paragraph.Alignment := taCenter;
               Lines.Add(sLine);
              end;  
             end
             else
             begin
              with redInfo do
               begin
               SelAttributes.Size := 16;
               SelAttributes.Color := clGray;
               Lines.Add(sLine);
             end;  
            end;
          end;  

          bStart := True;

          if sLine = '*' then
            bEnd := True;
          
        end; 
 end;

  CloseFile(tInfo);
  edtSearch.Clear;
end;

procedure TfrmEuroTrekkerMain.dtpMakeBookingChange(Sender: TObject);
//Adds Booking Info to RichEdit
begin
  if bAccomodationActive then
   AccomAddToRichEdit
  else if bToursActive then
    ToursAddToRichEdit
  else if bFlightsActive then
    FlightsAddToRichEdit;
end;

procedure TfrmEuroTrekkerMain.FindCountryID(sEntry : string);
//Finds CountryID
begin
  with dmEuroTrekker do
    begin
      if (tblCountryInfo.Locate('CountryName',sEntry,[]) = True) or (tblCountryInfo.Locate('CapitalCity',sEntry,[]) = True) then
      begin
        sCountryID := tblCountryInfo['CountryID'];
      end
      else
      begin
       MessageDlg('Country/Capital not found',mtError,[mbOK],0);
       Abort;
      end;
        end;
end;


procedure TfrmEuroTrekkerMain.FlightsAddToRichEdit;
//Adds Flights to a formated RichEdit
begin
   if dtpMakeBooking.DateTime >= Date  then
   sDate := DateToStr(dtpMakeBooking.DateTime)
  else
  begin
   MessageDlg('Select and upcoming date', mtInformation, [mbOK], 0);
   Abort;
  end;

  redDisplayBooking.Clear;

  redDisplayBooking.SelAttributes.Size := 11;
  redDisplayBooking.SelAttributes.Color := $005858F8;

  redDisplayBooking.Paragraph.TabCount := 6;
  redDisplayBooking.Paragraph.Tab[0] := 50;
  redDisplayBooking.Paragraph.Tab[1] := 100;
  redDisplayBooking.Paragraph.Tab[2] := 150;
  redDisplayBooking.Paragraph.Tab[3] := 200;
  redDisplayBooking.Paragraph.Tab[4] := 250;
  redDisplayBooking.Paragraph.Tab[5] := 300;

  redDisplayBooking.Lines.Add('Airline' + #9 + 'Class' + #9 + 'Seat' + #9 + 'Country' + #9 + 'Price' + #9 + 'Date' + #9 + 'Time' );
  redDisplayBooking.Lines.Add('');

  redDisplayBooking.SelAttributes.Size := 9;
  redDisplayBooking.SelAttributes.Color := clBlack;

  redDisplayBooking.Lines.Add(sFlightBookName + #9 + sFlghtType + #9 + sSeat + #9 + sFlightBookCountry +
                               #9 +  FloatToStrF(StrToInt(sFlightPrice),ffCurrency,6,2) +
                               #9 + sDate + #9 + sTime);
end;

procedure TfrmEuroTrekkerMain.pnlSearchClick(Sender: TObject);
//Applies a country specific search
begin
 FindCountryID(edtSearch.Text);

 if bInfoActive then
  DisplayInfo
 else
 begin

  bSearchByCountry := True;

  if bFlightsActive = True then
 begin
  lblSearchByCountryActiveFlights.Visible := True;
  lblSearchByCountryActiveFlights.Font.Color := $005858F8;
  chkSearchByAirline.Checked := False;

  with dmEuroTrekker do
  begin
    qryEuroTrekker.SQL.Clear;
    qryEuroTrekker.SQL.Add('SELECT AirlineName, FirstClassPrice, BusinessClassPrice, EconomyPrice FROM tblFlights');
    qryEuroTrekker.SQL.Add('WHERE CountryID = "' + sCountryID + '"');
    qryEuroTrekker.Open;
    TFloatField(qryEuroTrekker.FieldByName('FirstClassPrice')).Currency := True;
    TFloatField(qryEuroTrekker.FieldByName('BusinessClassPrice')).Currency := True;
    TFloatField(qryEuroTrekker.FieldByName('EconomyPrice')).Currency := True;
  end;

   with dbgEuroTrekker do
  begin
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 255;
    Columns[1].Width := 255;
    Columns[2].Width := 255;
    Columns[3].Width := 255;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
  end;
 end
 else
 if bAccomodationActive = True then
 begin
  lblSearchByCountryActiveAccom.Visible := True;
  lblSearchByCountryActiveAccom.Font.Color := $005858F8;
  chkSearchByAccom.Checked := False;

     with dmEuroTrekker do
  begin
    qryEuroTrekker.SQL.Clear;
    qryEuroTrekker.SQL.Add('SELECT AccommodationName, Price, Type FROM tblAccommodation');
    qryEuroTrekker.SQL.Add('WHERE CountryID = "' + sCountryID + '"');
    qryEuroTrekker.Open;
    TFloatField(qryEuroTrekker.FieldByName('Price')).Currency := True;
  end;

  with dbgEuroTrekker do
  begin
    Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 340;
    Columns[1].Width := 340;
    Columns[2].Width := 340;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
  end;
 end
 else
 if bToursActive = True then
 begin
  lblSearchByCountryActiveTour.Visible := True;
  lblSearchByCountryActiveTour.Font.Color := $005858F8;
  chkSearchByTour.Checked := False;

     with dmEuroTrekker do
  begin
    qryEuroTrekker.SQL.Clear;
    qryEuroTrekker.SQL.Add('SELECT TourName, Price FROM tblTours');
    qryEuroTrekker.SQL.Add('WHERE CountryID = "' + sCountryID + '"');
    qryEuroTrekker.Open;
    TFloatField(qryEuroTrekker.FieldByName('Price')).Currency := True;
  end;

  with dbgEuroTrekker do
  begin
    Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 510;
    Columns[1].Width := 510;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
  end;
 end;

 pnlResultsAccom.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);
 pnlResultsFlights.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);
 pnlResultsTours.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);


 end;
end;


procedure TfrmEuroTrekkerMain.FormActivate(Sender: TObject);
begin
 DefaultScreen;
end;

procedure TfrmEuroTrekkerMain.Home;
//Return to home screen sets all objects in previous positions
begin
  DefaultScreen;

 edtSearch.ShowHint := True;
 imgHeader.Visible := True;
 redInfo.Visible := False;
 lblQuote.Visible := True;
 lblSubHead.Visible := True;
 lblSubHead2.Visible := True;
 pnlMakeBooking.Visible := False;
 pnlAddBusiness.Visible := False;
 imgBackground.Height := 575;
 lblMyTours.Visible := False;
 lblMyFlights.Visible := False;
 lblMyAccommodation.Visible := False;
 pnlBusinessApplicationTours.Visible := False;
 pnlBusinessApplicationFlights.Visible := False;
 pnlBusinessApplicationAccom.Visible := False;
 edtSearch.Clear;


 with edtSearch do
 begin
   Visible := True;
   Left := 408;
   Top := 384;
 end;

 with pnlSearch do
  begin
    Visible := True;
    Left := 840;
    Top := 384;
  end;

  with pnlBookings do
    begin
      Enabled := True;
      Visible := True;
      Color := clWhite;
      imgIcon1.Visible := True;
      lblDes1.Visible := True;
      lblName1.Visible := True;

      Left := 112;
      Top := 520;
      Width := 193;
      Height := 217;
    end;

  with pnlAccomodation do
    begin
      Enabled := True;
      Visible := True;
      Color := clWhite;
      imgIcon2.Visible := True;
      lblDes2.Visible := True;
      lblName2.Visible := True;

      Left := 354;
      Top := 520;
      Width := 193;
      Height := 217;
    end;

 with pnlTransport do
    begin
      Enabled := True;
      Visible := True;
      Color := clWhite;
      imgIcon3.Visible := True;
      lblDes3.Visible := True;
      lblName3.Visible := True;

      Left := 596;
      Top := 520;
      Width := 193;
      Height := 217;
    end;

 with pnlTours do
    begin
      Enabled := True;
      Visible := True;
      Color := clWhite;
      imgIcon4.Visible := True;
      lblDes4.Visible := True;
      lblName4.Visible := True;

      Left := 838;
      Top := 520;
      Width := 193;
      Height := 217;
    end;

 with pnlInfo do
    begin
      Enabled := True;
      Visible := True;
      Color := clWhite;
      imgIcon5.Visible := True;
      lblDes5.Visible := True;
      lblName5.Visible := True;

      Left := 1080;
      Top := 520;
      Width := 193;
      Height := 217;
    end;

 with imgIcon1 do
  begin
    Left := 56;
    Top := 0;
  end;

  with imgIcon2 do
  begin
    Left := 56;
    Top := 0;
  end;

  with imgIcon3 do
  begin
    Left := 56;
    Top := 0;
  end;

  with imgIcon4 do
  begin
    Left := 56;
    Top := 0;
  end;

  with imgIcon5 do
  begin
    Left := 56;
    Top := 0;
  end;

  with lblName1 do
  begin
    Left := 40;
    Top := 64;
  end;

  with lblName2 do
  begin
    Left := 32;
    Top := 64;
  end;

  with lblName3 do
  begin
    Left := 64;
    Top := 64;
  end;

  with lblName4 do
  begin
    Left := 72;
    Top := 64;
  end;

  with lblName5 do
  begin
    Left := 48;
    Top := 64;
  end;



  with lblDes1 do
  begin
     Visible := True;
     Left := 16;
     Top := 104;
  end;

  with lblDes2 do
  begin
     Visible := True;
     Left := 16;
     Top := 104;
  end;

  with lblDes3 do
  begin
     Visible := True;
     Left := 16;
     Top := 104;
  end;

  with lblDes4 do
  begin
     Visible := True;
     Left := 8;
     Top := 104;
  end;

  with lblDes5 do
  begin
     Visible := True;
     Left := 16;
     Top := 104;
  end;

 pnlSearch.Enabled := False;
 dbgEuroTrekker.Visible := False;
 pnlFilterTours.Visible := False;
 pnlFilterAccommodation.Visible := False;
 pnlFilterFlights.Visible := False;
 pnlAddBusiness.Visible := False;
 dbgMyAccommodation.Visible := False;
 dbgMyTours.Visible := False;
 dbgMyFlights.Visible := False;
 pnlMyOptions.Visible := False;



 bAccomodationActive := False;
 bFlightsActive := False;
 bToursActive := False;
end;

procedure TfrmEuroTrekkerMain.MakeRounded(Control: TWinControl);   //Borrowed code: https://www.swissdelphicenter.ch/en/showcode.php?id=921
//Used to add curved edges to componets to make them look better
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;
procedure TfrmEuroTrekkerMain.MyBookingsDefault;
//Shows all bookings for that user
begin
 edtSearch.Visible := False;
 pnlSearch.Visible := False;
  with dbgMyAccommodation do
    begin
      Visible := True;
      Height := 137;
      Left  := 312;
      Top  := 216;
      Width :=  720;
    end;

  with dbgMyFlights do
    begin
      Visible := True;
      Height := 137;
      Left  := 312;
      Top  := 400;
      Width :=  720;
    end;

  with dbgMyTours do
    begin
      Visible := True;
      Height := 137;
      Left  := 312;
      Top  := 584;
      Width :=  720;
    end;

   with lblMyAccommodation do
    begin
      Visible := True;
      Left  := 592;
      Top  := 184;
    end;

   with lblMyFlights do
    begin
      Visible := True;
      Left  :=  616;
      Top  := 364;
    end;

   with lblMyTours do
    begin
      Visible := True;
      Left  := 626;
      Top  := 548;
    end;

 //Accom
  with dmEuroTrekker do
  begin

      qryAccommodation.SQL.Clear;

      qryAccommodation.SQL.Add('SELECT ReservationNumber, AA.AccommodationName , BookingDate, CountryName');
      qryAccommodation.SQL.Add('FROM tblAccountAccommodation AA, tblAccommodation AC, tblCountryInfo CI');
      qryAccommodation.SQL.Add('WHERE AA.AccommodationID = AC.AccommodationID');
      qryAccommodation.SQL.Add('AND Username = "' + frmEuroTrekkerStart.sLoginUsername + '"');
      qryAccommodation.SQL.Add('AND LEFT(AA.AccommodationID,7) = CI.CountryID');

     qryAccommodation.Open;

  end;

  with dbgMyAccommodation do
  begin
    Columns[0].Width := 180;
    Columns[1].Width := 180;
    Columns[2].Width := 180;
    Columns[3].Width := 180;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
  end;

 //Flights
 with dmEuroTrekker do
  begin

      qryFlights.SQL.Clear;

      qryFlights.SQL.Add('SELECT Class, FA.Airline, FlightDate, Time, SeatNo, CountryName');
      qryFlights.SQL.Add('FROM tblAccountFlights FA, tblFlights FL, tblCountryInfo CI');
      qryFlights.SQL.Add('WHERE FA.FlightID = FL.FlightID');
      qryFlights.SQL.Add('AND Username = "' + frmEuroTrekkerStart.sLoginUsername + '"');
      qryFlights.SQL.Add('AND LEFT(FA.FlightID,7) = CI.CountryID');

      qryFlights.Open;

  end;

  with dbgMyFlights do
  begin

    Columns[0].Width := 120;
    Columns[1].Width := 120;
    Columns[2].Width := 120;
    Columns[3].Width := 120;
    Columns[4].Width := 120;
    Columns[5].Width := 120;


    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
    Columns[4].Alignment := taCenter;
    Columns[4].Title.Alignment := taCenter;
    Columns[5].Alignment := taCenter;
    Columns[5].Title.Alignment := taCenter;
  end;

 //Tours
 with dmEuroTrekker do
  begin

      qryTours.SQL.Clear;

      qryTours.SQL.Add('SELECT BookingNo, TA.TourName,  BookingDate, CountryName');
      qryTours.SQL.Add('FROM tblAccountTours TA, tblTours TR, tblCountryInfo CI');
      qryTours.SQL.Add('WHERE TA.TourID = TR.TourID');
      qryTours.SQL.Add('AND Username = "' + frmEuroTrekkerStart.sLoginUsername + '"');
      qryTours.SQL.Add('AND LEFT(TA.TourID,7) = CI.CountryID');

      qryTours.Open;

  end;

  with dbgMyTours do
  begin
    Columns[0].Width := 180;
    Columns[1].Width := 180;
    Columns[2].Width := 180;
    Columns[3].Width := 180;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
  end;

end;

procedure TfrmEuroTrekkerMain.OpenBookingPanel;
begin
   pnlAddBusiness.Visible := False;
   edtSearch.Visible := False;
   pnlSearch.Visible := False;
   pnlMakeBooking.Visible := True;
   dbgEuroTrekker.Visible := False;
   pnlDate.Font.Color := $005858F8;
   MakeRounded(pnlBookingDisplay);
   lblUsername.Caption := frmEuroTrekkerStart.sLoginUsername;
   imgBookingBG.SendToBack;

   if bAccomodationActive then
    imgBookingBG.Picture.LoadFromFile('Pictures/AccommodationBG.jpg')
   else if  bToursActive then
   imgBookingBG.Picture.LoadFromFile('Pictures/ToursBG.jpg')
   else if  bFlightsActive then
   imgBookingBG.Picture.LoadFromFile('Pictures/FlightsBG.jpg');


   if dmEuroTrekker.tblAccounts.Locate('Username',frmEuroTrekkerStart.sLoginUsername,[]) then
   begin
     lblRealName.Caption := dmEuroTrekker.tblAccounts['FullName'];
   end;

  // Objects in correct orientation
  with pnlBookingDisplay do
  begin
    Visible := True;
    Height := 97;
    Left := 96;
    Top := 72;
    Width := 510;
  end;

  with pnlMakeBooking do
    begin
      Height := 370;
      Left := 319;
      Top := 216;
      Width := 700;
    end;

  pnlProcceedToCheckout.Caption := 'Checkout';
  pnlBack.Visible := False;

  with pnlDate do
    begin
      Visible := True;
      Height := 33;
      Left := 280;
      Top := 184;
      Width := 153;
    end;

  dtpMakeBooking.Visible := False;
  pnlProcceedToCheckout.Visible := False;

  if bAccomodationActive then
  begin
    pnlAccomodation.Caption := 'Book Accommodation';
    pnlFilterAccommodation.Visible := False;
    AccomAddToRichEdit;
  end
  else
  if bToursActive then
   begin
    pnlTours.Caption := 'Book Tours';
    pnlFilterTours.Visible := False;
    ToursAddToRichEdit;
  end
  else
  if bFlightsActive then
   begin
    pnlTours.Caption := 'Book Flights';
    pnlFilterFlights.Visible := False;
    FlightsAddToRichEdit;
  end;
end;

//Accomodation Transtions
procedure TfrmEuroTrekkerMain.lblDes2Click(Sender: TObject);
begin
  TransitionAccom;
end;

procedure TfrmEuroTrekkerMain.imgIcon2Click(Sender: TObject);
begin
 TransitionAccom;
end;

procedure TfrmEuroTrekkerMain.lblName2Click(Sender: TObject);
begin
  TransitionAccom;
end;

procedure TfrmEuroTrekkerMain.pnlAccomApplyClick(Sender: TObject);
//Adds Accom Business to db
  var
  sAccomID, sCountryID, sType : string;
begin
  if objBusinessAccess.ValidateAccom(lbtAccomName.Text, lbtAccomCountry.Text, lbtAccomType.Text) then
  begin

  sAccomID := objBusinessAccess.GenerateAccomID(lbtAccomCountry.Text);
  sCountryID := objBusinessAccess.GetCountryID(lbtAccomCountry.Text);

  if lbtAccomType.Text = 'BnB' then
     sType := 'B&B';

  with dmEuroTrekker do
  begin
    tblAccommodation.Open;
    tblAccommodation.Last;
    tblAccommodation.Insert;

    tblAccommodation['AccommodationID'] :=  sAccomID;
    tblAccommodation['CountryID'] :=  sCountryID;
    tblAccommodation['AccommodationName'] := lbtAccomName.Text;
    tblAccommodation['Price'] := sedAccomPrice.Value;
    tblAccommodation['Type'] := sType;

    tblAccommodation.Post;

    MessageDlg('Application sucessful!', mtInformation,[mbOK],0);
  end;
 end;

  Home;
end;

procedure TfrmEuroTrekkerMain.pnlAccomodationClick(Sender: TObject);
begin
  TransitionAccom;
end;

procedure TfrmEuroTrekkerMain.pnlAddBusinessClick(Sender: TObject);
//Displays Application forms
begin
  pnlFilterTours.Visible := False;
  pnlFilterAccommodation.Visible := False;
  pnlFilterFlights.Visible := False;
  dbgEuroTrekker.Visible := False;
  pnlAddBusiness.Visible := False;
  pnlSearch.Visible := False;
  edtSearch.Visible := False;



  if bAccomodationActive then
    begin
      pnlAccomodation.Caption := 'Add Accommodation';
      with pnlBusinessApplicationAccom do
     begin
       Visible := True;
       Height := 313;
       Left := 352;
       Top := 200;
       Width := 650;
     end;
     MakeRounded(pnlBusinessApplicationAccom);
     pnlAccomApply.Font.Color := $005858F8;
     pnlApplyAccomClose.Font.Color := $005858F8;
     MakeRounded(pnlAccomApply);
    end
  else if bFlightsActive then
  begin
    pnlTransport.Caption := 'Add Airline';
      with pnlBusinessApplicationFlights do
     begin
       Visible := True;
       Height := 313;
       Left := 352;
       Top := 200;
       Width := 650;
     end;

     MakeRounded(pnlBusinessApplicationFlights);
     pnlFlightsApply.Font.Color := $005858F8;
     pnlApplyFlightsClose.Font.Color := $005858F8;
     MakeRounded(pnlFlightsApply);
  end
  else if bToursActive then
  begin
     pnlTours.Caption := 'Add Tour';
    with pnlBusinessApplicationTours do
     begin
       Visible := True;
       Height := 313;
       Left := 352;
       Top := 200;
       Width := 650;
     end;
     MakeRounded(pnlBusinessApplicationTours);
     pnlTourApply.Font.Color := $005858F8;
     pnlApplyToursClose.Font.Color := $005858F8;
     MakeRounded(pnlTourApply);
  end;


end;

procedure TfrmEuroTrekkerMain.TransitionAccom;
var
  K,J, L, iTop, iTop2, iLeft, iHeight, iWidth : Integer;
begin
  edtSearch.ShowHint := False;
  pnlSearch.Enabled := True;
  imgHeader.Visible := False;
  lblQuote.Visible := False;
  lblSubHead.Visible := False;
  lblSubHead2.Visible := False;

  lblDes2.Visible := False;
  lblName2.Top := 120;
  imgIcon2.Top := 60;

      for K := 1 to 40 do
      begin
        iTop := pnlAccomodation.Top;
        iLeft := pnlAccomodation.Left;
        pnlAccomodation.Top := iTop - 13;
        pnlAccomodation.Left := iLeft + 5;
        Sleep(7);
        Refresh;
      end;

  with pnlAccomodation do
    begin
      Left := 568;
      Top := 16;
    end;

  pnlBookings.Visible := False;
  pnlTransport.Visible := False;
  pnlTours.Visible := False;
  pnlInfo.Visible := False;
  lblName2.Visible := False;
  imgIcon2.Visible := False;
  pnlAccomodation.Caption := 'Accomodation';


   for J := 1 to 20 do
    begin
       iHeight := pnlAccomodation.Height;
       pnlAccomodation.Height := iHeight - 6;
       Sleep(4);
       Refresh;
    end;

    pnlAccomodation.Color := $005858F8;

   for L := 1 to 60 do
     begin
       iLeft := pnlAccomodation.Left;
       iWidth := pnlAccomodation.Width;
       pnlAccomodation.Width := iWidth + 10;
       pnlAccomodation.Left := iLeft - 5;

       iTop := edtSearch.Top;
       iTop2 := pnlSearch.Top;
       pnlSearch.Top := iTop2 - 4;
       edtSearch.Top := iTop - 4;

       imgBackground.Height := imgBackground.Height + 3;

       Sleep(5);
       Refresh;
     end;

   bAccomodationActive := True;

   with pnlFilterAccommodation do
   begin
     Visible := True;
     Height := 185;
     Left := 408;
     Top := 180;
     Width := 569;
   end;

   DisplayAllAccommodation(sSort1, sOrder1);

   rgpType.Items.Clear;
   rgpType.Items.Add('All');
   rgpType.Items.Add(#9733 + #9733 + #9733 + #9733 + #9733);
   rgpType.Items.Add(#9733 + #9733 + #9733 );
   rgpType.Items.Add('BnB');
   rgpType.ItemIndex := 0;
   rgpSort.ItemIndex := 0;
   rgpOrder.ItemIndex := 0;
   MakeRounded(pnlFilterAccommodation);
   pnlAccomodation.Enabled := False;

   pnlResultsAccom.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);


  if frmEuroTrekkerStart.bActive then
 begin
   with pnlAddBusiness do
   begin
     Visible := True;
     Left := 280;
     Top := 192;
   end;
   MakeRounded(pnlAddBusiness);
 end;
end;

procedure TfrmEuroTrekkerMain.pnlBackBookingClick(Sender: TObject);
begin
  pnlMyOptions.Visible := False;
  dbgMyTours.Visible := True;
  dbgMyFlights.Visible := True;
  dbgMyAccommodation.Visible := True;
  lblMyTours.Visible := True;
  lblMyFlights.Visible := True;
  lblMyAccommodation.Visible := True;

end;

procedure TfrmEuroTrekkerMain.pnlBackClick(Sender: TObject);
begin

 if (lbtCVV.Visible = True) or bHasCard then
 begin
   with  pnlBookingDisplay do
  begin
    Visible := True;
    Height := 97;
    Left := 96;
    Top := 72;
    Width := 510;
  end;

  with pnlDate do
    begin
      Visible := True;
      Height := 33;
      Left := 280;
      Top := 184;
      Width := 153;
    end;

  with dtpMakeBooking do
    begin
      Visible := True;
      Height := 21;
      Left := 280;
      Top := 232;
      Width :=153;
    end;

  pnlBack.Visible := False;
  lbtExpiry.Visible := False;
  lbtCardHolder.Visible := False;
  lbtCardNumber.Visible := False;
  lbtCVV.Visible := False;
  chkSaveCard.Visible := False;
  lblSaveCard.Visible := False;
  pnlProcceedToCheckout.Caption := 'Checkout';
 end
 else if pnlBookingDisplay.Visible = True then
 begin
  pnlBookingDisplay.Visible := False;
  pnlDate.Visible := False;
  dtpMakeBooking.Visible := False;
  pnlProcceedToCheckout.Caption := 'Confirm Booking';
  pnlBack.Visible := True;
  lbtExpiry.Visible := True;
  lbtCardHolder.Visible := True;
  lbtCardNumber.Visible := True;
  lbtCardHolder.SetFocus;
  lbtCVV.Visible := True;
  chkSaveCard.Visible := True;
  lblSaveCard.Visible := True;

    //Put Components in pos
  with lbtCardHolder do
  begin
     Left := 274;
     Top := 93;
  end;

  with lbtCardNumber do
  begin
     Left := 274;
     Top := 137;
  end;

  with lbtExpiry do
  begin
     Left := 328;
     Top := 189;
  end;

  with lbtCVV do
  begin
     Left := 328;
     Top := 237;
  end;

  with chkSaveCard do
  begin
     Left := 408;
     Top := 216;
  end;

  with lblSaveCard do
  begin
     Left := 424;
     Top := 213;
  end;
 end;



end;

procedure TfrmEuroTrekkerMain.pnlBookingsClick(Sender: TObject);
begin
  TransitionBookings;
end;

procedure TfrmEuroTrekkerMain.pnlCancelClick(Sender: TObject);
//delete your bookings
begin
 if bMyAccom then
 begin
    if MessageDlg('Are you sure you want to cancel your booking for ' + sName + '?',mtWarning,[mbOK, mbCancel], 0) = mrOk then
     begin
       dmEuroTrekker.tblAccountAccommodation.Delete;
       pnlMyOptions.Visible := False;
       MyBookingsDefault;
     end;
 end
 else
 if bMyFlights then
 begin
    if MessageDlg('Are you sure you want to cancel your booking for ' + sName + '?',mtWarning,[mbOK, mbCancel], 0) = mrOk then
     begin
       dmEuroTrekker.tblAccountFlights.Delete;
       pnlMyOptions.Visible := False;
       MyBookingsDefault;
     end;
 end
 else
 if bMyTours then
 begin
    if MessageDlg('Are you sure you want to cancel your booking for ' + sName + '?',mtWarning,[mbOK, mbCancel], 0) = mrOk then
     begin
       dmEuroTrekker.tblAccountTours.Delete;
       pnlMyOptions.Visible := False;
       MyBookingsDefault;
     end;
 end;
end;

procedure TfrmEuroTrekkerMain.pnlFlightsApplyClick(Sender: TObject);
//adds new airline to db
var
  sFlightID, sCountryID : string;
begin
 if objBusinessAccess.Validate(lbtAirlineName.Text, lbtFlightCountry.Text) then
 begin
  sFlightID := objBusinessAccess.GenerateFlightID(lbtFlightCountry.Text);
  sCountryID := objBusinessAccess.GetCountryID(lbtFlightCountry.Text);

  with dmEuroTrekker do
  begin
    tblFlights.Open;
    tblFlights.Last;
    tblFlights.Insert;

    tblFlights['FlightID'] := sFlightID;
    tblFlights['CountryID'] := sCountryID;
    tblFlights['AirlineName'] := lbtAirlineName.Text;
    tblFlights['FirstClassPrice'] := sedFirstPrice.Value;
    tblFlights['BusinessClassPrice'] := sedBusinessPrice.Value;
    tblFlights['EconomyPrice'] := sedEconomyPrice.Value;


    tblFlights.Post;

    MessageDlg('Application sucessful!', mtInformation,[mbOK],0);
  end;
 end;

 Home;
end;

procedure TfrmEuroTrekkerMain.pnlCloseBookingClick(Sender: TObject);
begin
   edtSearch.Visible := True;
   pnlSearch.Visible := True;
   pnlMakeBooking.Visible := False;
   dbgEuroTrekker.Visible := True;
   lbtExpiry.Visible := False;
   lbtCardHolder.Visible := False;
   lbtCardNumber.Visible := False;
   lbtCVV.Visible := False;
   chkSaveCard.Visible := False;
   lblSaveCard.Visible := False;
   pnlAddBusiness.Visible := True;

  if bAccomodationActive then
  begin
    pnlAccomodation.Caption := 'Accommodation';
    pnlFilterAccommodation.Visible := True;
  end
  else
  if bToursActive then
  begin
    pnlTours.Caption := 'Tours';
    pnlFilterTours.Visible := True;
  end
  else
  if bFlightsActive then
  begin
    pnlTours.Caption := 'Flights';
    pnlFilterFlights.Visible := True;
  end;
end;

procedure TfrmEuroTrekkerMain.pnlDateClick(Sender: TObject);
begin
   with dtpMakeBooking do
    begin
      Visible := True;
      Height := 21;
      Left := 280;
      Top := 232;
      Width :=153;
    end;

  sDate := DateToStr(Date);
  pnlProcceedToCheckout.Visible := True;

  if bAccomodationActive then
   AccomAddToRichEdit
  else if bToursActive then
   ToursAddToRichEdit;
end;

procedure TfrmEuroTrekkerMain.pnlHomeClick(Sender: TObject);
begin
  Home;
end;

procedure TfrmEuroTrekkerMain.imgHomeClick(Sender: TObject);
begin
  Home;
end;

procedure TfrmEuroTrekkerMain.imgIcon1Click(Sender: TObject);
begin
  TransitionBookings;
end;

procedure TfrmEuroTrekkerMain.lblDes1Click(Sender: TObject);
begin
  TransitionBookings;
end;


procedure TfrmEuroTrekkerMain.lblName1Click(Sender: TObject);
begin
  TransitionBookings;
end;


procedure TfrmEuroTrekkerMain.TransitionBookings;
  var
  K,J, L, iTop, iTop2, iLeft, iHeight, iWidth : Integer;
begin
  edtSearch.ShowHint := False;
  pnlSearch.Enabled := True;
  imgHeader.Visible := False;
  lblQuote.Visible := False;
  lblSubHead.Visible := False;
  lblSubHead2.Visible := False;

  lblDes1.Visible := False;
  lblName1.Top := 120;
  imgIcon1.Top := 60;

      for K := 1 to 40 do
      begin
        iTop := pnlBookings.Top;
        iLeft := pnlBookings.Left;
        pnlBookings.Top := iTop - 13;
        pnlBookings.Left := iLeft + 11;
        Sleep(7);
        Refresh;
      end;

  with pnlBookings do
    begin
      Left := 568;
      Top := 16;
    end;


  pnlAccomodation.Visible := False;
  pnlTransport.Visible := False;
  pnlTours.Visible := False;
  pnlInfo.Visible := False;
  lblName1.Visible := False;
  imgIcon1.Visible := False;
  pnlBookings.Caption := 'My Bookings';


   for J := 1 to 20 do
    begin
       iHeight := pnlBookings.Height;
       pnlBookings.Height := iHeight - 6;
       Sleep(4);
       Refresh;
    end;

    pnlBookings.Color := $005858F8;

   for L := 1 to 60 do
     begin
       iLeft := pnlBookings.Left;
       iWidth := pnlBookings.Width;
       pnlBookings.Width := iWidth + 10;
       pnlBookings.Left := iLeft - 5;

       iTop := edtSearch.Top;
       iTop2 := pnlSearch.Top;
       pnlSearch.Top := iTop2 - 4;
       edtSearch.Top := iTop - 4;

       imgBackground.Height := imgBackground.Height + 3;

       Sleep(5);
       Refresh;
     end;

   bBookingsAcive := True;
   pnlBookings.Enabled := False;

   MyBookingsDefault;
end;

procedure TfrmEuroTrekkerMain.lblDes3Click(Sender: TObject);
begin
  TransitionFlights;
end;

procedure TfrmEuroTrekkerMain.imgIcon3Click(Sender: TObject);
begin
  TransitionFlights;
end;

procedure TfrmEuroTrekkerMain.lblName4Click(Sender: TObject);
begin
  TransitionTours;
end;

procedure TfrmEuroTrekkerMain.pnlTransportClick(Sender: TObject);
begin
  TransitionFlights;
end;

procedure TfrmEuroTrekkerMain.TransitionFlights;
var
  K,J, L, iTop, iTop2, iLeft, iHeight, iWidth : Integer;
begin
  edtSearch.ShowHint := False;
  pnlSearch.Enabled := True;
  imgHeader.Visible := False;
  lblQuote.Visible := False;
  lblSubHead.Visible := False;
  lblSubHead2.Visible := False;

  lblDes3.Visible := False;
  lblName3.Top := 120;
  imgIcon3.Top := 60;

      for K := 1 to 40 do
      begin
        iTop := pnlTransport.Top;
        iLeft := pnlTransport.Left;
        pnlTransport.Top := iTop - 13;
        pnlTransport.Left := iLeft - 1;
        Sleep(7);
        Refresh;
      end;

  with pnlTransport do
    begin
      Left := 568;
      Top := 16;
    end;


  pnlAccomodation.Visible := False;
  pnlBookings.Visible := False;
  pnlTours.Visible := False;
  pnlInfo.Visible := False;
  lblName3.Visible := False;
  imgIcon3.Visible := False;
  pnlTransport.Caption := 'Flights';


   for J := 1 to 20 do
    begin
       iHeight := pnlTransport.Height;
       pnlTransport.Height := iHeight - 6;
       Sleep(4);
       Refresh;
    end;

    pnlTransport.Color := $005858F8;

   for L := 1 to 60 do
     begin
       iLeft := pnlTransport.Left;
       iWidth := pnlTransport.Width;
       pnlTransport.Width := iWidth + 10;
       pnlTransport.Left := iLeft - 5;

       iTop := edtSearch.Top;
       iTop2 := pnlSearch.Top;
       pnlSearch.Top := iTop2 - 4;
       edtSearch.Top := iTop - 4;

       imgBackground.Height := imgBackground.Height + 3;

       Sleep(5);
       Refresh;
     end;

   with pnlFilterFlights do
   begin
     Visible := True;
     Height := 185;
     Left := 408;
     Top := 180;
     Width := 569;
   end;

   bFlightsActive := True;

   DisplayAllFlights(sSort2, sOrder2);

   rgpClass.ItemIndex := 0;
   rgpSort2.ItemIndex := 0;
   rgpOrder2.ItemIndex := 0;
   MakeRounded(pnlFilterFlights);
   MakeRounded(pnlResultsFlights);
   pnlTransport.Enabled := False;

   pnlResultsFlights.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);

    if frmEuroTrekkerStart.bActive then
 begin
   with pnlAddBusiness do
   begin
     Visible := True;
     Left := 280;
     Top := 192;
   end;
   MakeRounded(pnlAddBusiness);
 end;
end;


procedure TfrmEuroTrekkerMain.pnlTicketClick(Sender: TObject);
//Loads source TextFile and adds new info to it
  var
  K : Integer;
begin
  LoadSource;

 if bMyFlights then
 begin
  for K := 1 to 15 do
    begin
       arrFlightTicket[1] := sName;

      if dmEuroTrekker.tblAccounts.Locate('Username',frmEuroTrekkerStart.sLoginUsername,[]) then
      begin
       arrFlightTicket[3]:= arrTicketSource[3] + ' ' + dmEuroTrekker.tblAccounts['FullName'];
      end;


       if (K <= 6) or (K = 9) or (K > 13) then
       arrFlightTicket[K]:= arrTicketSource[K];

       arrFlightTicket[7]:= arrTicketSource[7] + ' ' + sBookingDate;
       arrFlightTicket[8]:= arrTicketSource[8] + ' ' + sBookingTime;
       arrFlightTicket[10]:= arrTicketSource[10] + ' ' + sBookingClass;
       arrFlightTicket[11]:= arrTicketSource[11] + ' ' + sResNo;
       arrFlightTicket[12]:= arrTicketSource[12] + ' ' + FloatToStrF(rPrice,ffCurrency,6,2);
       arrFlightTicket[13] := arrTicketSource[13] + ' ' + sCapital;
    end;

    CreateFlightTicket;
 end
 else
 if bMyAccom then
 begin
  for K := 1 to 12 do
    begin
       arrAccomTicket[1] := sName;

      if dmEuroTrekker.tblAccounts.Locate('Username',frmEuroTrekkerStart.sLoginUsername,[]) then
      begin
       arrAccomTicket[3]:= arrTicketSource[3] + ' ' + dmEuroTrekker.tblAccounts['FullName'];
      end;


       if (K <= 6) or (K = 8) or (K = 11) then
       arrAccomTicket[K]:= arrTicketSource[K];

       arrAccomTicket[7]:= arrTicketSource[7] + ' ' + sBookingDate;
       arrAccomTicket[9]:= arrTicketSource[9] + ' ' + IntToStr(iResNum);
       arrAccomTicket[10]:= arrTicketSource[10] + ' ' + FloatToStrF(rPrice,ffCurrency,6,2);
       arrAccomTicket[12]:= arrTicketSource[12] + ' ' + sCapital;
    end;

    CreateAccomTicket;
 end
 else
 if bMyTours then
 begin
  for K := 1 to 12 do
    begin
       arrTourTicket[1] := sName;

      if dmEuroTrekker.tblAccounts.Locate('Username',frmEuroTrekkerStart.sLoginUsername,[]) then
      begin
       arrTourTicket[3]:= arrTicketSource[3] + ' ' + dmEuroTrekker.tblAccounts['FullName'];
      end;


       if (K <= 6) or (K = 8) or (K = 11) then
       arrTourTicket[K]:= arrTicketSource[K];

       arrTourTicket[7]:= arrTicketSource[7] + ' ' + sBookingDate;
       arrTourTicket[9]:= arrTicketSource[9] + ' ' + IntToStr(iResNum);
       arrTourTicket[10]:= arrTicketSource[10] + ' ' + FloatToStrF(rPrice,ffCurrency,6,2);
       arrTourTicket[12]:= arrTicketSource[12] + ' ' + sCapital;
    end;

    CreateTourTicket;
 end;

    

  
end;

procedure TfrmEuroTrekkerMain.pnlTourApplyClick(Sender: TObject);
//Adds new tours to db
var
  sTourID, sCountryID : string;
begin
 if objBusinessAccess.Validate(lbtTourName.Text, lbtTourCountry.Text) then
 begin
  sTourID := objBusinessAccess.GenerateTourID(lbtTourCountry.Text);
  sCountryID := objBusinessAccess.GetCountryID(lbtTourCountry.Text);

  with dmEuroTrekker do
  begin
    tblTours.Open;
    tblTours.Last;
    tblTours.Insert;

    tblTours['TourID'] := sTourID;
    tblTours['CountryID'] := sCountryID;
    tblTours['TourName'] := lbtTourName.Text;
    tblTours['Price'] := sedTourPrice.Value;

    tblTours.Post;

    MessageDlg('Application sucessful!', mtInformation,[mbOK],0);
  end;
 end;

  Home;
end;

procedure TfrmEuroTrekkerMain.pnlToursClick(Sender: TObject);
begin
  TransitionTours;
end;

procedure TfrmEuroTrekkerMain.lblDes4Click(Sender: TObject);
begin
  TransitionTours;
end;

procedure TfrmEuroTrekkerMain.imgIcon4Click(Sender: TObject);
begin
  TransitionTours;
end;

procedure TfrmEuroTrekkerMain.lblName3Click(Sender: TObject);
begin
  TransitionFlights;
end;

procedure TfrmEuroTrekkerMain.TransitionTours;
var
  K,J, L, iTop, iTop2, iLeft, iHeight, iWidth : Integer;
begin
  edtSearch.ShowHint := False;
  pnlSearch.Enabled := True;
  imgHeader.Visible := False;
  lblQuote.Visible := False;
  lblSubHead.Visible := False;
  lblSubHead2.Visible := False;

  lblDes4.Visible := False;
  lblName4.Top := 120;
  imgIcon4.Top := 60;

      for K := 1 to 40 do
      begin
        iTop := pnlTours.Top;
        iLeft := pnlTours.Left;
        pnlTours.Top := iTop - 13;
        pnlTours.Left := iLeft - 7;
        Sleep(7);
        Refresh;
      end;

  with pnlTours do
    begin
      Left := 568;
      Top := 16;
    end;


  pnlAccomodation.Visible := False;
  pnlTransport.Visible := False;
  pnlBookings.Visible := False;
  pnlInfo.Visible := False;
  lblName4.Visible := False;
  imgIcon4.Visible := False;
  pnlTours.Caption := 'Tours';


   for J := 1 to 20 do
    begin
       iHeight := pnlTours.Height;
       pnlTours.Height := iHeight - 6;
       Sleep(4);
       Refresh;
    end;

    pnlTours.Color := $005858F8;

   for L := 1 to 60 do
     begin
       iLeft := pnlTours.Left;
       iWidth := pnlTours.Width;
       pnlTours.Width := iWidth + 10;
       pnlTours.Left := iLeft - 5;

       iTop := edtSearch.Top;
       iTop2 := pnlSearch.Top;
       pnlSearch.Top := iTop2 - 4;
       edtSearch.Top := iTop - 4;

       imgBackground.Height := imgBackground.Height + 3;

       Sleep(5);
       Refresh;
     end;

   bToursActive := True;

   with pnlFilterTours do
   begin
     Visible := True;
     Height := 185;
     Left := 436;
     Top := 180;
     Width := 513;
   end;

   DisplayAllTours(sSort3, sOrder3);

   rgpSort3.ItemIndex := 0;
   rgpOrder3.ItemIndex := 0;
   MakeRounded(pnlFilterTours);
   MakeRounded(pnlResultsTours);
   pnlTours.Enabled := False;

   pnlResultsTours.Font.Color := $005858F8;
   pnlResultsTours.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);

    if frmEuroTrekkerStart.bActive then
 begin
   with pnlAddBusiness do
   begin
     Visible := True;
     Left := 280;
     Top := 192;
   end;
   MakeRounded(pnlAddBusiness);
 end;
end;

procedure TfrmEuroTrekkerMain.pnlInfoClick(Sender: TObject);
begin
  TransitionInfo;
end;

procedure TfrmEuroTrekkerMain.pnlProcceedToCheckoutClick(Sender: TObject);
//Navigation through booking proccess
begin
 if pnlDate.Visible = True then
 begin
  if dmEuroTrekker.tblAccounts.Locate('Username',frmEuroTrekkerStart.sLoginUsername,[]) then
  begin
    if  dmEuroTrekker.tblAccounts['BankCardNumber'] <> '0' then
     begin
       sCardNum :=  dmEuroTrekker.tblAccounts['BankCardNumber'];
       bHasCard := True;
     end
    else
     bHasCard := False;
  end;

 end;

 if (lbtCardHolder.Visible = True) or bHasCard then
 begin
  if not bHasCard then   ///////////////////////////////////////////////////////
   CardEntryVal; 
      
   if chkSaveCard.Checked then
    begin
      with dmEuroTrekker do
      begin
         if tblAccounts.Locate('Username',frmEuroTrekkerStart.sLoginUsername,[]) then
        begin
         tblAccounts.Open;
         tblAccounts.Edit;
         tblAccounts['BankCardNumber'] := lbtCardNumber.Text;
         tblAccounts.Post;

         MessageDlg('Sucessful! Card Info Added' + #13 + 'In future this step will be skipped', mtInformation, [mbOK], 0);
        end;
      end;
    end
   else
    MessageDlg('Sucessful!', mtInformation, [mbOK], 0);

   Sleep(500);

  bFinal := True;
  lbtCardHolder.Visible := False;
  lbtCardNumber.Visible := False;
  lbtExpiry.Visible := False;
  lbtCVV.Visible := False;
  chkSaveCard.Visible := False;
  lblSaveCard.Visible := False;
  pnlDate.Visible := False;
  dtpMakeBooking.Visible := False;
  lblCardNum.Visible := True;

  if bHasCard then
   lblCardNum.Caption := 'Credit/Debit card:  ****' + Copy(sCardNum,13,4)
  else
   lblCardNum.Caption := 'Credit/Debit card:  ****'+ Copy(lbtCardNumber.Text,13,4);

  pnlProcceedToCheckout.Caption := 'Finalise Booking';

  with pnlBookingDisplay do
  begin
    Visible := True;
    Height := 97;
    Left := 96;
    Top := 72;
    Width := 510;
  end;

  bHasCard := False;
 end
 else if (pnlDate.Visible = True) then
 begin
  pnlBookingDisplay.Visible := False;
  pnlDate.Visible := False;
  dtpMakeBooking.Visible := False;
  pnlProcceedToCheckout.Caption := 'Confirm Booking';
  pnlBack.Visible := True;
  lbtExpiry.Visible := True;
  lbtCardHolder.Visible := True;
  lbtCardNumber.Visible := True;
  lbtCardHolder.SetFocus;
  lbtCVV.Visible := True;
  chkSaveCard.Visible := True;
  lblSaveCard.Visible := True;

    //Put Components in pos
  with lbtCardHolder do
  begin
     Left := 274;
     Top := 93;
  end;

  with lbtCardNumber do
  begin
     Left := 274;
     Top := 137;
  end;

  with lbtExpiry do
  begin
     Left := 328;
     Top := 189;
  end;

  with lbtCVV do
  begin
     Left := 328;
     Top := 237;
  end;

  with chkSaveCard do
  begin
     Left := 408;
     Top := 216;
  end;

  with lblSaveCard do
  begin
     Left := 424;
     Top := 213;
  end;
 end
 else if bFinal then
 begin
  if bAccomodationActive then
  begin
   with dmEuroTrekker do
    begin
      tblAccountAccommodation.Open;
      tblAccountAccommodation.Insert;
      tblAccountAccommodation['Username'] := frmEuroTrekkerStart.sLoginUsername;
      tblAccountAccommodation['AccommodationID'] := sAccomID;
      tblAccountAccommodation['BookingDate'] := dtpMakeBooking.DateTime;
      tblAccountAccommodation['AccommodationName'] := sAccomBookName;
      tblAccountAccommodation.Post;
      MessageDlg('Booking Completed!', mtConfirmation, [mbOK],0);
    end;
  end
  else
  if bToursActive then
  begin
   with dmEuroTrekker do
    begin
      tblAccountTours.Open;
      tblAccountTours.Insert;
      tblAccountTours['Username'] := frmEuroTrekkerStart.sLoginUsername;
      tblAccountTours['TourID'] := sTourID;
      tblAccountTours['BookingDate'] := dtpMakeBooking.DateTime;
      tblAccountTours['TourName'] := sTourBookName;;
      tblAccountTours.Post;
      MessageDlg('Booking Completed!', mtConfirmation, [mbOK],0);
    end;
  end
  else
   if bFlightsActive then
  begin
   with dmEuroTrekker do
    begin
      tblAccountFlights.Open;
      tblAccountFlights.Insert;
      tblAccountFlights['SeatNo'] := sSeat;
      tblAccountFlights['Username'] := frmEuroTrekkerStart.sLoginUsername;
      tblAccountFlights['FlightID'] := sFlightID;
      tblAccountFlights['FlightDate'] := dtpMakeBooking.DateTime;
      tblAccountFlights['Class'] := sFlghtType;
      tblAccountFlights['Time'] := Copy(sTime,1,5);
      tblAccountFlights['Airline'] := sFlightBookName;
      tblAccountFlights.Post;
      MessageDlg('Booking Completed!', mtConfirmation, [mbOK],0);
    end;
  end;

  Sleep(1000);
  Home;
 end;

end;

procedure TfrmEuroTrekkerMain.lblDes5Click(Sender: TObject);
begin
  TransitionInfo;
end;

procedure TfrmEuroTrekkerMain.lblHomeClick(Sender: TObject);
begin
  Home;
end;

procedure TfrmEuroTrekkerMain.lblName5Click(Sender: TObject);
begin
  TransitionInfo;
end;


procedure TfrmEuroTrekkerMain.LoadSource;
//Loads source textfile to array
  var
  tSource : TextFile;
begin
 if bMyAccom then
  AssignFile(tSource,'Textfiles/AccomTicketSourceDocument.txt')
 else if bMyFlights then
  AssignFile(tSource,'Textfiles/FlightTicketSourceDocument.txt')
 else if bMyTours then
  AssignFile(tSource,'Textfiles/TourTicketSourceDocument.txt');


  try
   Reset(tSource);
  except
   MessageDlg('File does not exist!',mtError,[mbOK],0);
   Exit;
  end;

  iCount := 0;
  while not Eof(tSource) do
    begin
      Inc(iCount);
      Readln(tSource, arrTicketSource[iCount]);
    end;  

  CloseFile(tSource);
  
end;

procedure TfrmEuroTrekkerMain.imgIcon5Click(Sender: TObject);
begin
  TransitionInfo;
end;

procedure TfrmEuroTrekkerMain.TransitionInfo;
var
  K,J, L, iTop, iTop2, iLeft, iHeight, iWidth : Integer;
begin
  edtSearch.ShowHint := False;
  pnlSearch.Enabled := True;
  imgHeader.Visible := False;
  lblQuote.Visible := False;
  lblSubHead.Visible := False;
  lblSubHead2.Visible := False;

  lblDes5.Visible := False;
  lblName5.Top := 120;
  imgIcon5.Top := 60;

      for K := 1 to 40 do
      begin
        iTop := pnlInfo.Top;
        iLeft := pnlInfo.Left;
        pnlInfo.Top := iTop - 13;
        pnlInfo.Left := iLeft - 13;
        Sleep(7);
        Refresh;
      end;

  with pnlInfo do
    begin
      Left := 568;
      Top := 16;
    end;


  pnlAccomodation.Visible := False;
  pnlTransport.Visible := False;
  pnlTours.Visible := False;
  pnlBookings.Visible := False;
  lblName5.Visible := False;
  imgIcon5.Visible := False;
  pnlInfo.Caption := 'Information';


   for J := 1 to 20 do
    begin
       iHeight := pnlInfo.Height;
       pnlInfo.Height := iHeight - 6;
       Sleep(4);
       Refresh;
    end;

    pnlInfo.Color := $005858F8;

   for L := 1 to 60 do
     begin
       iLeft := pnlInfo.Left;
       iWidth := pnlInfo.Width;
       pnlInfo.Width := iWidth + 10;
       pnlInfo.Left := iLeft - 5;

       iTop := edtSearch.Top;
       iTop2 := pnlSearch.Top;
       pnlSearch.Top := iTop2 - 4;
       edtSearch.Top := iTop - 4;

       imgBackground.Height := imgBackground.Height + 3;

       Sleep(5);
       Refresh;
     end;

  pnlInfo.Enabled := False;

  bInfoActive := True;
end;

procedure TfrmEuroTrekkerMain.pnlApplyAccomCloseClick(Sender: TObject);
begin
  pnlBusinessApplicationAccom.Visible := False;
  pnlAccomodation.Caption := 'Accommodation';
  pnlFilterAccommodation.Visible := True;
  dbgEuroTrekker.Visible := True;
  pnlSearch.Visible := False;
  edtSearch.Visible := False;
  pnlAddBusiness.Visible := True;
end;

procedure TfrmEuroTrekkerMain.pnlApplyFlightsClick(Sender: TObject);
//filters the flights
begin
   if bSearchByCountry then
   FindCountryID(edtSearch.Text);

  rLowerbound2 := sedLower2.Value;
  rUpperbound2 := sedUpper2.Value;
  sSearchByName := edtSearchByAirline.Text;

  case rgpClass.ItemIndex of
     1 : sClass := 'FirstClassPrice';
     2 : sClass := 'BusinessClassPrice';
     3 : sClass := 'EconomyPrice';
  end;

  case rgpSort2.ItemIndex of
     0 : sSort2 := 'FlightID';
     1 : sSort2 := 'AirlineName';
     2 : sSort2 := sClass;
  end;

  case rgpOrder2.ItemIndex  of
    0 : sOrder2 := 'ASC';
    1 : sOrder2 := 'DESC';
  end;


  with dmEuroTrekker do
  begin

  if rgpClass.ItemIndex <> 0 then
  begin
            qryEuroTrekker.SQL.Clear;

            if bSearchByCountry then
            begin
              qryEuroTrekker.SQL.Clear;

              case rgpClass.ItemIndex of
                  1 : qryEuroTrekker.SQL.Add('SELECT AirlineName, FirstClassPrice');
                  2 : qryEuroTrekker.SQL.Add('SELECT AirlineName, BusinessClassPrice');
                  3 : qryEuroTrekker.SQL.Add('SELECT AirlineName, EconomyPrice');
              end;

              qryEuroTrekker.SQL.Add('FROM tblFlights');
              qryEuroTrekker.SQL.Add('WHERE CountryID = "' + sCountryID + '"');

               if (chkSearchByAirline.Checked) and (sSearchByName <> '') then
              qryEuroTrekker.SQL.Add('AND AirlineName = "' + sSearchByName + '"');

              if bPriceAdded = True then
              qryEuroTrekker.SQL.Add('AND ' + sClass + ' BETWEEN ' + FloatToStr(rLowerbound2) + ' AND ' + FloatToStr(rUpperbound2));

              qryEuroTrekker.SQL.Add('ORDER BY ' + sSort2 + ' ' + sOrder2);


              qryEuroTrekker.Open;

              case rgpClass.ItemIndex of
                  1 : TFloatField(qryEuroTrekker.FieldByName('FirstClassPrice')).Currency := True;
                  2 : TFloatField(qryEuroTrekker.FieldByName('BusinessClassPrice')).Currency := True;
                  3 : TFloatField(qryEuroTrekker.FieldByName('EconomyPrice')).Currency := True;
              end;

            end
            else
            begin
              qryEuroTrekker.SQL.Clear;

              case rgpClass.ItemIndex of
                  1 : qryEuroTrekker.SQL.Add('SELECT AirlineName, FirstClassPrice, CountryName');
                  2 : qryEuroTrekker.SQL.Add('SELECT AirlineName, BusinessClassPrice, CountryName');
                  3 : qryEuroTrekker.SQL.Add('SELECT AirlineName, EconomyPrice, CountryName');
              end;

              qryEuroTrekker.SQL.Add('FROM tblFlights FL, tblCountryInfo CI');
              qryEuroTrekker.SQL.Add('WHERE FL.CountryID = CI.CountryID');

              if (chkSearchByAirline.Checked) and (sSearchByName <> '') then
              qryEuroTrekker.SQL.Add('AND AirlineName = "' + sSearchByName + '"');

              if bPriceAdded = True then
              qryEuroTrekker.SQL.Add('AND ' + sClass + ' BETWEEN ' + FloatToStr(rLowerbound2) + ' AND ' + FloatToStr(rUpperbound2));

              qryEuroTrekker.SQL.Add('ORDER BY ' + sSort2 + ' ' + sOrder2);

              qryEuroTrekker.Open;

              case rgpClass.ItemIndex of
                  1 : TFloatField(qryEuroTrekker.FieldByName('FirstClassPrice')).Currency := True;
                  2 : TFloatField(qryEuroTrekker.FieldByName('BusinessClassPrice')).Currency := True;
                  3 : TFloatField(qryEuroTrekker.FieldByName('EconomyPrice')).Currency := True;
              end;
            end;
  end
  else
  begin
       DisplayAllFlights(sSort2, sOrder2);
       bSearchByCountry := False;
       lblSearchByCountryActiveFlights.Visible := False;
  end;


  with dbgEuroTrekker do
  begin
    if bSearchByCountry and (rgpClass.ItemIndex = 0)then
   begin
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 255;
    Columns[1].Width := 255;
    Columns[2].Width := 255;
    Columns[3].Width := 255;


    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
    end
   else if bSearchByCountry and (rgpClass.ItemIndex <> 0) then
   begin
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 510;
    Columns[1].Width := 510;


    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
   end
   else if rgpClass.ItemIndex = 0 then
   begin
     Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;


    Columns[0].Width := 204;
    Columns[1].Width := 204;
    Columns[2].Width := 204;
    Columns[3].Width := 204;
    Columns[4].Width := 204;


    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
    Columns[3].Alignment := taCenter;
    Columns[3].Title.Alignment := taCenter;
    Columns[4].Alignment := taCenter;
    Columns[4].Title.Alignment := taCenter;
   end
   else
   begin
     Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;


    Columns[0].Width := 340;
    Columns[1].Width := 340;
    Columns[2].Width := 340;


    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
   end;

  end;
 end;


  pnlResultsFlights.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);
 end;


procedure TfrmEuroTrekkerMain.pnlApplyFlightsCloseClick(Sender: TObject);
begin
  pnlBusinessApplicationFlights.Visible := False;
  pnlTransport.Caption := 'Flights';
  pnlFilterFlights.Visible := True;
  dbgEuroTrekker.Visible := True;
  pnlSearch.Visible := False;
  edtSearch.Visible := False;
  pnlAddBusiness.Visible := True;
end;

procedure TfrmEuroTrekkerMain.pnlApplyToursClick(Sender: TObject);
//filters the tours
begin
 if bSearchByCountry then
   FindCountryID(edtSearch.Text);

  rLowerbound3 := sedLower3.Value;
  rUpperbound3 := sedUpper3.Value;
  sSearchByName := edtSearchByTour.Text;

  case rgpSort3.ItemIndex of
     1 : sSort3 := 'TourID';
     2 : sSort3 := 'TourName';
     3 : sSort3 := 'Price';
  end;

  case rgpOrder3.ItemIndex  of
    0 : sOrder3 := 'ASC';
    1 : sOrder3 := 'DESC';
  end;


  with dmEuroTrekker do
  begin

            if rgpSort3.ItemIndex = 0 then
              DisplayAllTours(sSort3, sOrder3)
            else
            if bSearchByCountry then
            begin

               with dmEuroTrekker do
              begin
                qryEuroTrekker.SQL.Clear;
                qryEuroTrekker.SQL.Add('SELECT TourName, Price');
                qryEuroTrekker.SQL.Add('FROM tblTours');
                qryEuroTrekker.SQL.Add('WHERE CountryID = "' + sCountryID + '"');

                if (chkSearchByTour.Checked) and (sSearchByName <> '') then
                  qryEuroTrekker.SQL.Add('AND TourName = "' + sSearchByName + '"');

                 qryEuroTrekker.SQL.Add('AND Price BETWEEN ' + FloatToStr(rLowerbound3) + ' AND ' + FloatToStr(rUpperbound3));

                  qryEuroTrekker.SQL.Add('ORDER BY ' + sSort3 + ' ' + sOrder3);
                  qryEuroTrekker.Open;
                  TFloatField(qryEuroTrekker.FieldByName('Price')).Currency := True;
              end;
            end
            else
            begin
              qryEuroTrekker.SQL.Clear;

               with dmEuroTrekker do
              begin
                qryEuroTrekker.SQL.Clear;
                qryEuroTrekker.SQL.Add('SELECT TourName, Price, CountryName');
                qryEuroTrekker.SQL.Add('FROM tblTours TR, tblCountryInfo CI');
                qryEuroTrekker.SQL.Add('WHERE TR.CountryID = CI.CountryID');

                if (chkSearchByTour.Checked) and (sSearchByName <> '') then
                  qryEuroTrekker.SQL.Add('AND TourName = "' + sSearchByName + '"');

                 qryEuroTrekker.SQL.Add('AND Price BETWEEN ' + FloatToStr(rLowerbound3) + ' AND ' + FloatToStr(rUpperbound3));

                  qryEuroTrekker.SQL.Add('ORDER BY ' + sSort3 + ' ' + sOrder3);
                  qryEuroTrekker.Open;
                  TFloatField(qryEuroTrekker.FieldByName('Price')).Currency := True;
              end;
            end;
  end;

  with dbgEuroTrekker do
  begin
   if bSearchByCountry then
   begin
    Columns[0].Width := 510;
    Columns[1].Width := 510;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
   end
   else
   begin
     Visible := True;
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;


    Columns[0].Width := 340;
    Columns[1].Width := 340;
    Columns[2].Width := 340;


    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
   end;

  end;
  pnlResultsTours.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);
 end;

procedure TfrmEuroTrekkerMain.pnlApplyToursCloseClick(Sender: TObject);
begin
  pnlBusinessApplicationTours.Visible := False;
  pnlTours.Caption := 'Tours';
  pnlFilterTours.Visible := True;
  dbgEuroTrekker.Visible := True;
  pnlSearch.Visible := False;
  edtSearch.Visible := False;
  pnlAddBusiness.Visible := True;
end;

procedure TfrmEuroTrekkerMain.pnlAppyAccommodationClick(Sender: TObject);
//filters the accom
begin
 if bSearchByCountry then
   FindCountryID(edtSearch.Text);

  rLowerbound1 := sedLower.Value;
  rUpperbound1 := sedUpper.Value;
  sSearchByName := edtAccommodationName.Text;

  case rgpType.ItemIndex of
     1 : sType := '5Star';
     2 : sType := '3Star';
     3 : sType := 'B&B';
  end;

  case rgpSort.ItemIndex of
     0 : sSort1 := 'AccommodationID';
     1 : sSort1 := 'AccommodationName';
     2 : sSort1 := 'Price';
  end;

  case rgpOrder.ItemIndex  of
    0 : sOrder1 := 'ASC';
    1 : sOrder1 := 'DESC';
  end;


      with dmEuroTrekker do
        begin

            qryEuroTrekker.SQL.Clear;
            if bSearchByCountry then
            begin
             qryEuroTrekker.SQL.Add('SELECT AccommodationName, Price FROM tblAccommodation');
             qryEuroTrekker.SQL.Add('WHERE Type = "' + sType +'"');
             qryEuroTrekker.SQL.Add('AND CountryID = "' + sCountryID + '"');

             if (chkSearchByAccom.Checked) and (sSearchByName <> '') then
              qryEuroTrekker.SQL.Add('AND AccommodationName = "' + sSearchByName + '"');

             qryEuroTrekker.SQL.Add('AND Price BETWEEN ' + FloatToStr(rLowerbound1) + ' AND ' + FloatToStr(rUpperbound1));
             qryEuroTrekker.SQL.Add('ORDER BY ' + sSort1 + ' ' + sOrder1);

            end
            else
            begin
             qryEuroTrekker.SQL.Add('SELECT AccommodationName, Price, CountryName ');
             qryEuroTrekker.SQL.Add('FROM tblAccommodation AD, tblCountryInfo CI');
             qryEuroTrekker.SQL.Add('WHERE AD.CountryID = CI.CountryID');
             qryEuroTrekker.SQL.Add('AND Type = "' + sType +'"');

             if (chkSearchByAccom.Checked) and (sSearchByName <> '') then
              qryEuroTrekker.SQL.Add('AND AccommodationName = "' + sSearchByName + '"');

             qryEuroTrekker.SQL.Add('AND Price BETWEEN ' + FloatToStr(rLowerbound1) + ' AND ' + FloatToStr(rUpperbound1));
             qryEuroTrekker.SQL.Add('ORDER BY ' + sSort1 + ' ' + sOrder1);
            end;

            qryEuroTrekker.Open;
            TFloatField(qryEuroTrekker.FieldByName('Price')).Currency := True;
        end;

  with dbgEuroTrekker do
  begin
    if bSearchByCountry then
   begin
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;

    Columns[0].Width := 510;
    Columns[1].Width := 510;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    end
   else
   begin
    Height := 300;
    Left := 160;
    Top := 370;
    Width := 1020;


    Columns[0].Width := 340;
    Columns[1].Width := 340;
    Columns[2].Width := 340;

    Columns[0].Alignment := taCenter;
    Columns[0].Title.Alignment := taCenter;
    Columns[1].Alignment := taCenter;
    Columns[1].Title.Alignment := taCenter;
    Columns[2].Alignment := taCenter;
    Columns[2].Title.Alignment := taCenter;
   end;

  end;


  if rgpType.ItemIndex = 0 then
    begin
       DisplayAllAccommodation(sSort1, sOrder1);
       bSearchByCountry := False;
       lblSearchByCountryActiveAccom.Visible := False;
    end;


  pnlResultsAccom.Caption := IntToStr(dmEuroTrekker.qryEuroTrekker.RecordCount);
end;

procedure TfrmEuroTrekkerMain.rgpClassClick(Sender: TObject);
begin
 if (rgpClass.ItemIndex <> 0) and (bPriceAdded = False) then
 begin
  rgpSort2.Items.Add('Price');
  bPriceAdded := True;
 end
 else if (rgpClass.ItemIndex = 0) and (bPriceAdded = True) then
 begin
   rgpSort2.Items.Clear;
   rgpSort2.Items.Add('Country');
   rgpSort2.Items.Add('Name');
   bPriceAdded := False;
 end;
end;

end.
