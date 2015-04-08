unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMainForm = class(TForm)
    lblThisWindowsName: TLabel;
    lblTargetWindowsName: TLabel;
    edtThisWindowsName: TEdit;
    edtTargetWindowsName: TEdit;
    grbCopyData: TGroupBox;
    lblDwData: TLabel;
    edtDwData: TEdit;
    lblLpData: TLabel;
    edtLpData: TEdit;
    btnSendMessage: TButton;
    lblResult: TLabel;
    edtResult: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtThisWindowsNameExit(Sender: TObject);
    procedure btnSendMessageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WMCopyData(var msg: TWMCopyData); message WM_COPYDATA;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnSendMessageClick(Sender: TObject);
var
  receiverHandle: HWND;
  copyDataStruct : TCopyDataStruct;
  res: Integer;
begin
  receiverHandle := FindWindow('TMainForm', PChar(edtTargetWindowsName.Text));
  if receiverHandle = 0 then RaiseLastOSError;

  copyDataStruct.dwData := StrToInt(edtDwData.Text);
  copyDataStruct.cbData := (Length(edtLpData.Text) + 1) * SizeOf(Char);
  copyDataStruct.lpData := PChar(edtLpData.Text);

  res := SendMessage(receiverHandle, WM_COPYDATA, Integer(Handle), Integer(@copyDataStruct));
  CheckOSError(GetLastError);
  edtResult.Text := IntToStr(res);
end;

procedure TMainForm.edtThisWindowsNameExit(Sender: TObject);
begin
  Caption := edtThisWindowsName.Text;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  edtThisWindowsName.Text := Caption;
  edtTargetWindowsName.Text := Caption;
end;

procedure TMainForm.WMCopyData(var msg: TWMCopyData);
begin
  edtDwData.Text := IntToStr(msg.CopyDataStruct.dwData);
  edtLpData.Text := PChar(msg.CopyDataStruct.lpData);
  msg.Result := StrToInt(edtResult.Text);
end;

end.
