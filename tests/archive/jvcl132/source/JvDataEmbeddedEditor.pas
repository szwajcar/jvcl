{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvDataEmbeddedEditor.PAS, released on 2001-02-28.

The Initial Developer of the Original Code is Sébastien Buysse [sbuysse@buypin.com]
Portions created by Sébastien Buysse are Copyright (C) 2001 Sébastien Buysse.
All Rights Reserved.

Contributor(s): Michael Beck [mbeck@bigfoot.com].

Last Modified: 2000-02-28

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$I JEDI.INC}

unit JvDataEmbeddedEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    {$IFDEF DELPHI5} DsgnIntf, {$ENDIF} {$IFDEF DELPHI6_UP} DesignEditors, DesignIntf, {$ENDIF}
  JvDataEmbedded;

type
  TJvDataEmbeddedEditor = class(TClassProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    function GetValue: string; override;
    procedure GetValues(Proc: TGetStrProc); override;
    procedure SetValue(const Value: string); override;
    procedure Edit; override;
  end;

implementation

const
  ClickToEdit = 'Click to edit...';

{******************************************************}

procedure TJvDataEmbeddedEditor.Edit;
var
  Stream: TFileStream;
  FStream: TMemoryStream;
begin
  FStream := TMemoryStream(GetOrdValue);
  with TOpenDialog.Create(nil) do
  begin
    Filter := 'All Files (*.*)|*.*';
    if Execute then
    begin
      Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
      FStream.Clear;
      FStream.CopyFrom(Stream, 0);
      SetOrdValue(Integer(FStream));
      Stream.Free;
    end;
    Free;
  end;
end;

{******************************************************}

function TJvDataEmbeddedEditor.GetAttributes: TPropertyAttributes;
begin
  Result := [paMultiSelect, paDialog, paSortList];
end;

{******************************************************}

function TJvDataEmbeddedEditor.GetValue: string;
begin
  Result := ClickToEdit;
end;

{******************************************************}

procedure TJvDataEmbeddedEditor.GetValues(Proc: TGetStrProc);
begin
  SetStrValue(ClickToEdit);
end;

{******************************************************}

procedure TJvDataEmbeddedEditor.SetValue(const Value: string);
begin
  SetStrValue(ClickToEdit);
end;

end.
