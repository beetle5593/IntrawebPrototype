unit JSUtils.SweetAlert2;

interface

function swalShowMessage(aText: string): string;

function swalSuccess(aTitle: string; aText: string = ''): string;
function swalError(aTitle: string; aText: string = ''): string;
function swalWarning(aTitle: string; aText: string = ''): string;
function swalInfo(aTitle: string; aText: string = ''): string;
function swalQuestion(aTitle: string; aText: string = ''): string;

implementation

uses
  System.SysUtils;

function swalShowMessage(aText: string): string;
begin
  Result := 'Swal.fire({title: "' + AText + '", confirmButtonColor: "#3085d6"})';
end;

function swalSuccess(aTitle: string; aText: string = ''): string;
begin
  Result := Format(
    'Swal.fire({title: %s,text: %s,icon: %s, confirmButtonColor: "#a5dc86"})',
    [aTitle.QuotedString, aText.QuotedString, 'success'.QuotedString]
  );
end;

function swalError(aTitle: string; aText: string = ''): string;
begin
  Result := Format(
    'Swal.fire({title: %s,text: %s,icon: %s, confirmButtonColor: "#f27474"})',
    [aTitle.QuotedString, aText.QuotedString, 'error'.QuotedString]
  );
end;

function swalWarning(aTitle: string; aText: string = ''): string;
begin
  Result := Format(
    'Swal.fire({title: %s,text: %s,icon: %s, confirmButtonColor: "#f8bb86"})',
    [aTitle.QuotedString, aText.QuotedString, 'warning'.QuotedString]
  );
end;

function swalInfo(aTitle: string; aText: string = ''): string;
begin
  Result := Format(
    'Swal.fire({title: %s,text: %s,icon: %s, confirmButtonColor: "#3fc3ee"})',
    [aTitle.QuotedString, aText.QuotedString, 'info'.QuotedString]
  );
end;

function swalQuestion(aTitle: string; aText: string = ''): string;
begin
  Result := Format(
    'Swal.fire({title: %s,text: %s,icon: %s, confirmButtonColor: "#87adbd"})',
    [aTitle.QuotedString, aText.QuotedString, 'question'.QuotedString]
  );
end;

end.
