table 50100 "CSD SeminarSetup"
{
    DataClassification = CustomerContent;
    Caption = 'Seminar Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary Key';

        }
        field(20; "Seminar Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Seminar No.';
            TableRelation = "No. Series";
        }
        field(30; "Seminar Registration Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Seminar Registration No.';
            TableRelation = "No. Series";
        }
        field(40; "Posted Seminar Reg. Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Posted Seminar Reg. No.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}