unit CalculoTributario;

interface

uses
  System.SysUtils, System.Classes;

type TCSts         = ( pi000, pi010, pi020, pi030, pi040, pi050, pi051, pi060, pi070, pi090, pi101, pi102, pi103, pi201, pi202, pi203, pi300, pi400, pi500, pi900 );
type TCstPisCofins = ( Ppis01 ,Ppis02, Ppis03, Ppis04, Ppis05, Ppis06, Ppis07, Ppis08, Ppis09, Ppis49, Ppis50, Ppis51, Ppis52, Ppis53, Ppis54, Ppis55, Ppis56, Ppis60, Ppis61, Ppis62, Ppis63, Ppis64, Ppis65, Ppis66, Ppis67, Ppis70, Ppis71, Ppis72, Ppis73, Ppis74, Ppis75, Ppis98, Ppis99 );
type TTipoPessoa   = ( pCFisica, pCJuridica );
type TTpNF         = ( tpCSaida, tpCEntrada );
type TpModalidade  = ( tmValorOperacao, tmPauta, tmMargemValorAgregado );

type
  TDTTributo = class(TComponent)
  private
    FAliqReducaoBC: Currency;
    FCalculoVeiculo: Boolean;
    FValorIPI: Currency;
    FMvaAjustado: Currency;
    FValorIcmsST: Currency;
    FDesconto: Currency;
    FCstPisCofins: TCstPisCofins;
    FAliqDestino: Currency;
    FAliqInternaUFOrigem: Currency;
    FValorFCPST: Currency;
    FAliqIPI: Currency;
    FValorReducaoIcmsST: Currency;
    FAliqOrigem: Currency;
    FAliqIcmsST: Currency;
    FTipoNF: TTpNF;
    FHabilitaDIFAL: Boolean;
    FMva: Currency;
    FAliqFCPST: Currency;
    FUFDestinatario: string;
    FValorIcms: Currency;
    FModalidadeST: TpModalidade;
    FTipoPessoa: TTipoPessoa;
    FAliqIcmsSTPauta: Currency;
    FValorDIFALDestinatario: Currency;
    FValorFCP: Currency;
    FAliqValorFCPRet: Currency;
    FValorReducaoIcms: Currency;
    FAliqIcms: Currency;
    FAliqDIFAL: Currency;
    FBaseIPI: Currency;
    FBaseIcmsST: Currency;
    FAliqFCP: Currency;
    FValorPis: Currency;
    FUFEmitente: string;
    FAliqFCPRet: Currency;
    FValorCofins: Currency;
    FCustoVeiculo: Currency;
    FAbaterIcmsDaBasePisCofins: Boolean;
    FFrete: Currency;
    FCRT: string;
    FDespesa: Currency;
    FValorProdutos: Currency;
    FCST: TCSts;
    FAliqPis: Currency;
    FBasePisCofins: Currency;
    FAliqCofins: Currency;
    FBaseIcms: Currency;
    procedure setAbaterIcmsDaBasePisCofins(const Value: Boolean);
    procedure setAliqCofins(const Value: Currency);
    procedure setAliqDestino(const Value: Currency);
    procedure setAliqDIFAL(const Value: Currency);
    procedure setAliqFCPRet(const Value: Currency);
    procedure setAliqFCPST(const Value: Currency);
    procedure setAliqIcms(const Value: Currency);
    procedure setAliqIcmsST(const Value: Currency);
    procedure setAliqIcmsSTPauta(const Value: Currency);
    procedure setAliqInternaUFOrigem(const Value: Currency);
    procedure setAliqIPI(const Value: Currency);
    procedure setAliqOriem(const Value: Currency);
    procedure setAliqPIs(const Value: Currency);
    procedure setAliqReducaoST(const Value: Currency);
    procedure setAliqValorFCPRet(const Value: Currency);
    procedure setBaseIcms(const Value: Currency);
    procedure setBaseIcmsST(const Value: Currency);
    procedure setBaseIPI(const Value: Currency);
    procedure setBasePisCofins(const Value: Currency);
    procedure setCalculoVeiculo(const Value: Boolean);
    procedure setCRT(const Value: string);
    procedure setCST(const Value: TCSts);
    procedure setCstPisCofins(const Value: TCstPisCofins);
    procedure setCustoVeiculo(const Value: Currency);
    procedure setDesconto(const Value: Currency);
    procedure setDespesa(const Value: Currency);
    procedure setFCP(const Value: Currency);
    procedure setFrete(const Value: Currency);
    procedure setHabilitaDIFAL(const Value: Boolean);
    procedure setModalidadeST(const Value: TpModalidade);
    procedure setMva(const Value: Currency);
    procedure setMvaAjustado(const Value: Currency);
    procedure setTipoNF(const Value: TTpNF);
    procedure setTipoPessoa(const Value: TTipoPessoa);
    procedure setUFDestinatario(const Value: string);
    procedure setUFEmitente(const Value: string);
    procedure setValorCofins(const Value: Currency);
    procedure setValorDIFALDestinatario(const Value: Currency);
    procedure setValorFCP(const Value: Currency);
    procedure setValorFCPST(const Value: Currency);
    procedure setValorIcms(const Value: Currency);
    procedure setValorIcmsST(const Value: Currency);
    procedure setValorIPI(const Value: Currency);
    procedure setValorPis(const Value: Currency);
    procedure setValorProdutos(const Value: Currency);
    procedure setValorReducaoIcms(const Value: Currency);
    procedure setValorReducaoIcmsST(const Value: Currency);

  protected

  public
    function StrToEnumerado(out ok: boolean; const s: string; const AString:array of string; const AEnumerados: array of variant): variant;
    function StrToCSTICMS(out ok: boolean; const s: string): TCSts;
    function StrToCSTPisCofins(out ok:Boolean; const s: string): TCstPisCofins;
    Function FormataValor(Valor:Extended;Casas:Integer):extended;
    procedure ZeraValores;
    function Calcular:TDTTributo;

  published
    property CST: TCSts                        read FCST                       write setCST;
    property ValorProdutos:Currency            read FValorProdutos             write setValorProdutos;
    property Desconto:Currency                 read FDesconto                  write setDesconto;
    property Despesa:Currency                  read FDespesa                   write setDespesa;
    property Frete:Currency                    read FFrete                     write setFrete;
    // calculo icms
    property CalculoVeiculo:Boolean            read FCalculoVeiculo            write setCalculoVeiculo default False;
    property CustoVeiculo:Currency             read FCustoVeiculo              write setCustoVeiculo;
    property BaseIcms:Currency                 read FBaseIcms                  write setBaseIcms;
    property ValorIcms:Currency                read FValorIcms                 write setValorIcms;
    property AliqIcms:Currency                 read FAliqIcms                  write setAliqIcms;
    property AliqReducaoBC:Currency            read FAliqReducaoBC             write setAliqReducaoST;
    property ValorReducaoIcms:Currency         read FValorReducaoIcms          write setValorReducaoIcms;
    // calculo St
    property BaseIcmsST:Currency               read FBaseIcmsST                write setBaseIcmsST;
    property AliqIcmsST:Currency               read FAliqIcmsST                write setAliqIcmsST;
    property ValorIcmsST:Currency              read FValorIcmsST               write setValorIcmsST;
    property Mva:Currency                      read FMva                       write setMva;
    property MvaAjustado:Currency              read FMvaAjustado               write setMvaAjustado;
    property AliqOrigem:Currency               read FAliqOrigem                write setAliqOriem;
    property AliqDestino:Currency              read FAliqDestino               write setAliqDestino;
    property ModalidadeST:TpModalidade         read FModalidadeST              write setModalidadeST;
    property ValorReducaoIcmsST:Currency       read FValorReducaoIcmsST        write setValorReducaoIcmsST;
    property AliqIcmsSTPauta:Currency          read FAliqIcmsSTPauta           write setAliqIcmsSTPauta;
    // dados UF Cliente / Destinatario
    property TipoClienteForn:TTipoPessoa       read FTipoPessoa                write setTipoPessoa;
    property TipoNF:TTpNF                      read FTipoNF                    write setTipoNF;
    property UFEmitente:string                 read FUFEmitente                write setUFEmitente;
    property UFDestinatario:string             read FUFDestinatario            write setUFDestinatario;
    property CRT:string                        read FCRT                       write setCRT;
    // calculo Ipi
    property BaseIPI:Currency                  read FBaseIPI                   write setBaseIPI;
    property AliqIPI:Currency                  read FAliqIPI                   write setAliqIPI;
    property ValorIPI:Currency                 read FValorIPI                  write setValorIPI;
    // calculo Pis / Cofins
    property CstPisCofins : TCstPisCofins      read FCstPisCofins              write setCstPisCofins;
    property AbaterIcmsDaBasePisCofins:Boolean read FAbaterIcmsDaBasePisCofins write setAbaterIcmsDaBasePisCofins;
    property BasePisCofins:Currency            read FBasePisCofins             write setBasePisCofins;
    property AliqPis:Currency                  read FAliqPis                   write setAliqPIs;
    property ValorPis:Currency                 read FValorPis                  write setValorPis;
    property AliqCofins:Currency               read FAliqCofins                write setAliqCofins;
    property ValorCofins:Currency              read FValorCofins               write setValorCofins;
    // calculo FCP - FCPST - FCPRet
    property AliqFCP:Currency                  read FAliqFCP                   write setFCP;
    property ValorFCP:Currency                 read FValorFCP                  write setValorFCP;
    property AliqFCPST:Currency                read FAliqFCPST                 write setAliqFCPST;
    property ValorFCPST:Currency               read FValorFCPST                write setValorFCPST;
    property AliqFCPRet:Currency               read FAliqFCPRet                write setAliqFCPRet;
    property ValorFCPRet:Currency              read FAliqValorFCPRet           write setAliqValorFCPRet;
    // calculo DIFAL
    property HabilitaDIFAL:Boolean             read FHabilitaDIFAL             write setHabilitaDIFAL default True;
    property AliqDIFAL:Currency                read FAliqDIFAL                 write setAliqDIFAL;
    property AliqInternaUFOrigem:Currency      read FAliqInternaUFOrigem       write setAliqInternaUFOrigem;
    property ValorDIFALDestinatario:Currency   read FValorDIFALDestinatario    write setValorDIFALDestinatario;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('DT Inovacao', [TDTTributo]);
