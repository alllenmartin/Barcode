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

        }
    }
    var
        BarcodeTxt: Text;
}