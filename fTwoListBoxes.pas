<<<<<<< HEAD
unit fTwoListBoxes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Types, FMX.Controls, FMX.Forms,
  FMX.Graphics, FMX.Dialogs, FMX.Layouts, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    LeftListBox: TListBox;
    RightListBox: TListBox;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    procedure LeftListBoxDragOver(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF;
      var Operation: TDragOperation);
    procedure LeftListBoxDragDrop(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF);
    procedure Edit1MouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift: TShiftState;
      X, Y: Single);
    procedure Button1Click(Sender: TObject);
    procedure RightListBoxMouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift: TShiftState;
      X, Y: Single);
    procedure RightListBoxDragOver(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF;
      var Operation: TDragOperation);
    procedure RightListBoxDragDrop(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  FMX.Platform;

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  LeftListBox.Items.Add('Constant Button');
end;

procedure TForm2.Edit1MouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift: TShiftState;
  X, Y: Single);
var
  Svc: IFMXDragDropService;
  DragData: TDragObject;
  DragImage: TBitmap;
begin
  if not Edit1.Text.IsEmpty and TPlatformServices.Current.SupportsPlatformService(IFMXDragDropService, Svc) then
  begin
    DragData.Source := Sender;
    try
      DragData.Data := Edit1.Text;
      DragImage := Edit1.MakeScreenshot;
      Svc.BeginDragDrop(
        Self,
        DragData,
        DragImage);
    finally
      DragImage.Free;
    end;
  end;
end;

procedure TForm2.LeftListBoxDragDrop(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF);
begin
  LeftListBox.Items.Add(Data.Data.AsString);
  RightListBox.Items.Delete(RightListBox.ItemIndex);
end;

procedure TForm2.LeftListBoxDragOver(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF;
  var Operation: TDragOperation);
begin
  Operation := TDragOperation.Move;
end;

procedure TForm2.RightListBoxDragDrop(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF);
begin
  RightListBox.Items.Add(Data.Data.AsString);
end;

procedure TForm2.RightListBoxDragOver(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF;
  var Operation: TDragOperation);
begin
  Operation := TDragOperation.Move;
end;

procedure TForm2.RightListBoxMouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift: TShiftState;
  X, Y: Single);
var
  Svc: IFMXDragDropService;
  DragData: TDragObject;
  DragImage: TBitmap;

begin
  if (RightListBox.ItemIndex >= 0) and TPlatformServices.Current.SupportsPlatformService(IFMXDragDropService, Svc) then
  begin
    DragData.Source := RightListBox;
    try
      DragData.Data := RightListBox.ItemByIndex(RightListBox.ItemIndex).Text;
      DragImage := RightListBox.ItemByIndex(RightListBox.ItemIndex).MakeScreenshot;
      Svc.BeginDragDrop(
        Self,
        DragData,
        DragImage);
    finally
      DragImage.Free;
    end;
  end;

end;

<<<<<<< HEAD
end.
=======
end.
=======
unit fTwoListBoxes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Types, FMX.Controls, FMX.Forms,
  FMX.Graphics, FMX.Dialogs, FMX.Layouts, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    LeftListBox: TListBox;
    RightListBox: TListBox;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    procedure LeftListBoxDragOver(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF;
      var Operation: TDragOperation);
    procedure LeftListBoxDragDrop(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF);
    procedure Edit1MouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift: TShiftState;
      X, Y: Single);
    procedure Button1Click(Sender: TObject);
    procedure RightListBoxMouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift: TShiftState;
      X, Y: Single);
    procedure RightListBoxDragOver(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF;
      var Operation: TDragOperation);
    procedure RightListBoxDragDrop(
      Sender: TObject;
      const Data: TDragObject;
      const Point: TPointF);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  FMX.Platform;

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  LeftListBox.Items.Add('Constant Button');
end;

procedure TForm2.Edit1MouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift: TShiftState;
  X, Y: Single);
var
  Svc: IFMXDragDropService;
  DragData: TDragObject;
  DragImage: TBitmap;
begin
  if not Edit1.Text.IsEmpty and TPlatformServices.Current.SupportsPlatformService(IFMXDragDropService, Svc) then
  begin
    DragData.Source := Sender;
    try
      DragData.Data := Edit1.Text;
      DragImage := Edit1.MakeScreenshot;
      Svc.BeginDragDrop(
        Self,
        DragData,
        DragImage);
    finally
      DragImage.Free;
    end;
  end;
end;

procedure TForm2.LeftListBoxDragDrop(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF);
begin
  LeftListBox.Items.Add(Data.Data.AsString);
  RightListBox.Items.Delete(RightListBox.ItemIndex);
end;

procedure TForm2.LeftListBoxDragOver(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF;
  var Operation: TDragOperation);
begin
  Operation := TDragOperation.Move;
end;

procedure TForm2.RightListBoxDragDrop(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF);
begin
  RightListBox.Items.Add(Data.Data.AsString);
end;

procedure TForm2.RightListBoxDragOver(
  Sender: TObject;
  const Data: TDragObject;
  const Point: TPointF;
  var Operation: TDragOperation);
begin
  Operation := TDragOperation.Move;
end;

procedure TForm2.RightListBoxMouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift: TShiftState;
  X, Y: Single);
var
  Svc: IFMXDragDropService;
  DragData: TDragObject;
  DragImage: TBitmap;

begin
  if (RightListBox.ItemIndex >= 0) and TPlatformServices.Current.SupportsPlatformService(IFMXDragDropService, Svc) then
  begin
    DragData.Source := RightListBox;
    try
      DragData.Data := RightListBox.ItemByIndex(RightListBox.ItemIndex).Text;
      DragImage := RightListBox.ItemByIndex(RightListBox.ItemIndex).MakeScreenshot;
      Svc.BeginDragDrop(
        Self,
        DragData,
        DragImage);
    finally
      DragImage.Free;
    end;
  end;

end;

end.
>>>>>>> 4566a6f2e28ca45c98c80ccc91c8d06eb6b3f973
>>>>>>> ce7e69db2817fc4ec826bacfd847e7055987b2ba
