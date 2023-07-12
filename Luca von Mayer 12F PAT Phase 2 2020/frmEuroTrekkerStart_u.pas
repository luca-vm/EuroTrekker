unit frmEuroTrekkerStart_u;    // Coded by Luca von Mayer 12F PAT 2020 Parktown Boys' High School

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Math, Buttons,
  dmEuroTrekker_u, clsBusinessAccess_u;

type
  TfrmEuroTrekkerStart = class(TForm)
    imgBackground: TImage;
    pnlLogin: TPanel;
    lblUsername: TLabel;
    lblLogin: TLabel;
    lblPassword: TLabel;
    lblNew: TLabel;
    lblCreate: TLabel;
    lblRepeatPassword: TLabel;
    lblName: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogin: TButton;
    edtRepeatPassword: TEdit;
    edtName: TEdit;
    btnClose: TBitBtn;
    chkBusiness: TCheckBox;
    lblBusiness: TLabel;
    procedure lblCreateClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
     objBusinessAccess : TBusinessAccess;

     procedure MakeRounded(Control: TWinControl);
  public
   sLoginUsername  : string;
   bActive : Boolean;
  end;

var
  frmEuroTrekkerStart: TfrmEuroTrekkerStart;

implementation

uses frmEuroTrekkerMain_u;

{$R *.dfm}

procedure TfrmEuroTrekkerStart.MakeRounded(Control: TWinControl);   //Borrowed code: https://www.swissdelphicenter.ch/en/showcode.php?id=921
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
procedure TfrmEuroTrekkerStart.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmEuroTrekkerStart.btnLoginClick(Sender: TObject);
var
 sPassword,sUsername, sFullname, sRepeatedPassword,  sLoginPassword : string;
  K, L :  Integer;
  bContainsLetter, bContainsDigit, bCorrectUsername, bCorrectPassword : Boolean;
begin
 bContainsLetter := False;
 bContainsDigit := False;
 bCorrectUsername := bCorrectUsername;
 bCorrectPassword :=  bCorrectUsername;

 if edtRepeatPassword.Visible = False then
 begin
   //Login
  sLoginUsername := edtUsername.Text;
  sLoginPassword := edtPassword.Text;

  with dmEuroTrekker do
    begin
      if tblAccounts.Locate('Username',sLoginUsername,[]) then
      begin
        bCorrectUsername := True;

        if  tblAccounts['Password'] = sLoginPassword then
        begin
          bCorrectPassword := True
        end
        else
        begin
          MessageDlg('Incorrect password, please re-enter',mtError,[mbOK],0);
          edtPassword.Clear;
          edtPassword.SetFocus;
          Exit;
        end;
      end
       else
        begin
          MessageDlg('Incorrect username, please re-enter',mtError,[mbOK],0);
          edtUsername.Clear;
          edtUsername.SetFocus;
          Exit;
        end;

        end;
    end;

  if (bCorrectUsername = True) and (bCorrectPassword = True)then
  begin
   MessageDlg('Login successful!',mtInformation,[mbOK],0);

   Sleep(1000);

   frmEuroTrekkerStart.Hide;
   frmEuroTrekkerMain.Show;

  end
 else
 begin
  sFullName := edtName.Text;
  sPassword := edtPassword.Text;
  sRepeatedPassword := edtRepeatPassword.Text;
  sUsername := edtUsername.Text;

    //Validation of Name
    if sFullName = '' then
        begin
         MessageDlg('All fields are compulsory, please enter name.',mtError,[mbOK],0);
         edtName.Clear;
         edtName.SetFocus;
         Exit;
        end;

   for K := 1 to Length(sFullName) do
     begin
       if not((sFullName[K] in['A'..'Z']) or (sFullName[K] in['a'..'z']) or (sFullName[K] = ' '))  then
       begin
        MessageDlg('The name you entered contains numbered digits or symbols, please re-enter.',mtError,[mbOK],0);
        edtName.Clear;
        edtName.SetFocus;
        Exit;
       end;

       if (sFullName[K] = ' ') and (sFullName[K+1] = ' ') then
       begin
        MessageDlg('The name you entered contains a double space, please re-enter.',mtError,[mbOK],0);
        edtName.Clear;
        edtName.SetFocus;
        Exit;
       end;

     end;


   //Validation of Password
   if (sPassword = '') or (sRepeatedPassword = '')then
        begin
         MessageDlg('All fields are compulsory, please enter password.',mtError,[mbOK],0);
         edtPassword.Clear;
         edtRepeatPassword.Clear;
         edtPassword.SetFocus;
         Exit;
        end;
   if Length(sPassword) < 8 then
    begin
     MessageDlg('Password has to be 8 or more characters, please re-enter',mtError,[mbOK],0);
     edtPassword.Clear;
     edtRepeatPassword.Clear;
     edtPassword.SetFocus;
     Exit;
    end;

   for L := 1 to Length(sPassword) do
     begin
       if (sPassword[L] in['A'..'Z']) or (sPassword[L] in['a'..'z']) then
        bContainsLetter := True;

       if sPassword[L] in['0'..'9']  then
          bContainsDigit := True;
     end;

   if not((bContainsLetter = True) and (bContainsDigit = True)) then
        begin
          MessageDlg('Password has to contain atleast 1 letter and 1 number, please re-enter',mtError,[mbOK],0);
          edtPassword.Clear;
          edtRepeatPassword.Clear;
          edtPassword.SetFocus;
          Exit;
        end;

   if not(edtPassword.Text = edtRepeatPassword.Text) then
    begin
      MessageDlg('Passwords do not match, please re-enter.',mtError,[mbOK],0);
      edtPassword.Clear;
      edtRepeatPassword.Clear;
      edtPassword.SetFocus;
      Exit;
    end;

   //Validation of Username
   if sUsername = '' then
        begin
         MessageDlg('All fields are compulsory, please enter username.',mtError,[mbOK],0);
         edtUsername.Clear;
         edtUsername.SetFocus;
         Exit;
        end;

   if Length(sUsername) > 10 then
     begin
      MessageDlg('Username cannot be more than 1o characters, please enter username.',mtError,[mbOK],0);
      edtUsername.Clear;
      edtUsername.SetFocus;
      Exit;
     end;


   //Add to the account database
    with dmEuroTrekker do
    begin
      tblAccounts.Open;
      tblAccounts.Last;
      tblAccounts.Insert;
      tblAccounts['FullName'] := sFullName;
      tblAccounts['Username'] := sUsername;
      tblAccounts['Password'] := sPassword;
      tblAccounts['BankCardNumber'] := '0';
      tblAccounts.Post;

    end;

   MessageDlg('Account created!',mtInformation,[mbOK],0);
 end;

    if chkBusiness.Checked then
  bActive := True;


   if chkBusiness.Checked = True then
  begin
    objBusinessAccess := TBusinessAccess.Create(sLoginUsername);
  end;




