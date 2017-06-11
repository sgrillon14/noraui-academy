@createCustomer
Feature: createCustomer (Scenario that a simple CRUD (create part) for JHIPSTERSAMPLEAPP customer) 

	Scenario Outline: Scenario that a simple CRUD (create part) for JHIPSTERSAMPLEAPP customer.
	
    Given 'JHIPSTERSAMPLEAPP_HOME' is opened.
    Then The JHIPSTERSAMPLEAPP home page is displayed

    When I log in to JHIPSTERSAMPLEAPP as 'user' 'user'
    Then The JHIPSTERSAMPLEAPP portal is displayed
    
    Given 'JHIPSTERSAMPLEAPP_CUSTOMER' is opened.
    Then The JHIPSTERSAMPLEAPP customer page is displayed
    
    When I click on 'jhipstersampleapp.CustomerPage-create_new_customer_button'.
    Then The JHIPSTERSAMPLEAPP customer form is displayed
    
    When I update text 'jhipstersampleapp.CreateOrEditCustomerPage-first_name_field' with '<First Name>'.
    When I update text 'jhipstersampleapp.CreateOrEditCustomerPage-last_name_field' with '<Last Name>'.
    When I click on 'jhipstersampleapp.CreateOrEditCustomerPage-save_button'.
    
    And I save 'id' from create message
    
    When I log out of JHIPSTERSAMPLEAPP
    Then The JHIPSTERSAMPLEAPP logout page is displayed
    
    And I go back to 'JHIPSTERSAMPLEAPP_HOME'
		
	Examples:
	  #DATA
	  |id|Last Name|First Name|id|
    |1|Zidane|Zinédine||
    |2|Barthez|Fabien||
    |3|Srna|Darijo||
    |4|Schildenfeld|Gordon||
    |5|Perisic|Ivan||
    |6|Rakitic|Ivan||
    |7|Strinic|Ivan||
    |8|Modric|Luka||
    |9|Mandzukic|Mario||
    |10|Jelavic|Nikica||
    |11|Pletikosa|Stipe||
    |12|Corluka|Vedran||
    |13|Limbersky|David||
    |14|Plasil|Jaroslav||
    |15|Kadlec|Michal||
    |16|Baros|Milan||
    |17|Cech|Petr||
    |18|Jiracek|Petr||
    |19|Gebre Selassie|Theodor||
    |20|Hübschman|Tomás||
    |21|Pekhart|Tomas||
    |22|Rosicky|Tomas||
    |23|Sivok|Tomas||
    |24|Pilar|Vaclav||
    |25|Agger|Daniel||
    |26|Rommedahl|Dennis||
    |27|Poulsen|Jakob||
    |28|Krohn-Dehli|Michael||
    |29|Bendtner|Nicklas||
    |30|Zimling|Niki||
    |31|Kjaer|Simon||
    |32|Andersen|Stephan||
    |33|Mikkelsen|Tobias||
    |34|Kvist|William||
    |35|Young|Ashley||
    |36|Welbeck|Danny||
    |37|Johnson|Glen||
    |38|Milner|James||
    |39|Hart|Joe||
    |40|Terry|John||
    |41|Lescott|Joleon||
    |42|Parker|Scott||
    |43|Gerrard|Steven||
    |44|Walcott|Theo||
    |45|Rooney|Wayne||
    |46|Diarra|Alou||
    |47|Ribéry|Franck||
    |48|Lloris|Hugo||
    |49|Menez|Jérémy||
    |50|Benzema|Karim||
    |51|Debuchy|Mathieu||
    |52|Giroud|Olivier||
    |53|Evra|Patrice||
    |54|Mexes|Philippe||
    |55|Nasri|Samir||
    |56|M'Vila|Yann||
    |57|Cabaye|Yohan||
    |58|Schürrle|Andre||
    |59|Schweinsteiger|Bastian||
    |60|Badstuber|Holger||
    |61|Boateng|Jerome||
    |62|Neuer|Manuel||
    |63|Reus|Marco||
    |64|Gomez|Mario||
    |65|Hummels|Mats||
    |66|Özil|Mesut||
    |67|Klose|Miroslav||
    |68|Lahm|Philipp||
    |69|Khedira|Sami||
    |70|Müller|Thomas||
    |71|Kroos|Toni||
    |72|Salpingidis|Dimitris||
    |73|Samaras|Georgios||
    |74|Tzavellas|Georgios||
    |75|Karagounis|Giorgios||
    |76|Holebas|Jose||
    |77|Chalkias|Konstantinos||
    |78|Katsouranis|Konstantinos||
    |79|Papadopoulos|Kyriakos||
    |80|Sifakis|Michalis||
    |81|Papastathopoulos|Sokratis||
    |82|Gekas|Theofanis||
    |83|Torosidis|Vassilas||
    |84|Diamanti|Alessandro||
    |85|Pirlo|Andrea||
    |86|Cassano|Antonio||
    |87|Di Natale|Antonio||
    |88|Maggio|Christian||
    |89|Marchisio|Claudio||
    |90|De Rossi|Daniele||
    |91|Buffon|Gianluigi||
    |92|Chiellini|Giorgio||
    |93|Bonucci|Leonardo||
    |94|Balotelli|Mario||
    |95|Montolivo|Riccardo||
    |96|Motta|Thiago||
    |97|Robben|Arjen||
    |98|Afellay|Ibrahim||
    |99|Willems|Jetro||
    |100|Heitinga|Johnny||
    |101|Mathijsen|Joris||
    |102|Stekelenburg|Maarten||
    |103|van Bommel|Mark||
    |104|de Jong|Nigel||
    |105|van der Vaart|Rafael||
    |106|van Persie|Robin||
    |107|Vlaar|Ron||
    |108|Sneijder|Wesley||
    |109|Perquis|Damien||
    |110|Polanski|Eugen||
    |111|Blaszczykowski|Jakub||
    |112|Obraniak|Ludovic||
    |113|Wasilewski|Marcin||
    |114|Tyton|Przemyslaw||
    |115|Lewandowski|Robert||
    |116|Szczesny|Wojciech||
    |117|Alves|Bruno||
    |118|Ronaldo|Cristiano||
    |119|Coentrão|Fábio||
    |120|Postiga|Helder||
    |121|Almeida|Hugo||
    |122|Moutinho|João||
    |123|Pereira|João||
    |124|Veloso|Miguel||
    |125|Oliveira|Nélson||
    |126|Meireles|Raul||
    |127|Patricio|Rui||
    |128|Varela|Silvestre||
    |129|Duff|Damien||
    |130|Whelan|Glenn||
    |131|Walters|Jonathan||
    |132|Westwood|Keiren||
    |133|Andrews|Keith||
    |134|Dunne|Richard||
    |135|Keane|Robbie||
    |136|St Ledger|Sean||
    |137|Given|Shay||
    |138|Dzagoev|Alan||
    |139|Kerzhakov|Alexander||
    |140|Berezoutski|Alexei||
    |141|Arshavin|Andrey||
    |142|Denisov|Igor||
    |143|Zyryanov|Konstantin||
    |144|Pavlyuchenko|Roman||
    |145|Shirokov|Roman||
    |146|Ignashevitch|Sergei||
    |147|Malafeev|Vyacheslav||
    |148|Zhirkov|Yuri||
    |149|Arbeloa|Álvaro||
    |150|Iniesta|Andrés||
    |151|Silva|David||
    |152|Torres|Fernando||
    |153|Fábregas|Francesc||
    |154|Piqué|Gerard||
    |155|Casillas|Iker||
    |156|Navas|Jesús||
    |157|Alba|Jordi||
    |158|Busquets|Sergio||
    |159|Ramos|Sergio||
    |160|Alonso|Xabi||
    |161|Svensson|Anders||
    |162|Isaksson|Andreas||
    |163|Wilhelmsson|Christian||
    |164|Källström|Kim||
    |165|Toivonen|Ola||
    |166|Mellberg|Olof||
    |167|Holmén|Samuel||
    |168|Larsson|Sebastian||
    |169|Ibrahimovic|Zlatan||
    |170|Tymoshchuk|Anatoliy||
    |171|Pyatov|Andriy||
    |172|Shevchenko|Andriy||
    |173|Yarmolenko|Andriy||
    |174|Selin|Yevgen||
    |175|Khacheridi|Yevhen||
    |176|Konoplyanka|Yevhen||
    #END