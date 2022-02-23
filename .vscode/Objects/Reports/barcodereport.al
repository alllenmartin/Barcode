report 50100 Barcode
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    DefaultLayout = RDLC;
    RDLCLayout = './.vscode/Objects/Report/Barcode.rdl';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            RequestFilterHeading = 'Items';

            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Barcode; BarcodeTxt)
            {

            }

            trigger OnAfterGetRecord();
            var
                BarcodeSymbology: Enum "Barcode Symbology";
                BarcodeFontProvider: Interface "Barcode Font Provider";
                BarcodeString: Text;
            begin

            end;

        }
    }
    var
        BarcodeTxt: Text;
}