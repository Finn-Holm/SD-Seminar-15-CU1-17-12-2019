pageextension 50100 "CSD ResourceCardExt" extends "Resource Card" // CSD1.00 - 2019-12-17 - D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Visible = ShowMaxField;
                caption = 'Room';
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}