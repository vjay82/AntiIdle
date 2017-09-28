unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Windows;

type

  { TForm1 }

  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    movement: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  movement := 1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
//var
// point: TPoint;
begin
  //GetCursorPos( point);
  //point.x := point.x + movement;
  //SetCursorPos(point.x,point.y);
  mouse_event( MOUSEEVENTF_MOVE, movement, 0, 0, 0);
  movement := movement * -1;
  keybd_event( VK_NUMLOCK,
                      $45,
                      KEYEVENTF_EXTENDEDKEY or 0,
                      0 );

  keybd_event( VK_NUMLOCK,
                      $45,
                      KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP,
                      0);
end;

end.

