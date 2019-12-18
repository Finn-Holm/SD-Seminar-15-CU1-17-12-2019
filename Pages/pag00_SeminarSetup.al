page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD SeminarSetup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Seminar Nos."; "Seminar Nos.")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar Nos.';

                }
                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar Registration Nos.';

                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                    Caption = 'Posted Seminar Reg. Nos.';

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnOpenPage()
    begin
        if not get then begin
            init;
            Insert;
        end;
    end;
}