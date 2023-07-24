unit demolaz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  DBGrids, JvBaseEdits, CalculoTributario;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    DTTributo1: TDTTributo;
    edtAliqCofins: TJvCalcEdit;
    edtAliqDIFAL: TJvCalcEdit;
    edtAliqFCP: TJvCalcEdit;
    edtAliqFCPST: TJvCalcEdit;
    edtAliqIcms: TJvCalcEdit;
    edtAliqIPI: TJvCalcEdit;
    edtAliqOrigem: TJvCalcEdit;
    edtAliqPis: TJvCalcEdit;
    edtAliqReducao: TJvCalcEdit;
    edtAliqST: TJvCalcEdit;
    edtBaseIcms: TJvCalcEdit;
    edtBasePiscofins: TJvCalcEdit;
    edtBIcmsST: TJvCalcEdit;
    edtCST: TEdit;
    edtDesconto: TJvCalcEdit;
    edtDespesa: TJvCalcEdit;
    edtfrete: TJvCalcEdit;
    edtMVa: TJvCalcEdit;
    edtMvaAjustado: TJvCalcEdit;
    edtTotal: TJvCalcEdit;
    edtTotalProdutos: TJvCalcEdit;
    edtValorCofins: TJvCalcEdit;
    edtValorDIFAL: TJvCalcEdit;
    edtValorFCP: TJvCalcEdit;
    edtValorFCPST: TJvCalcEdit;
    edtValorIcms: TJvCalcEdit;
    edtValorIPI: TJvCalcEdit;
    edtValorPis: TJvCalcEdit;
    edtValorST: TJvCalcEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
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
    Label3: TLabel;
    Label30: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
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