end;

{ TDTTributo }

function TDTTributo.Calcular: TDTTributo;
var
Lucro:Currency;
begin

      {$REGION 'IPI'}

       if AliqIPI>0 then
       begin
           BaseIPI  := ((ValorProdutos + Frete + Despesa) - Desconto);
           ValorIPI := ((BaseIPI * AliqIPI)/100);
       end else begin
           BaseIPI  := 0;
           ValorIPI := 0;
       end;

      {$ENDREGION}

      {$REGION 'MVA AJUSTADO'}

       if CRT = '3' then
       begin
              if AliqIcms>0 then
              BEGIN
                    MvaAjustado := 0;
                    MvaAjustado := FormataValor( ( ( (100 + Mva ) * ( 100 - AliqIcms ) / ( 100 - AliqOrigem ) ) - 100 ) , 2 );

                    // se for negativo aplicar Mva Original
                    if MvaAjustado < 0 then
                     MvaAjustado := Mva;
              END;
       end else begin
              MvaAjustado          := 0;
              MvaAjustado          := Mva;
       end;

      {$ENDREGION}

      {$REGION 'FCP / FCP - ST / FCP Ret'}

      ValorFCP    := FormataValor( (ValorProdutos + Despesa + Frete - Desconto) * AliqFCP / 100,2);
      ValorFCPST  := FormataValor( (ValorProdutos + Despesa + Frete - Desconto) * AliqFCPST / 100,2);
      ValorFCPRet := FormataValor( (ValorProdutos + Despesa + Frete - Desconto) * AliqFCPRet / 100,2);

      {$ENDREGION}

      {$REGION 'ICMS'}
       case CST of
         pi000:
         begin
              if TipoClienteForn = pCFisica then // pessoa fisica inclui ipi na base de calculo do icms
              begin
                  if not CalculoVeiculo then
                  begin
                      BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto + ValorIPI,2);
                      ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
                  end else begin
                      BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto + ValorIPI,2);
                      Lucro     := ValorProdutos - CustoVeiculo;
                      if UFDestinatario='SP' then
                      begin
                         Lucro     := FormataValor(((ValorProdutos + Despesa + Frete - Desconto) * 5) / 100,2);
                         ValorIcms := FormataValor((Lucro * AliqICMS) /100,2);
                      END else begin
                         ValorIcms := FormataValor((Lucro * 5) /100,2);
                      end;

                      BaseIcms      := FormataValor((ValorIcms / AliqICMS) * 100,2);
                      AliqReducaoBC := FormataValor(100 - ((BaseIcms/(ValorProdutos + Despesa + Frete - Desconto))*100),2);

                      BasePisCofins := FormataValor(ValorProdutos - CustoVeiculo,2);
                  end;
              end else if TipoClienteForn = pCJuridica then
              begin
                  if not CalculoVeiculo then
                  begin
                      BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto,2);
                      ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
                  end else begin
                      BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto,2);
                      Lucro     := ValorProdutos - CustoVeiculo;
                      if UFDestinatario='SP' then
                      begin
                         Lucro     := FormataValor(((ValorProdutos + Despesa + Frete - Desconto) * 5) / 100,2);
                         ValorIcms := FormataValor((Lucro * AliqICMS) /100,2);
                      END else begin
                         ValorIcms := FormataValor((Lucro * 5) /100,2);
                      end;

                      BaseIcms      := FormataValor((ValorIcms / AliqICMS) * 100,2);
                      AliqReducaoBC := FormataValor(100 - ((BaseIcms/(ValorProdutos + Despesa + Frete - Desconto))*100),2);

                      BasePisCofins := FormataValor(ValorProdutos - CustoVeiculo,2);
                  end;
              end;
         end;
         pi010:
         begin
               // calculo icms
               if TipoClienteForn = pCFisica then //pessoa fisica inclui ipi na base de calculo do icms
               begin
                 BaseIcms         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto),2);
                 ValorIcms        := FormataValor(((BaseIcms * AliqIcms)/100),2); //pessoa fisica sempre usa a aliquota normal da UF emissao
               end;
               if TipoClienteForn = pCJuridica then //pessoa juridica não inclui ipi na base de calculo do icms
               begin
                 BaseIcms         := FormataValor(((ValorProdutos + Frete + Despesa) - Desconto),2); //pessoa juridica nao inclui ipi na base de calculo
                 ValorIcms        := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
               end;
               // calculo icms ST

               // ajusta Mva se necessario
               if MvaAjustado>Mva then
               Mva := MvaAjustado;

               case ModalidadeST of
                 tmMargemValorAgregado:
                 begin
                      BaseIcmsST         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto) * ((100 + Mva) /100),2);
                      ValorReducaoIcmsST := FormataValor((BaseIcmsST * (AliqOrigem /100)),2);
                      ValorIcmsST        := FormataValor(ValorReducaoIcmsST - ValorIcms,2);
                 end;
                 tmPauta:
                 begin
                      BaseIcmsST         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto),2);
                      ValorReducaoIcmsST := FormataValor((BaseIcmsST * (AliqOrigem /100)),2);
                      ValorIcmsST        := FormataValor(((AliqIcmsSTPauta * AliqIcmsST)/100) - ((BaseIcmsST * AliqIcms)/100),2); // valor icms st 1
                 end;
               end;
               // zera valores ref ao icms pois na cst 010, so podem ser alimentados valores de st
               BaseIcms  := 0;
               ValorIcms := 0;
         end;
         pi020:
         begin
              if TipoClienteForn = pCFisica then //pessoa fisica inclui ipi na base de calculo do icms
              begin
                if not CalculoVeiculo then
                begin
                    BaseIcms         := FormataValor(ValorProdutos + Despesa + Frete - Desconto + ValorIPI,2);
                    if AliqReducaoBC>0 then
                    ValorReducaoIcms := (BaseIcms - ((BaseIcms * AliqReducaoBC) / 100));

                    if ValorReducaoIcms=0 then
                    ValorReducaoIcms := BaseIcms;

                    BaseIcms         := BaseIcms - ValorReducaoIcms; //pessoa fisica sempre usa a aliquota normal da UF emissao
                    if UFEmitente = UFDestinatario then //se for uf diferente entre emissor e destinatario usar aliquota de transferencia
                      ValorIcms      := ((ValorReducaoIcms * AliqIcms)/100)
                    else
                      ValorIcms      := ((ValorReducaoIcms * AliqIcms)/100);
                end else begin
                    BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto + ValorIPI,2);
                    Lucro     := ValorProdutos - CustoVeiculo;
                    if UFDestinatario='SP' then
                    begin
                       Lucro     := FormataValor(((ValorProdutos + Despesa + Frete - Desconto) * 5) / 100,2);
                       ValorIcms := FormataValor((Lucro * AliqICMS) /100,2);
                    END else begin
                       ValorIcms := FormataValor((Lucro * 5) /100,2);
                    end;

                    BaseIcms      := FormataValor((ValorIcms / AliqICMS) * 100,2);
                    AliqReducaoBC := FormataValor(100 - ((BaseIcms/(ValorProdutos + Despesa + Frete - Desconto))*100),2);

                    BasePisCofins := FormataValor(ValorProdutos - CustoVeiculo,2);
                end;
              end;
              if TipoClienteForn = pCJuridica then //pessoa juridica não inclui ipi na base de calculo do icms
              begin
                if not CalculoVeiculo then
                begin
                    BaseIcms         := FormataValor(ValorProdutos + Despesa + Frete - Desconto,2);
                    if AliqReducaoBC>0 then
                    ValorReducaoIcms := (BaseIcms - ((BaseIcms * AliqReducaoBC) / 100));

                    if ValorReducaoIcms=0 then
                    ValorReducaoIcms := BaseIcms;

                    BaseIcms         := BaseIcms - ValorReducaoIcms; //pessoa fisica sempre usa a aliquota normal da UF emissao
                    if UFEmitente = UFDestinatario then //se for uf diferente entre emissor e destinatario usar aliquota de transferencia
                      ValorIcms      := ((ValorReducaoIcms * AliqIcms)/100)
                    else
                      ValorIcms      := ((ValorReducaoIcms * AliqIcms)/100);
                end else begin
                    BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto,2);
                    Lucro     := ValorProdutos - CustoVeiculo;
                    if UFDestinatario='SP' then
                    begin
                       Lucro     := FormataValor(((ValorProdutos + Despesa + Frete - Desconto) * 5) / 100,2);
                       ValorIcms := FormataValor((Lucro * AliqICMS) /100,2);
                    END else begin
                       ValorIcms := FormataValor((Lucro * 5) /100,2);
                    end;

                    BaseIcms      := FormataValor((ValorIcms / AliqICMS) * 100,2);
                    AliqReducaoBC := FormataValor(100 - ((BaseIcms/(ValorProdutos + Despesa + Frete - Desconto))*100),2);

                    BasePisCofins := FormataValor(ValorProdutos - CustoVeiculo,2);
                end;
              end;
         end;
         pi030:
         begin
             ZeraValores;
         end;
         pi040:
         begin
             ZeraValores;
         end;
         pi050:
         begin
             ZeraValores;
         end;
         pi051:
         begin
             ZeraValores;
         end;
         pi060:
         begin
             ZeraValores;
         end;
         pi070:
         begin
               // calculo icms
               if TipoClienteForn = pCFisica then //pessoa fisica inclui ipi na base de calculo do icms
               begin
                 BaseIcms         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto),2);
                 if AliqReducaoBC>0 then
                 ValorReducaoIcms := (((BaseIcms * AliqReducaoBC) / 100));
                 BaseIcms         := FormataValor(BaseIcms - ValorReducaoIcms,2);
                 ValorIcms        := FormataValor(((BaseIcms * AliqIcms)/100),2); //pessoa fisica sempre usa a aliquota normal da UF emissao
               end;
               if TipoClienteForn = pCJuridica then //pessoa juridica não inclui ipi na base de calculo do icms
               begin
                 BaseIcms         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto),2); //pessoa juridica nao inclui ipi na base de calculo
                 if AliqReducaoBC>0 then
                 ValorReducaoIcms := (((BaseIcms * AliqReducaoBC) / 100));
                 BaseIcms         := FormataValor(BaseIcms - ValorReducaoIcms,2);
                 ValorIcms        := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
               end;
               // calculo icms ST

               // ajusta Mva se necessario
               if MvaAjustado>Mva then
               Mva := MvaAjustado;

               case ModalidadeST of
                 tmMargemValorAgregado:
                 begin
                      BaseIcmsST         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto) * ((100 + Mva) /100),2);
                      BaseIcmsST         := (BaseIcmsST - ((BaseIcmsST * AliqReducaoBC) / 100));
                      ValorReducaoIcmsST := FormataValor((BaseIcmsST * (AliqOrigem /100)),2);
                      ValorIcmsST        := FormataValor(ValorReducaoIcmsST - ValorIcms,2);
                 end;
                 tmPauta:
                 begin
                      BaseIcmsST         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto),2);
                      BaseIcmsST         := (BaseIcmsST - ((BaseIcmsST * AliqReducaoBC) / 100));
                      ValorReducaoIcmsST := FormataValor((BaseIcmsST * (AliqOrigem /100)),2);
                      ValorIcmsST        := FormataValor(((AliqIcmsSTPauta * AliqIcmsST)/100) - ((BaseIcmsST * AliqIcms)/100),2); // valor icms st 1
                 end;
               end;
               // zera valores ref ao icms pois na cst 070, so podem ser alimentados valores de st
               BaseIcms  := 0;
               ValorIcms := 0;
         end;
         pi090:
         begin
             // calculo icms
             if TipoClienteForn = pCFisica then //pessoa fisica inclui ipi na base de calculo do icms
             begin
                  BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto + ValorIPI,2);
                  ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
             end else if TipoClienteForn = pCJuridica then
             begin
                  BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto,2);
                  ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
             end;
             if Mva>0 then
             begin
                 // calculo icms ST
                 case ModalidadeST of
                     tmMargemValorAgregado:
                     begin
                          BaseIcmsST         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto) * ((100 + Mva) /100),2);
                          ValorReducaoIcmsST := FormataValor((BaseIcmsST * (AliqOrigem /100)),2);
                          ValorIcmsST        := FormataValor(ValorReducaoIcmsST - ValorIcms,2);
                     end;
                     tmPauta:
                     begin
                          BaseIcmsST         := FormataValor(((ValorProdutos + Frete + Despesa + ValorIPI) - Desconto),2);
                          ValorReducaoIcmsST := FormataValor((BaseIcmsST * (AliqOrigem /100)),2);
                          ValorIcmsST        := FormataValor(((AliqIcmsSTPauta * AliqIcmsST)/100) - ((BaseIcmsST * AliqIcms)/100),2); // valor icms st 1
                     end;
                 end;
             end;
         end;
         pi101:
         begin
               ZeraValores;
         end;
         pi102:
         begin
              if TipoClienteForn = pCFisica then //pessoa fisica inclui ipi na base de calculo do icms
              begin
                  BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto + ValorIPI,2);
                  ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
              end else if TipoClienteForn = pCJuridica then
              begin
                  BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto,2);
                  ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
              end;
         end;
         pi103:
         begin
              if TipoClienteForn = pCFisica then //pessoa fisica inclui ipi na base de calculo do icms
              begin
                  BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto + ValorIPI,2);
                  ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
              end else if TipoClienteForn = pCJuridica then
              begin
                  BaseIcms  := FormataValor(ValorProdutos + Despesa + Frete - Desconto,2);
                  ValorIcms := FormataValor((((BaseIcms) * AliqIcms) / 100),2);
              end;
         end;
         pi201:
         begin

         end;
         pi202:
         begin

         end;
         pi203:
         begin

         end;
         pi300:
         begin
             ZeraValores;
         end;
         pi400:
         begin
             ZeraValores;
         end;
         pi500:
         begin
             ZeraValores;
         end;
         pi900:
         begin

         end;

       end;
      {$ENDREGION}

      {$REGION 'PIS COFINS'}

      BasePisCofins := FormataValor(ValorProdutos + Frete + Despesa - Desconto,2);
      ValorPis      := FormataValor((BasePisCofins * AliqPis) / 100,2);
      ValorCofins   := FormataValor((BasePisCofins * AliqCofins) / 100,2);

      {$ENDREGION}

      {$REGION 'DIFAL'}
      if FHabilitaDIFAL then
      begin
            AliqInternaUFOrigem    := AliqOrigem;
            AliqDIFAL              := FormataValor((AliqInternaUFOrigem - AliqIcms),2);

            if AliqDIFAL<0 then
            AliqDIFAL := 0;

            ValorDIFALDestinatario := FormataValor(( BaseIcms * AliqDIFAL ) / 100,2);

            if ValorDIFALDestinatario<0 then
            ValorDIFALDestinatario := 0;
      end;

      {$ENDREGION}

      {$REGION 'IBPT'}

      {$ENDREGION}

