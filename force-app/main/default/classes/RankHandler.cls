public class RankHandler {
    public string rankPrice(integer rank){
        string price = '';
        if (rank == 1) {
            price = 'Gold';
        } else if (rank == 2) {
            price = 'Silver';
        } else if (rank == 3) {
            price = 'Bronze';
        } else {
            //nested if
            if (rank <= 10) {
            price = 'Top 10 certificate';
        } else {
            price = 'Participation certificate';
        }
    }
    return price;
    }
}