end;

procedure TfrmEuroTrekkerStart.FormActivate(Sender: TObject);
begin
  MakeRounded(pnlLogin);
end;

procedure TfrmEuroTrekkerStart.lblCreateClick(Sender: TObject);
begin
  if lblRepeatPassword.Visible = False then
 begin
  lblRepeatPassword.Visible := True;
  lblNew.Visible := False;
  btnLogin.Caption := 'Create account';
  lblLogin.Caption := 'Create account';
  lblCreate.Caption := 'Return to login';
  edtRepeatPassword.Visible := True;
  lblName.Visible := True;
  edtName.Visible := True;
  chkBusiness.Visible := False;
  lblBusiness.Visible := False;


  with edtRepeatPassword do
    begin
      Top := 168;
      Left := 120;
      Height := 21;
      Width := 121;
    end;

  with lblRepeatPassword do
    begin
      Left := 8;
      Height := 15;
      Width := 95;
      Top := 168;
      Caption := 'Repeat Password:';
      Font.Color := clWhite;
      Font.Name := 'Times New Roman';
      Font.Size := 10;
    end;

  with edtName do
    begin
      Top := 56;
      Left := 120;
      Height := 21;
      Width := 121;
    end;

  with lblName do
    begin
      Left := 8;
      Height := 15;
      Width := 95;
      Top := 56;
      Caption := 'Full Name:';
      Font.Color := clWhite;
      Font.Name := 'Times New Roman';
      Font.Size := 10;
    end;

  edtName.SetFocus;
  lblUsername.Top := 93;
  edtUsername.Top := 93;
  edtPassword.Top := 130;
  lblPassword.Top := 130;
  btnLogin.Top := 195;
 end
 else
 begin
  lblRepeatPassword.Visible := False;
  lblNew.Visible := True;
  btnLogin.Caption := 'Login';
  lblLogin.Caption := '         Login';
  lblCreate.Caption := 'Create account';
  edtRepeatPassword.Visible := False;
  lblName.Visible := False;
  edtName.Visible := False;
  chkBusiness.Visible := True;
  lblBusiness.Visible := True;

  with btnLogin do
    begin
      Left := 75;
      Width := 97;
      Height := 25;
      Top := 160;
    end;

  with lblUsername do
    begin
      Left := 8;
      Width := 56;
      Height := 16;
      Top := 64;
    end;

  with lblPassword do
    begin
      Left := 8;
      Width := 50;
      Height := 16;
      Top := 112;
    end;

  with edtUsername do
    begin
      Left := 120;
      Width := 121;
      Height := 21;
      Top := 64;
    end;

  with edtPassword do
    begin
      Left := 120;
      Width := 121;
      Height := 21;
      Top := 112;
    end;


 end;
end;

end.
