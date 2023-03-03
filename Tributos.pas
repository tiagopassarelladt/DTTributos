unit Tributos;

interface

uses
  System.SysUtils, System.Classes;

type
  TDTTributos = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('DT Inovacao', [TDTTributos]);
end;

end.
