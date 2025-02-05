reportextension 50104 "SO Quote Extension" extends "Standard Sales - Quote"
{
   WordLayout = './VLSOquoteExtension.docx';

    dataset
    {
 addfirst(Header)
 {
  dataitem(Header1; "Sales Header")
            {
 
// DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Quote));
  //          RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";

  column(ShiptoName; "Ship-to Name")
            {}

        
             column(ShiptoContact; "Ship-to Contact")
            {}

             column(ShiptoAdd1; "Ship-to Address")
            {}

             column(ShiptoAdd2; "Ship-to Address 2")
            {}

             column(ShiptoCity; "Ship-to City")
{}
             column(ShiptoPostCode; "Ship-to Contact")
            {}

 column(ShiptoCountry; "Ship-to Post Code")
            {}
            }


   

 }
    }

    requestpage
    {

    }
}