end;

function TDTTributo.FormataValor(Valor: Extended; Casas: Integer): extended;
var
Val:extended;
sValor:string;
nPos:integer;
begin
     val := valor;
     sValor := FloatToStr(val);
     //Verifica se possui ponto decimal
     nPos := Pos(',',sValor);
     If ( nPos > 0 ) Then begin
        sValor := Copy(sValor,1,nPos+Casas);
     End;
     Val := StrToFloat(svalor.Replace('.',''));
     if Casas=2 then
     begin
         val := strtofloat(FormatFloat('#,##0.00',val).Replace('.',''));
     end else if Casas=3 then
     begin
         val := strtofloat(FormatFloat('#,###0.000',val).Replace('.',''));
     end else if Casas=4 then
     begin
         val := strtofloat(FormatFloat('#,####0.0000',val).Replace('.',''));
     end else if Casas=5 then
     begin
         val := strtofloat(FormatFloat('#,#####0.00000',val).Replace('.',''));
     end else if Casas=6 then
     begin
         val := strtofloat(FormatFloat('#,######0.000000',val).Replace('.',''));
     end;
     Result := StrToFloat(sValor);
end;

procedure TDTTributo.setAbaterIcmsDaBasePisCofins(const Value: Boolean);
begin
  FAbaterIcmsDaBasePisCofins := Value;
