map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Thai', 'Baht');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('Turkey', 'Lira');
system.debug('Map of country vs currency: ' + mapCntCurrency);

string Tl = 'Thai';
string ThaiCurrency = mapCntCurrency.get(Tl);
string IndiaCurrency = mapCntCurrency.get('India');
string TurkeyCurrency = mapCntCurrency.get('Turkey');


system.debug('Thai currency is ' + ThaiCurrency);
system.debug('India currency is ' + IndiaCurrency);
system.debug('Turkey currency is ' + TurkeyCurrency);

set<string> allCountries = mapCntCurrency.keySet();
system.debug('All countries are ' + allCountries);

list<string> allCurrencies = mapCntCurrency.values();
system.debug('All currencies are ' + allCurrencies);

Set<string> countrySet = mapCntCurrency.keySet();
for(string eachCountry: countrySet){
    system.debug('Each key ==> ' + eachCountry);
    string eachCurrency = mapCntCurrency.get(eachCountry);
    system.debug('Each currency ==> ' + eachCurrency);
    system.debug('----------------');
}