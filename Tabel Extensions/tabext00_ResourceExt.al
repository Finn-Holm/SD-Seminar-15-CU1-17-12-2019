tableextension 50100 "CSD ResourceExt" extends Resource // CSD1.00 - 2019-12-17 - D. E. Veloper
{
    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = AccountData;
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
            Caption = 'Resource Type';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = AccountData;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = AccountData;
            Caption = 'Quantity Per Day';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                Rec.TestField("Unit Cost");
            end;
        }
        modify("Type")
        {
            OptionCaption = 'Instructor,Room';
        }

    }
    var
        myInt: Integer;
}