end;

procedure TDTTributo.setAliqCofins(const Value: Currency);
begin
  FAliqCofins := Value;
end;

procedure TDTTributo.setAliqDestino(const Value: Currency);
begin
  FAliqDestino := Value;
end;

procedure TDTTributo.setAliqDIFAL(const Value: Currency);
begin
  FAliqDIFAL := Value;
end;

procedure TDTTributo.setAliqFCPRet(const Value: Currency);
begin
  FAliqFCPRet := Value;
end;

procedure TDTTributo.setAliqFCPST(const Value: Currency);
begin
  FAliqFCPST := Value;
end;

procedure TDTTributo.setAliqIcms(const Value: Currency);
begin
  FAliqIcms := Value;
end;

procedure TDTTributo.setAliqIcmsST(const Value: Currency);
begin
  FAliqIcmsST := Value;
end;

procedure TDTTributo.setAliqIcmsSTPauta(const Value: Currency);
begin
  FAliqIcmsSTPauta := Value;
end;

procedure TDTTributo.setAliqInternaUFOrigem(const Value: Currency);
begin
  FAliqInternaUFOrigem := Value;
end;

procedure TDTTributo.setAliqIPI(const Value: Currency);
begin
  FAliqIPI := Value;
end;

procedure TDTTributo.setAliqOriem(const Value: Currency);
begin
  FAliqOrigem := Value;
