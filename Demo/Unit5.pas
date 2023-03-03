unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CalculoTributario, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits;

type
  TForm5 = class(TForm)
    DTTributo1: TDTTributo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edtTotalProdutos: TJvCalcEdit;
    edtDespesa: TJvCalcEdit;
    edtfrete: TJvCalcEdit;
    edtDesconto: TJvCalcEdit;
    edtAliqOrigem: TJvCalcEdit;
    edtBaseIcms: TJvCalcEdit;
    edtAliqIcms: TJvCalcEdit;
    edtAliqReducao: TJvCalcEdit;
    edtValorIcms: TJvCalcEdit;
    Panel1: TPanel;
    edtCST: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    edtBIcmsST: TJvCalcEdit;
    edtAliqST: TJvCalcEdit;
    edtMVa: TJvCalcEdit;
    edtValorST: TJvCalcEdit;
    edtTotal: TJvCalcEdit;
    edtValorIPI: TJvCalcEdit;
    edtAliqIPI: TJvCalcEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    edtMvaAjustado: TJvCalcEdit;
    CheckBox1: TCheckBox;
    Panel5: TPanel;
    edtAliqPis: TJvCalcEdit;
    edtBasePiscofins: TJvCalcEdit;
    edtAliqCofins: TJvCalcEdit;
    edtValorPis: TJvCalcEdit;
    edtValorCofins: TJvCalcEdit;
    edtValorDIFAL: TJvCalcEdit;
    edtAliqDIFAL: TJvCalcEdit;
    Panel6: TPanel;
    edtValorFCP: TJvCalcEdit;
    edtAliqFCP: TJvCalcEdit;
    edtValorFCPST: TJvCalcEdit;
    edtAliqFCPST: TJvCalcEdit;
    JvDBGrid1: TJvDBGrid;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
ok:Boolean;
begin
      if ComboBox1.ItemIndex=0 then
      begin
      DTTributo1.TipoClienteForn := pCFisica;
      end else begin
      DTTributo1.TipoClienteForn := pCJuridica;
      end;

      if CheckBox2.Checked then
      begin
           DTTributo1.HabilitaDIFAL := true;
      end else begin
           DTTributo1.HabilitaDIFAL := False;
      end;

      DTTributo1.CRT             := '3';
      DTTributo1.TipoNF          := tpCSaida;
      DTTributo1.CST             := DTTributo1.StrToCSTICMS(ok,edtcst.Text);
      if CheckBox1.Checked then
      DTTributo1.CalculoVeiculo  := True;
      DTTributo1.CustoVeiculo    := 40;

      // Icms
      DTTributo1.ValorProdutos   := edtTotalProdutos.Value;
      DTTributo1.Desconto        := edtDesconto.Value;
      DTTributo1.Despesa         := edtDespesa.Value;
      DTTributo1.Frete           := edtfrete.Value;
      DTTributo1.AliqIcms        := edtAliqIcms.Value;
      DTTributo1.AliqOrigem      := edtAliqOrigem.Value;
      DTTributo1.AliqReducaoBC   := edtAliqReducao.Value;

      // ipi
      DTTributo1.AliqIPI         := edtAliqIPI.Value;

      // icms st
      DTTributo1.ModalidadeST    := tmMargemValorAgregado;
      DTTributo1.AliqIcmsST      := edtAliqST.Value;
      DTTributo1.Mva             := edtMVa.Value;

      // Pis Cofins
      DTTributo1.CstPisCofins    := Ppis01;
      DTTributo1.AliqPis         := edtAliqPis.Value;
      DTTributo1.AliqCofins      := edtAliqCofins.Value;

      // FCP
      DTTributo1.AliqFCP         := edtAliqFCP.Value;
      DTTributo1.AliqFCPST       := edtAliqFCPST.Value;

      DTTributo1.Calcular;

      edtBaseIcms.Value      := DTTributo1.BaseIcms;
      edtValorIcms.Value     := DTTributo1.ValorIcms;
      edtBIcmsST.Value       := DTTributo1.BaseIcmsST;
      edtValorST.Value       := DTTributo1.ValorIcmsST;
      edtValorIPI.Value      := DTTributo1.ValorIPI;
      edtAliqIPI.Value       := DTTributo1.AliqIPI;
      edtMvaAjustado.Value   := DTTributo1.MvaAjustado;

      if DTTributo1.CalculoVeiculo then
      edtAliqReducao.Value   :=  DTTributo1.AliqReducaoBC;

      edtBasePiscofins.Value := DTTributo1.BasePisCofins;
      edtValorPis.Value      := DTTributo1.ValorPis;
      edtValorCofins.Value   := DTTributo1.ValorCofins;
      edtAliqDIFAL.Value     := DTTributo1.AliqDIFAL;
      edtValorDIFAL.Value    := DTTributo1.ValorDIFALDestinatario;
      edtValorFCP.Value      := DTTributo1.ValorFCP;
      edtValorFCPST.Value    := DTTributo1.ValorFCPST;

      // total geral
      edtTotal.Value         := DTTributo1.ValorProdutos +
                                DTTributo1.ValorIcmsST   +
                                DTTributo1.ValorIPI      +
                                DTTributo1.ValorFCPST    +
                                DTTributo1.Despesa       +
                                DTTributo1.Frete         -
                                DTTributo1.Desconto;

end;

end.
