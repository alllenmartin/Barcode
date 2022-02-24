report 50101 BarcodeList
{
    Caption = 'Barcode List Report';
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './.vscode/Objects/Reports/BarcodeList.rdl';
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(No_; "No.")
            {

            }
            column(temp; temp1.Blob)
            {

            }
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                Barcode.DoGenerateBarcode("Sales Header"."No.", 5, temp);
            end;
        }
    }

    var
        temp: Codeunit "Temp Blob";
        temp1: Record TempBlob temporary;
        Barcode: Codeunit Barcode;
}