end;

procedure TDTTributo.setAliqPIs(const Value: Currency);
begin
  FAliqPis := Value;
end;

procedure TDTTributo.setAliqReducaoST(const Value: Currency);
begin
  FAliqReducaoBC := Value;
end;

procedure TDTTributo.setAliqValorFCPRet(const Value: Currency);
begin
  FAliqValorFCPRet := Value;
end;

procedure TDTTributo.setBaseIcms(const Value: Currency);
begin
  FBaseIcms := Value;
end;

procedure TDTTributo.setBaseIcmsST(const Value: Currency);
begin
  FBaseIcmsST := Value;
end;

procedure TDTTributo.setBaseIPI(const Value: Currency);
begin
  FBaseIPI := Value;
end;

procedure TDTTributo.setBasePisCofins(const Value: Currency);
begin
  FBasePisCofins := Value;
end;

procedure TDTTributo.setCalculoVeiculo(const Value: Boolean);
begin
  FCalculoVeiculo := Value;
end;

procedure TDTTributo.setCRT(const Value: string);
begin
  FCRT := Value;
end;

procedure TDTTributo.setCST(const Value: TCSts);
begin
  FCST := Value;
end;

procedure TDTTributo.setCstPisCofins(const Value: TCstPisCofins);
begin
  FCstPisCofins := Value;
