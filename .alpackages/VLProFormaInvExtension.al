reportextension 50103 VLProFormaInvExtension extends "Standard Sales - Pro Forma Inv"
{
    WordLayout = './VLProFormaInvExtension.docx';

    dataset
    {
        add(Line)
        {
            column(Item_No; "No.")
            { }

            column(UnitPriceIncTax; "Amount Including VAT")
            { }
        }

        add(Header)
        {
            column(Doc_Due_Date; Format("Due Date", 0, 4))
            { }

            column(Cust_Acc_No; "Sell-to Customer No.")
            { }

            Column(Del_Phone_No; "Sell-to Phone No.")
            { }

            Column(Del_Contact; "Ship-to Contact")
            { }

            Column(Del_Add1; "Ship-to Address")
            { }

            Column(Del_Add2; "Ship-to Address 2")
            { }

            Column(Del_Add_City; "Ship-to City")
            { }

            Column(Del_Add_County; "Ship-to County")
            { }

            Column(Del_Add_PostCode; "Ship-to Post Code")
            { }

            Column(Del_Add_Country; "Ship-to Country/Region Code")
            { }

        }

        addlast(Header)
        {
            dataitem(Customer; Customer)
            {
                DataItemLink = "No." = field("Sell-to Customer No.");

                column(Cust_EORI_No; "EORI Number")
                { }

                column(Cust_Payment_Term; "Payment Terms Code")
                { }

                column(Global_Contact; "Contact")
                { }

                column(Global_Add1; "Address")
                { }

                column(Global_AddCountry; "Country/Region Code")
                { }

                column(Global_AddPcode; "Post Code")
                { }
            }
        }


    }

    requestpage
    {

    }
}
