reportextension 50102 "Standard Credit Memo Extension" extends "Standard Sales - Credit Memo"
{
    WordLayout = './VLCreditMemoExtension.docx';

    dataset
    {
        addfirst(Line)
        {
            dataitem(Item; Item)
            {
                DataItemLink = "No." = field("No.");
                column(Commodity_Code; "Tariff No.")
                {
                }

                column(Origin_Code; "Country/Region of Origin Code")
                {
                }
            }
        }


        addlast(Header)
        {
            dataitem(Customer; Customer)
            {
                DataItemLink = "No." = field("Sell-to Customer No.");
                column(Cust_Disc_Group; "Customer Disc. Group")
                { }

                column(Cust_EORI_No; "EORI Number")
                { }
            }

        }

        add(Header)
        {
            column(Del_Phone_No; "Sell-to Phone No.")
            {

            }
        }
    }


}