end;

procedure TDTTributo.setCustoVeiculo(const Value: Currency);
begin
  FCustoVeiculo := Value;
end;

procedure TDTTributo.setDesconto(const Value: Currency);
begin
  FDesconto := Value;
end;

procedure TDTTributo.setDespesa(const Value: Currency);
begin
  FDespesa := Value;
end;

procedure TDTTributo.setFCP(const Value: Currency);
begin
  FAliqFCP := Value;
end;

procedure TDTTributo.setFrete(const Value: Currency);
begin
  FFrete := Value;
end;

procedure TDTTributo.setHabilitaDIFAL(const Value: Boolean);
begin
  FHabilitaDIFAL := Value;
end;

procedure TDTTributo.setModalidadeST(const Value: TpModalidade);
begin
  FModalidadeST := Value;
end;

procedure TDTTributo.setMva(const Value: Currency);
begin
  FMva := Value;
end;

procedure TDTTributo.setMvaAjustado(const Value: Currency);
begin
  FMvaAjustado := Value;
end;

procedure TDTTributo.setTipoNF(const Value: TTpNF);
begin
  FTipoNF := Value;
end;

procedure TDTTributo.setTipoPessoa(const Value: TTipoPessoa);
begin
  FTipoPessoa := Value;
end;

procedure TDTTributo.setUFDestinatario(const Value: string);
begin
  FUFDestinatario := Value;
