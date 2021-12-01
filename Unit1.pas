unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, DBCtrls, DB;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Button9: TButton;
    Button10: TButton;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Button11: TButton;
    Button12: TButton;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    DBGrid5: TDBGrid;
    Label7: TLabel;
    Edit6: TEdit;
    Button13: TButton;
    Button14: TButton;
    Label8: TLabel;
    Edit7: TEdit;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
   procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit6;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  DataModule2.ADOPersonal.Insert;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   DataModule2.ADOPersonal.Delete;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='0';
DBLookupComboBox1.KeyValue:=1;
Button3.Visible:=true;
Button4.Visible:=false;
Panel1.Visible:=true;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
begin
  Edit1.Text:=DBGrid1.Fields[1].AsString;
  Edit2.Text:=DBGrid1.Fields[3].AsString;
  Edit3.Text:=DBGrid1.Fields[2].AsString;
DataModule2.ADOBrend.Locate('Назва',DBGrid1.Fields[4].AsString,[loCaseInsensitive, loPartialKey]);  // !!!ОБРАТИ Внимание!!! Для того что бы добавить в таблицу "Меню" код категории
//нам нужно получить ключевое значение это категории, но у нас есть только ее название из DBGrid1 - третье поле. Для этого используется эта строка она ищет в ADOTable нужную запись по названию категории и переводит указатель на найденную запись
DBLookupComboBox1.KeyValue:= StrToInt(DataModule2.DataSourceBrend.DataSet.Fields[0].AsString);
Button3.Visible:=false;
Button4.Visible:=True;

Panel1.Visible:=true;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:='INSERT INTO Tovari ( [Назва], [Кількість_шт], [Ціна_грн], [Код_виробника] ) values ("'+Edit1.Text+'", "'+Edit2.Text+'", '+Edit3.Text+', '+IntToStr(DBLookupComboBox1.KeyValue)+')';
DataModule2.ADOWork.ExecSQL;

DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товару, Tovari.Назва, Tovari.Ціна_грн, Tovari.Кількість_шт, Virobnik.Назва '
+ ' FROM Virobnik INNER JOIN Tovari ON Virobnik.[Код_виробника] = Tovari.[Код_виробника] ORDER BY Tovari.Код_товару';
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='0';
DBLookupComboBox1.KeyValue:=1;
Button3.Visible:=true;
Button4.Visible:=false;
Panel1.Visible:=true;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товару, Tovari.Назва, Tovari.Ціна_грн, Tovari.Кількість_шт, Virobnik.Назва '
+ ' FROM Virobnik INNER JOIN Tovari ON Virobnik.[Код_виробника] = Tovari.[Код_виробника] where Tovari.Код_товару = '+Edit4.Text+' ORDER BY Tovari.Код_товару';
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товару, Tovari.Назва, Tovari.Ціна_грн, Tovari.Кількість_шт, Virobnik.Назва '
+ ' FROM Virobnik, Tovari Where Virobnik.[Код_виробника] = Tovari.[Код_виробника] ORDER BY Tovari.Код_товару';
DataModule2.ADOQTovari.Open;
Edit4.Text:='';
end;


procedure TForm1.Edit5Change(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товару, Tovari.Назва, Tovari.Ціна_грн, Tovari.Кількість_шт, Virobnik.Назва '
+ ' FROM Virobnik INNER JOIN Tovari ON Virobnik.[Код_виробника] = Tovari.[Код_виробника] where Tovari.Назва like "%'+Edit5.Text+'%" ORDER BY Tovari.Код_товару';
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товару, Tovari.Назва, Tovari.Ціна_грн, Tovari.Кількість_шт, Virobnik.Назва '
+ ' FROM Virobnik, Tovari Where Virobnik.[Код_виробника] = Tovari.[Код_виробника] ORDER BY Tovari.Код_товару';
DataModule2.ADOQTovari.Open;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'DELETE * FROM Tovari Where (Tovari.Код_товару = '+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOWork.ExecSQL;
FormShow(Sender);

end;


procedure TForm1.Button4Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:='UPDATE Tovari SET Tovari.Назва = "'+Edit1.Text+'", Tovari.Код_виробника = "'+IntToStr(DBLookupComboBox1.KeyValue)+'", Tovari.Кількість_шт = "'+Edit2.Text+'", Tovari.Ціна_грн = '+Edit3.Text+' '
+' WHERE (((Tovari.Код_товару)='+DBGrid1.Fields[0].AsString+'))';
DataModule2.ADOWork.ExecSQL;
FormShow(Sender);
panel1.Visible:=False;

end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  DataModule2.ADOBrend.Insert;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 DataModule2.ADOBrend.Delete;
end;



procedure TForm1.Button13Click(Sender: TObject);
begin
DataModule2.ADOQProdaz2.Close;
DataModule2.ADOQProdaz2.SQL.Text:= 'SELECT Prodazi.Код_замовлення, Prodazi.Код_товару, Prodazi.Ціна, Prodazi.Кількість, Prodazi.Код_чека, Prodazi.Код_персоналу '
+ 'FROM Prodazi where Prodazi.Код_замовлення = '+Edit6.Text+' ORDER BY Prodazi.Код_замовлення';
DataModule2.ADOQProdaz2.Open;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
DataModule2.ADOQProdaz2.Close;
DataModule2.ADOQProdaz2.SQL.Text:= 'SELECT Prodazi.Код_замовлення, Prodazi.Код_товару, Prodazi.Ціна, Prodazi.Кількість, Prodazi.Код_чека, Prodazi.Код_персоналу '
+ 'FROM Prodazi';
DataModule2.ADOQProdaz2.Open;
Edit6.Text:='';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
DataModule2.ADOQCheck.Close;
DataModule2.ADOQCheck.SQL.Text:= 'SELECT Check.Код_чека, Check.Дата, Check.Загальна_ціна '
+ ' FROM [Check] where Check.Код_чека = '+Edit7.Text+' Order by Check.Код_чека';
DataModule2.ADOQCheck.Open;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
DataModule2.ADOQCheck.Close;
DataModule2.ADOQCheck.SQL.Text:= 'SELECT Check.Код_чека, Check.Дата, Check.Загальна_ціна '
+ ' FROM [Check]';
DataModule2.ADOQCheck.Open;
Edit7.Text:= '';
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
DataModule2.ADOQTovari.Close;
DataModule2.ADOQTovari.SQL.Text:= 'SELECT Tovari.Код_товару, Tovari.Назва, Tovari.Ціна_грн, Tovari.Кількість_шт, Virobnik.Назва '
+ ' FROM Virobnik INNER JOIN Tovari ON Virobnik.[Код_виробника] = Tovari.[Код_виробника] ORDER BY Tovari.Код_товару';
DataModule2.ADOQTovari.Open;

TovariOtchet.QuickRep1.PreviewModal;
end;

end.
