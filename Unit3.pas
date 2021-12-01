unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, DB;

type
  TMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label8: TLabel;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;
    ChekNom, ChekSum,  CenaTov: String;

  usl: integer;
   uslugakod: string;
   a,b:double;

implementation

uses Unit1, Unit4, Unit2, Unit5;

{$R *.dfm}

procedure TMain.N1Click(Sender: TObject);
begin
Form1.show();
end;

procedure TMain.N2Click(Sender: TObject);
begin
Form4.show();
end;

procedure TMain.N3Click(Sender: TObject);
begin
Close;
end;

procedure TMain.Edit1Change(Sender: TObject);
begin
CenaTov:= IntToStr(Datamodule2.DataSourceTovari.DataSet.Fields[3].AsInteger * strtoint(edit1.text));
label8.caption:= 'Цена продажи(грн): ' + CenaTov;
end;



procedure TMain.DBLookupComboBox1Click(Sender: TObject);
begin
CenaTov:= IntToStr(Datamodule2.DataSourceTovari.DataSet.Fields[2].AsInteger * strtoint(edit1.text));

label8.caption:= 'Цена продажи(грн): ' + CenaTov;

Label5.Caption:= 'Цена за единицу (грн): ' +Datamodule2.DataSourceTovari.DataSet.Fields[2].AsString;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'INSERT INTO [Check] ( [Дата], [Загальна_ціна] )  Values (:dt, 0) ';
DataModule2.ADOWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule2.ADOWork.ExecSQL;

FormShow(Sender);

DataModule2.ADOWork.close;
DataModule2.ADOWork.SQL.Text:=' Select * From [Check] Order by [Check.Код_чека] ';
DataModule2.ADOWork.Open;

DataModule2.ADOWork.Last;
Cheknom:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
Label1.Caption:='Код №'+ChekNom;

DataModule2.ADOQProdaz.Close;
DataModule2.ADOQProdaz.SQL.Text:='SELECT Prodazi.Код_замовлення, Tovari.Назва, Prodazi.Ціна, Virobnik.ПІБ, Prodazi.Код_чека '
+ ' FROM Virobnik INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.Код_товару = Prodazi.Код_товару) ON Virobnik.Код_виробника = Tovari.Код_виробника '
+ ' WHERE (((Prodazi.Код_чека)= '+Cheknom+'))' ;
DataModule2.ADOQProdaz.open;
ChekSum:= '0';
label3.caption:= 'Сумма по чеку (грн): ' + ChekSum;

Panel2.Enabled:= true;


end;

procedure TMain.FormShow(Sender: TObject);
begin

DateTimePicker1.Date:=Now;

DataModule2.ADOQCheck.close;
DataModule2.ADOQCheck.SQL.text:=' Select * From [Check] order by Код_чека';
DataModule2.ADOQCheck.Open;

DBLookupComboBox1.KeyValue:= 1;
DBLookupComboBox2.KeyValue:= 1;
end;

procedure TMain.Button2Click(Sender: TObject);
begin

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'INSERT INTO Prodazi ( [Код_товару], [Ціна], [Кількість], [Код_чека], [Код_персоналу] ) '
 + ' Values ('+inttostr(DBLookupComboBox1.KeyValue)+', '+CenaTov+', '+edit1.text+','+Cheknom+' , '+inttostr(DBLookupComboBox2.KeyValue)+')';
DataModule2.ADOWork.ExecSQL;

DataModule2.ADOQProdaz.Close;
DataModule2.ADOQProdaz.SQL.Text:='SELECT Prodazi.Код_замовлення, Tovari.Назва, Prodazi.Ціна, Virobnik.ПІБ, Prodazi.Код_чека '
+ ' FROM Virobnik INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.Код_товару = Prodazi.Код_товару) ON Virobnik.Код_виробника = Tovari.Код_виробника '
+ ' WHERE (((Prodazi.Код_чека)= '+Cheknom+'))' ;
DataModule2.ADOQProdaz.open;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:=' Select Sum(Prodazi.[Ціна]) AS [Sum-Сума] FROM Prodazi GROUP BY Prodazi.[Код_чека] HAVING (((Prodazi.[Код_чека])= '+ChekNom+'))';
DataModule2.ADOWork.Open;
ChekSum:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
label3.caption:= 'Сумма по чеку(грн): ' + ChekSum;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:=' UPDATE [Check] SET Check.[Загальна_ціна] = '+ChekSum+' WHERE (((Check.[Код_чека])='+ChekNom+'))';
DataModule2.ADOWork.ExecSQL;

formshow(Sender);
end;

procedure TMain.Button3Click(Sender: TObject);
begin
DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:= 'Delete * from Prodazi Where Код_замовлення = '+DBGrid2.Fields[0].AsString+'';
DataModule2.ADOWork.ExecSQL;

DataModule2.ADOQProdaz.Close;
DataModule2.ADOQProdaz.SQL.Text:='SELECT Prodazi.Код_замовлення, Tovari.Назва, Prodazi.Ціна, Virobnik.ПІБ, Prodazi.Код_чека '
+ ' FROM Virobnik INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.Код_товару = Prodazi.Код_товару) ON Virobnik.Код_виробника = Tovari.Код_виробника '
+ ' WHERE (((Prodazi.Код_чека)= '+Cheknom+'))' ;
DataModule2.ADOQProdaz.open;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:=' Select Sum(Prodazi.[Ціна]) AS [Sum-Сума] FROM Prodazi GROUP BY Prodazi.[Код_чека] HAVING (((Prodazi.[Код_чека])= '+ChekNom+'))';
DataModule2.ADOWork.Open;
ChekSum:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
label3.caption:= 'Сумма по чеку(грн): ' + ChekSum;

DataModule2.ADOWork.Close;
DataModule2.ADOWork.SQL.Text:=' UPDATE [Check] SET Check.[Загальна_ціна] = '+ChekSum+' WHERE (((Check.[Код_чека])='+ChekNom+'))';
DataModule2.ADOWork.ExecSQL;

formshow(Sender);

end;

procedure TMain.Button4Click(Sender: TObject);
begin

DataModule2.ADOCheckREP.Close;
DataModule2.ADOCheckREP.SQL.Text:='SELECT Prodazi.Код_замовлення, Prodazi.Код_товару, Prodazi.Код_чека, Prodazi.Ціна, Tovari.Ціна_грн, Tovari.Назва, Personal.ПІБ, Check.Загальна_ціна, Check.Дата, Prodazi.Кількість '
+ ' FROM Tovari INNER JOIN (Personal INNER JOIN ([Check] INNER JOIN Prodazi ON Check.Код_чека = Prodazi.Код_чека) ON Personal.Код_персоналу = Prodazi.Код_персоналу) ON Tovari.Код_товару = Prodazi.Код_товару '
+ 'WHERE (((Prodazi.Код_чека)= '+Cheknom+'))' ;
DataModule2.ADOCheckREP.open;

CheckREP.QRLabel1.Caption:='Чек№:' + Cheknom;
CheckREP.QRLabel2.Caption:='Дата:' + DateToStr(DateTimePicker1.Date);
CheckREP.QRLabel3.Caption:='Менеджер:' + DBLookupComboBox2.Text;
CheckREP.QRLabel10.Caption:='Сумма по чеку:' + ChekSum;

CheckREP.QuickRep1.PreviewModal;
end;

end.