end;

procedure TDTTributo.setUFEmitente(const Value: string);
begin
  FUFEmitente := Value;
end;

procedure TDTTributo.setValorCofins(const Value: Currency);
begin
  FValorCofins := Value;
end;

procedure TDTTributo.setValorDIFALDestinatario(const Value: Currency);
begin
  FValorDIFALDestinatario := Value;
end;

procedure TDTTributo.setValorFCP(const Value: Currency);
begin
  FValorFCP := Value;
end;

procedure TDTTributo.setValorFCPST(const Value: Currency);
begin
  FValorFCPST := Value;
end;

procedure TDTTributo.setValorIcms(const Value: Currency);
begin
  FValorIcms := Value;
end;

procedure TDTTributo.setValorIcmsST(const Value: Currency);
begin
  FValorIcmsST := Value;
end;

procedure TDTTributo.setValorIPI(const Value: Currency);
begin
  FValorIPI := Value;
end;

procedure TDTTributo.setValorPis(const Value: Currency);
begin
  FValorPis := Value;
end;

procedure TDTTributo.setValorProdutos(const Value: Currency);
begin
  FValorProdutos := Value;
end;

procedure TDTTributo.setValorReducaoIcms(const Value: Currency);
begin
  FValorReducaoIcms := Value;
end;

