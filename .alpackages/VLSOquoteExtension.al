reportextension 50104 "SO Quote Extension" extends "Standard Sales - Quote"
{
    WordLayout = './VLSOquoteExtension.docx';

    dataset
    {
        add(Header)
        {
            column(ShiptoName; "Ship-to Name")
            { }
            column(ShiptoContact; "Ship-to Contact")
            { }
            column(ShiptoAdd1; "Ship-to Address")
            { }
            column(ShiptoAdd2; "Ship-to Address 2")
            { }
            column(ShiptoCity; "Ship-to City")
            { }
            column(ShiptoPostCode; "Ship-to Post Code")
            { }
            column(ShiptoCountry; "Ship-to Country/Region Code")
            { }
        }
    }

    requestpage
    {

    }
}
