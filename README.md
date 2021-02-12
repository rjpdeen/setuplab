Deze setup gaat ervan uit dat er al een SimpleAD directory is aangemaakt en dat de
users al zijn aangemaakt. Users kunnen worden aangemaakt in de Management Console, door net
te doen alsof je een nieuwe WorkSpace aanmaakt. Je krijgt dan een scherm waarin je 
users aan de directory kunt toevoegen.

In terraform.tfvars de juiste directory en bundle aangeven, de users en aantal users.

Iedere nieuwe user krijgt na het runnen van terraform apply een e-mail met een link waarmee
een wachtwoord voor inloggen in de WorkSpace aangemaakt kan worden.