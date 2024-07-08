reportextension 50101 "Standard SO Invoice Extension" extends "Standard Sales - Invoice"
{
    WordLayout = './VLSOInvoiceExtension.docx';

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
                DataItemLink = "No." = field("Bill-to Customer No.");
                column(Cust_Disc_Group; "Customer Disc. Group")
                { }

                column(Cust_EORI_No; "EORI Number")
                { }
            }

        }

        add(Header)
        {
            column(Ship_to_Name; "Ship-to Contact")
            { }
        }


        modify(Line)
        {
            trigger OnAfterAfterGetRecord()
            begin

                if "Line Discount %" = 0 then
                    VL_LineDiscountPctText := ''
                else
                    VL_LineDiscountPctText := StrSubstNo('%1%', -Round("Line Discount %", 0.01));
            end;
        }
        add(Line)
        {
            column(VLFormatted_LineDiscPerc; VL_LineDiscountPctText)
            {
            }
        }
    }


    var
        VL_LineDiscountPctText: Text;

}