procedure TDTTributo.setValorReducaoIcmsST(const Value: Currency);
begin
  FValorReducaoIcmsST := Value;
end;

function TDTTributo.StrToCSTICMS(out ok: boolean; const s: string): TCSts;
begin
    result := StrToEnumerado(ok, s, ['000', '010', '020', '030', '040', '050', '051', '060', '070', '090', '101', '102', '103', '201', '202', '203', '300', '400', '500', '900'],
                                  [pi000, pi010, pi020, pi030, pi040, pi050, pi051, pi060, pi070, pi090, pi101, pi102, pi103, pi201, pi202, pi203, pi300, pi400, pi500, pi900]);
end;

function TDTTributo.StrToCSTPisCofins(out ok: Boolean;
  const s: string): TCstPisCofins;
begin
     Result := StrToEnumerado(ok, s, ['01','02','03','04','05','06','07','08','09','49','50','51','52','53','54','55','56','60','61','62','63','64','65','66','67','70','71','72','73','74','75','98','99'],
                                  [Ppis01, Ppis02, Ppis03, Ppis04, Ppis05, Ppis06, Ppis07, Ppis08, Ppis09, Ppis49, Ppis50, Ppis51, Ppis52, Ppis53, Ppis54, Ppis55, Ppis56, Ppis60, Ppis61, Ppis62, Ppis63, Ppis64, Ppis65, Ppis66, Ppis67, Ppis70, Ppis71, Ppis72, Ppis73, Ppis74, Ppis75, Ppis98, Ppis99]);
end;

function TDTTributo.StrToEnumerado(out ok: boolean; const s: string;
  const AString: array of string; const AEnumerados: array of variant): variant;
var
  i: integer;
begin
  result := -1;
  for i := Low(AString) to High(AString) do
    if AnsiSameText(s, AString[i]) then
      result := AEnumerados[i];
  ok := result <> -1;
  if not ok then
    result := AEnumerados[0];
end;

procedure TDTTributo.ZeraValores;
begin
     FBaseIcms         := 0;
     FValorIcms        := 0;
     FBaseIcmsST       := 0;
     FValorIcmsST      := 0;
     FValorReducaoIcms := 0;
end;

end.
